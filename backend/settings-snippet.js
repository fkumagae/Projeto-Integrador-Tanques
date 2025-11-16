// Trecho para incluir em ~/.node-red/settings.js

const session = require('express-session');
const FileStore = require('session-file-store')(session);
const sessionMiddleware = session({
  store: new FileStore({ path: './.node-red/sessions' }),
  secret: process.env.SESSION_SECRET || 'altere-esta-chave',
  resave: false,
  saveUninitialized: false,
  cookie: { maxAge: 1000 * 60 * 60 } // 1h
});

module.exports = {
  // ...
  functionGlobalContext: {
    bcrypt: require('bcrypt'),
    cryptojs: require('crypto-js'),
    apiKey: process.env.API_KEY || 'minha-chave-secreta-123'
  },

  httpNodeMiddleware: function (req, res, next) {
    sessionMiddleware(req, res, function () {
      if (!req.session) {
        return res.status(500).send('Sessao indisponivel');
      }
      // Protege endpoints sensiveis, mas permite APIs com x-api-key
      if (!req.session.user && !req.path.startsWith('/api')) {
        return res.redirect('/login');
      }
      next();
    });
  }
};
