//Exemplo de como alterar o node-red/settings.js
//Trecho relevante do settings.js do Node-RED usado no projeto
// topo do settings.js
const session = require('express-session');
const FileStore = require('session-file-store')(session);

module.exports = {
  httpNodeMiddleware: [
    session({
      store: new FileStore({ path: __dirname + '/sessions' }),
      secret: '$2a$10$l2AhGYCdmnatorCZ/zki0.IMINS2azQoAzJqYSeS6k8GQtJHbHzEu',
      resave: false,
      saveUninitialized: false,
      cookie: { secure: false, maxAge: 24*60*60*1000 } // 1 dia
    })
  ],
  // (para usar bcrypt em function nodes)
  functionGlobalContext: {
    bcrypt: require('bcrypt'),
    cryptojs: require('crypto-js')
  },
};