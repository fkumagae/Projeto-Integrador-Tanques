-- Registros de exemplo para ambiente de desenvolvimento

INSERT INTO `users` (`username`, `password_hash`, `role`)
VALUES
  ('admin', '$2b$12$RRGZjYkEHvhZISWlxfJ2pOk6eFOpC9qWo0NmFZKxZl4kiwh7bFYb6', 'admin'),
  ('operador', '$2b$10$qiI4PeTRCc0eICGGxIllB.MsfHisrMUUA5c9mrv0AHFYDV.h6HVdG', 'user');

INSERT INTO `tanques` (`nome`, `descricao`)
VALUES
  ('Tanque 1', 'Tanque de processo principal'),
  ('Tanque 2', 'Tanque intermediario'),
  ('Tanque 3', 'Tanque de polimento');

INSERT INTO `medicoes` (`tanque_id`, `device_id`, `value_encrypted`, `ts`)
VALUES
  (1, 'sim-esp32', 'U2FsdGVkX19OSEZPRkZOK3NpbTE=', '2025-11-15 19:45:00'),
  (2, 'sim-esp32', 'U2FsdGVkX1hZbWxhZG9zMzIuNQ==', '2025-11-15 19:45:00'),
  (3, 'sim-esp32', 'U2FsdGVkX18yOC45LXNpbQ==', '2025-11-15 19:45:00'),
  (1, 'sim-esp32', 'U2FsdGVkX18zMi41LVJlcGxheQ==', '2025-11-15 19:50:00'),
  (2, 'sim-esp32', 'U2FsdGVkX183OS4xLVJlcGxheQ==', '2025-11-15 19:50:00');

INSERT INTO `commands` (`command_name`, `value`, `status`, `user_id`)
VALUES
  ('setpoint', '30', 'pending', 1),
  ('flush', 'tanque=2', 'pending', 1);

INSERT INTO `logs` (`event_type`, `description`, `ip_address`, `user_id`)
VALUES
  ('INFO', 'Login bem sucedido do usuario admin.', '127.0.0.1', 1),
  ('WARN', 'Tentativa de login falhou para usuario operador.', '127.0.0.1', NULL),
  ('INFO', 'Simulador enviou medicoes (3 tanques).', '127.0.0.1', NULL),
  ('INFO', 'Comando setpoint=30 enviado ao ESP.', '127.0.0.1', 1);

INSERT INTO `eventos` (`tipo`, `descricao`, `ts`)
VALUES
  ('ALERTA', 'Nivel baixo detectado no tanque 3.', '2025-11-15 19:45:10'),
  ('INFO', 'Setpoint ajustado via dashboard.', '2025-11-15 19:46:00');
