INSERT INTO `fcs_configuration`
    (`id_configuration`, `id_shop_group`, `id_shop`, `active`, `name`, `text`, `value`, `type`, `position`, `date_add`, `date_upd`)
VALUES
    ('0', NULL, NULL, '1', 'FCS_DB_VERSION', 'Version der Datenbank-Struktur', '0', 'readonly', '0', '2017-03-13 00:00:00', '2017-03-13 00:00:00'),
    ('0', NULL, NULL, '0', 'FCS_DB_UPDATE', 'Version des letzten versuchten Datenbank-Updates', '0', 'readonly', '0', '2017-03-13 00:00:00', '2017-03-13 00:00:00')
;