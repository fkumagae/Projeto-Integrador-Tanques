# Projeto Integrador Tanques (PI-Tanques)

Projeto integrador desenvolvido nas disciplinas **SCOM** (Sistemas Computacionais) e **LCON I** (Laboratório de Sistemas de Controle I) do curso de Engenharia de Controle e Automação da UNESP Sorocaba.

---

## Visão geral

O **PI-Tanques** monitora tanques industriais a partir de medições coletadas por um ESP32 (ou pelo simulador em Python) e enviadas ao Node-RED. A plataforma expõe APIs REST, autenticação e um dashboard operacional, armazenando telemetria, usuários e logs no MySQL `scom`.

Principais fluxos:

1. **Medições** – `POST /api/medicoes` com header `x-api-key`; dados criptografados e persistidos.
2. **Comandos** – `GET /api/commands` retorna comandos pendentes para o firmware.
3. **Autenticação/Dashboard** – `/login` valida credenciais com `bcrypt` e libera o painel (`admin` ou `user`).
4. **Auditoria** – Toda ação gera registros em `logs` e `eventos` para rastreabilidade.

---

## Camadas e responsabilidades

| Diretório | Função |
| --- | --- |
| `firmware/` | Código do ESP32 e simulador (`simulador.py`) que consome/produz dados via REST. |
| `backend/` | Node-RED (flows, README, `settings-snippet.js`) e integrações auxiliares. |
| `database/` | Scripts SQL (`scom.sql`, `schema.sql`, `seed.sql`) para montar o banco `scom`. |
| `frontend/` | Protótipo do dashboard web complementar ao dashboard do Node-RED. |
| `shared_data/` | Artefatos compartilhados como `dados_simulados.json`. |
| `docs/` | Documentação textual e diagramas (ver também `docs/README.md`). |
| `test/` | Requisições e scripts de teste manual/automatizado (ex.: `test_api.http`). |

---

## Como executar

### Pré-requisitos

- Git e Python 3.10+
- Node.js 18+ (para Node-RED e ferramentas auxiliares)
- MySQL 8 (ou compatível) com banco `scom`

### Backend / Node-RED

1. Instale dependências do Node-RED (`npm install -g node-red`).
2. Copie `backend/settings-snippet.js` para a pasta do usuário do Node-RED como base do `settings.js`.
3. Ajuste `NODE_RED_SESSION_SECRET` (não commitar segredos) e importe `backend/flows.json` pelo editor do Node-RED.
4. Inicie o Node-RED e confira as rotas `http://localhost:1880/api/...`.

### Simulador / Firmware

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r firmware\requirements.txt  # quando disponível
python firmware\simulador.py
Configure SIMULADOR_API_URL e SIMULADOR_API_KEY (variáveis de ambiente ou .env) para apontar ao backend.
```

Banco de dados
Use os scripts em database/:

```powershell

mysql -u root -p < database\schema.sql
mysql -u root -p scom < database\seed.sql
Importe database/scom.sql caso queira o dump completo. Ajuste credenciais no Node-RED ou backend escolhido.
```

Estrutura rápida
```
Projeto-Integrador-Tanques/
├── firmware/       # ESP32 + simulador
├── backend/        # Node-RED (flows, README, settings-snippet)
├── database/       # Schema/dump/seed do MySQL
├── frontend/       # Prototipação web
├── shared_data/    # Dados em comum entre equipes
├── docs/           # Documentos e diagramas
└── test/           # Testes e arquivos .http
```
Equipe
```
Beatriz Martuscelli da Silva Prado – Firmware / Sensores
Felipe Pellegrini Kumagae – Firmware / Sensores
Rafael Utsunomya Machado – Firmware / Sensores
Ana Clara Godoy Ensides – Backend / Banco de Dados
Hebert de Oliveira Brito – Backend / Banco de Dados
Amanda Segura Mendes de Oliveira – Frontend
Maysa Gabriela Lucas Izaias – Frontend
Guilherme Yuiti de Queiroz Barbosa – Frontend
```
Próximas etapas sugeridas
```
Consolidar o formato do JSON em shared_data/dados_simulados.json e alinhar com o Node-RED.
Implementar endpoints mínimos para CRUD de medições e comandos (POST/GET /readings).
Automatizar o envio contínuo do simulador e refletir os dados no dashboard.
Documentar rotas e fluxos no diretório docs/, mantendo este README em sincronia.
```
Licença
```
Uso acadêmico sem fins comerciais.
```
