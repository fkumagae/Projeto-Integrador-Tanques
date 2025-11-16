# Backend Node-RED

Este diretorio contem o fluxo `flows.json` exportado do Node-RED responsavel por expor as rotas da API (`/api/medicoes`, `/api/commands`, `/login`, `/dashboard`) e conversar com o banco MySQL `scom`. Abaixe esta o passo a passo para subir o ambiente.

## Pre-requisitos
- Node.js LTS instalado.
- Node-RED instalado globalmente (`npm install -g node-red`).
- XAMPP ou outro stack com MySQL/MariaDB ativo (host `localhost`, porta padrao `3306`).
- Banco `scom` criado a partir dos arquivos `database/schema.sql` + `database/seed.sql`.

## Dependencias do diretorio `.node-red`
No diretorio de usuario do Node-RED (geralmente `%HOMEPATH%\.node-red` no Windows):
```bash
cd %HOMEPATH%\.node-red
npm install express-session session-file-store bcrypt crypto-js
```

## Nos adicionais do Node-RED
Dentro do editor, utilize o menu **Manage palette -> Install** e procure por:
- `node-red-contrib-bcrypt`
- `node-red-contrib-crypto-js`
- `node-red-node-mysql`

Esses nos complementam o fluxo para lidar com hash de senha, criptografia/descriptografia das medicoes e acesso ao MySQL.

## Configuracao de `settings.js`
Edite `%HOMEPATH%\.node-red\settings.js` e adicione o trecho mostrado em `backend/settings-snippet.js`, garantindo:
- `require('express-session')` e `session-file-store` inicializados.
- `httpNodeMiddleware` protegendo as rotas `/login`, `/dashboard` e APIs via sessao de usuario.
- `functionGlobalContext` expondo `bcrypt` e `CryptoJS` para os Function nodes reutilizarem a mesma chave/IV configurados em um unico lugar.

## Importacao do fluxo
1. Abra o Node-RED (`node-red` no terminal).
2. No editor web (geralmente em `http://127.0.0.1:1880`), use **Menu -> Import -> Clipboard**.
3. Cole o conteudo de `backend/flows.json`, confirme o workspace e clique em **Deploy**.

## Conexao com o MySQL
Nos nos `MySQL` do fluxo, configure:
- **Server**: `localhost`
- **Port**: `3306`
- **User**: `root` (ou outro usuario que voce criou)
- **Password**: senha usada no MySQL
- **Database**: `scom`

Os nos usam consultas parametrizadas para inserir nas tabelas `medicoes`, `commands`, `logs`, etc. Certifique-se que o usuario do MySQL tenha permissao de SELECT/INSERT/UPDATE.

## Endpoints e uso
- **/api/medicoes** (`POST`): recebe um array de medicoes do ESP32/simulador. Requer header `x-api-key` correspondente ao valor configurado nos Function nodes.
- **/api/commands** (`GET`): retorna o proximo comando pendente para o dispositivo.
- **/login** e **/dashboard**: interface do Node-RED Dashboard para operadores. Apos importar o seed, use o usuario `admin`/`admin123`.

### Fluxo tipico
1. Suba o Node-RED e confirme que as conexoes MySQL estao `connected`.
2. Rode o simulador (`firmware/simulador.py`) ou importacoes via Postman/REST Client para enviar medicoes (usar o mesmo `x-api-key`).
3. Use o navegador em `http://localhost:1880/dashboard` para visualizar o painel ou `http://localhost:1880/login` para autenticar. O middleware de sessao utilizara `express-session` com `session-file-store`, conforme o snippet.
