# 🧪 Projeto Integrador – Tanques (PI-Tanques)

**Curso:** Engenharia de Controle e Automação — UNESP Sorocaba  

**Disciplinas:** Sistemas Computacionais (SCOM) e Laboratório de Sistemas de Controle I (LCON I) 

**Fase atual:** Estrutura inicial e simulação de dados  

---

## 📘 Descrição geral

O **PI-Tanques** é um sistema de **monitoramento e controle de tanques**, desenvolvido como parte do Projeto Integrador.  
Seu objetivo é integrar diferentes tecnologias — embarcadas e web — em uma única solução capaz de coletar, armazenar e visualizar dados de forma eficiente.

O projeto é composto por três camadas principais:

1. **Firmware (ESP32):** realiza a leitura dos sensores e envia dados para o servidor.
2. **Backend (API):** recebe, armazena e fornece dados via requisições HTTP.
3. **Frontend (Dashboard):** exibe informações de forma interativa e permite controle remoto.

---

## 🧩 Objetivos principais

- Desenvolver uma arquitetura modular e escalável para monitoramento de tanques;
- Implementar comunicação entre microcontroladores (ESP32) e servidor web;
- Criar uma interface de visualização e controle acessível via navegador;
- Integrar banco de dados relacional para armazenamento das medições;
- Permitir futura expansão para controle automático e gêmeo digital.

---

## 🧱 Estrutura do Repositório

Projeto-Integrador-Tanques/
│
├── firmware/ # Código do ESP32 e simuladores simples
│ ├── main.ino # (esqueleto do firmware real)
│ └── simulador.py # script que envia dados simulados p/ API
│
├── backend/ # API e integração MySQL
│ ├── app.py # pode começar em Flask, FastAPI ou PHP
│ ├── requirements.txt # dependências mínimas
│ └── README.md
│
├── database/ # Modelagem e scripts SQL
│ ├── schema.sql # CREATE TABLES básicas
│ ├── seed.sql # dados simulados
│ └── diagramas/
│ └── er.mmd # modelo entidade-relacionamento
│
├── frontend/ # Dashboard web
│ ├── index.html # protótipo inicial
│ ├── script.js # leitura e visualização básica de dados
│ └── style.css
│
├── shared_data/ # Dados simulados comuns (ESP ↔ API ↔ Front)
│ └── dados_simulados.json
│
├── docs/ # Documentação do projeto
│ ├── README.md # resumo do escopo, equipe e divisão de tarefas
│ └── arquitetura_geral.mmd # diagrama simples de blocos
│
└── test/ # Scripts e logs de testes
├── test_api.http # requisições REST para testar a API
└── logs/.gitkeep


---

## ⚙️ Tecnologias previstas

| Camada | Tecnologia sugerida | Função principal |
|--------|---------------------|------------------|
| Firmware | ESP32 (Arduino C++) | Leitura e envio de dados |
| Backend | Python (Flask ou FastAPI) / PHP | API REST + integração MySQL |
| Banco de Dados | MySQL | Armazenamento estruturado |
| Frontend | HTML, CSS e JavaScript | Dashboard e controle web |

---

## 👥 Equipe

| Nº | Integrante | Função |
|----|-------------|--------|
| 1 | Beatriz Martuscelli da Silva Prado | Firmware e sensores |
| 2 | Felipe Pellegrini Kumagae | Firmware e sensores |
| 3 | Rafael Utsunomya Machado | Firmware e sensores |
| 4 | Ana Clara Godoy Ensides | Backend e banco de dados |
| 5 | Hebert de Oliveira Brito | Backend e banco de dados |
| 6 | Amanda Segura Mendes de Oliveira | Frontend e interface |
| 7 | Maysa Gabriela Lucas Izaias | Frontend e interface |
| 8 | Guilherme Yuiti de Queiroz Barbosa | Frontend e interface |



🚀 Próximas etapas
Definir formato final dos dados JSON (shared_data/dados_simulados.json);

Implementar API mínima (POST /readings);

Criar script de simulação para envio periódico ao backend;

Desenvolver dashboard básico com atualização manual dos dados;

Documentar arquitetura e endpoints iniciais.

🧠 Status do projeto
Fase 1 — Estrutura inicial e simulação de dados.
O projeto encontra-se na fase de organização de diretórios, definição da arquitetura geral e criação de scripts simuladores para testes iniciais de integração.

📄 Licença
Projeto desenvolvido exclusivamente para fins acadêmicos, sem fins comerciais.

