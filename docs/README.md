# Documentacao Geral

## Visao da arquitetura
O projeto monitora tanques industriais usando um ESP32 (ou o simulador `firmware/simulador.py`) que envia medicoes periodicas para o Node-RED. O Node-RED expoe APIs REST, autenticacao e um dashboard para operadores. Toda a telemetria, usuarios, comandos e logs sao persistidos no MySQL `scom`.

Fluxo resumido:
1. **Medicoes**: o dispositivo envia `POST /api/medicoes` com header `x-api-key` -> Node-RED criptografa e grava em `medicoes`.
2. **Comandos**: o firmware consulta `GET /api/commands` -> Node-RED busca entradas `pending` e retorna em JSON.
3. **Autenticacao**: operadores acessam `/login`; senhas sao validadas com `bcrypt`, perfis `admin` ou `user` definem permissoes no dashboard.
4. **Logs/Auditoria**: cada evento (login, envio de dados, comandos) gera registros nas tabelas `logs` e `eventos`.

## Pastas e responsabilidades
- `firmware/`: simulador em Python que representa o ESP32, realiza POST/GET no Node-RED.
- `backend/`: fluxo (`flows.json`), documentacao (`README.md`) e snippet de configuracao do Node-RED.
- `database/`: dump original (`scom.sql`), schema limpo (`schema.sql`) e inserts de exemplo (`seed.sql`).
- `frontend/`: reservado para artefatos futuros do dashboard web (hoje o dashboard e o do Node-RED).
- `shared_data/`: arquivos compartilhados entre times; contem `dados_simulados.json`.
- `docs/`: documentacao textual e diagramas, incluindo este README e `arquitetura_geral.mmd`.
- `test/`: scripts de teste manual/automatizado, como `test_api.http`.

## Principais fluxos
- **Envio de medicoes**: `POST http://localhost:1880/api/medicoes` com corpo `[ { tanque, nivel, ts } ]` e header `x-api-key: <chave-configurada>`.
- **Consulta de comandos**: `GET http://localhost:1880/api/commands` com o mesmo header; retorna comando pendente ou lista vazia.
- **Autenticacao/dashboard**: `/login` para autenticar e `/dashboard` para visualizar setpoints, niveis e acionar comandos.
- **Auditoria**: cada rota registra entradas em `logs` (detalhes operacionais) e `eventos` (alertas do processo).

Consulte `backend/README.md` para iniciar o Node-RED e `database/README (em breve)` para estrategias de migracao.
