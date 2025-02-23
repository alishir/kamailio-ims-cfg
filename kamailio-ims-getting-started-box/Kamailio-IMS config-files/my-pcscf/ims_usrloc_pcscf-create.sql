USE pcscf;

CREATE TABLE `version` (
    `table_name` VARCHAR(32) NOT NULL,
    `table_version` INT UNSIGNED DEFAULT 0 NOT NULL,
    CONSTRAINT table_name_idx UNIQUE (`table_name`)
);

REPLACE INTO version (table_name, table_version) values ('location','6');

DROP TABLE IF EXISTS location;

CREATE TABLE `location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(64) DEFAULT NULL,
  `aor` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `received` varchar(128) DEFAULT NULL,
  `received_port` int(10) unsigned DEFAULT NULL,
  `received_proto` int(10) unsigned DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `rx_session_id` varchar(256) DEFAULT NULL,
  `reg_state` tinyint(4) DEFAULT NULL,
  `expires` datetime DEFAULT '2030-05-28 21:32:15',
  `service_routes` varchar(2048) DEFAULT NULL,
  `socket` varchar(64) DEFAULT NULL,
  `public_ids` varchar(2048) DEFAULT NULL,
  `security_type` int(11) DEFAULT NULL,
  `protocol` char(5) DEFAULT NULL,
  `mode` char(10) DEFAULT NULL,
  `ck` varchar(100) DEFAULT NULL,
  `ik` varchar(100) DEFAULT NULL,
  `ealg` char(20) DEFAULT NULL,
  `ialg` char(20) DEFAULT NULL,
  `port_uc` int(11) unsigned DEFAULT NULL,
  `port_us` int(11) unsigned DEFAULT NULL,
  `spi_pc` int(11) unsigned DEFAULT NULL,
  `spi_ps` int(11) unsigned DEFAULT NULL,
  `spi_uc` int(11) unsigned DEFAULT NULL,
  `spi_us` int(11) unsigned DEFAULT NULL,
  `t_security_type` int(11) DEFAULT NULL,
  `t_port_uc` int(11) unsigned DEFAULT NULL,
  `t_port_us` int(11) unsigned DEFAULT NULL,
  `t_spi_pc` int(11) unsigned DEFAULT NULL,
  `t_spi_ps` int(11) unsigned DEFAULT NULL,
  `t_spi_uc` int(11) unsigned DEFAULT NULL,
  `t_spi_us` int(11) unsigned DEFAULT NULL,
  `t_protocol` char(5) DEFAULT NULL,
  `t_mode` char(10) DEFAULT NULL,
  `t_ck` varchar(100) DEFAULT NULL,
  `t_ik` varchar(100) DEFAULT NULL,
  `t_ealg` char(20) DEFAULT NULL,
  `t_ialg` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor` (`aor`)
);
