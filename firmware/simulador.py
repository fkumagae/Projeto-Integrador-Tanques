"""
Simulador do ESP32 utilizado no Projeto Integrador.

O script emula o firmware que conversa com o Node-RED:
- Envia medicoes via POST /api/medicoes (payload JSON com tanques/niveis/timestamp).
- Consulta comandos pendentes via GET /api/commands.
- Todas as requisicoes usam o header x-api-key, que deve corresponder
  ao valor configurado no fluxo do Node-RED.
"""

import json
import random
import time
from datetime import datetime

import requests

# Endpoints locais do Node-RED (ajuste se necessario)
BASE_URL = "http://localhost:1880"
# Esta chave precisa ser identica a configurada nos Function nodes do Node-RED
API_KEY = "minha-chave-secreta-123"
TANQUES = [1, 2, 3]

# Cabecalho reutilizado por todas as requisicoes
HEADERS = {
    "x-api-key": API_KEY,
    "Content-Type": "application/json",
}


def gerar_medicoes():
    """Gera um array JSON simulando leitura dos tanques."""
    agora = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    medicoes = []
    for tanque_id in TANQUES:
        nivel = round(random.uniform(20.0, 50.0), 2)
        medicoes.append(
            {
                "tanque": tanque_id,
                "nivel": nivel,
                "ts": agora,
            }
        )
    return medicoes


def enviar_medicoes():
    """Faz POST com as medicoes simuladas."""
    url = f"{BASE_URL}/api/medicoes"
    payload = gerar_medicoes()
    try:
        resp = requests.post(url, json=payload, headers=HEADERS, timeout=15)
        print(f"[POST /api/medicoes] {resp.status_code} -> {resp.text}")
    except Exception as exc:  # pragma: no cover - log basico
        print(f"[ERRO POST /api/medicoes] {exc}")


def consultar_comandos():
    """Consulta o servidor por novos comandos pendentes."""
    url = f"{BASE_URL}/api/commands"
    try:
        resp = requests.get(url, headers=HEADERS, timeout=10)
        if resp.status_code == 200 and resp.text:
            print(f"[GET /api/commands] {resp.status_code} -> [COMANDO] {resp.text}")
        else:
            print(f"[GET /api/commands] {resp.status_code} -> Nenhum comando pendente")
    except Exception as exc:  # pragma: no cover - log basico
        print(f"[ERRO GET /api/commands] {exc}")


if __name__ == "__main__":
    print("=== Simulador ESP32 (API Key + comandos) ===")
    ciclos = 5
    intervalo = 2  # segundos entre etapas

    for ciclo in range(1, ciclos + 1):
        print(f"\n--- Ciclo {ciclo}/{ciclos} ---")
        consultar_comandos()
        time.sleep(intervalo / 2)
        enviar_medicoes()
        time.sleep(intervalo / 2)

    print("\nFim da simulacao.")
