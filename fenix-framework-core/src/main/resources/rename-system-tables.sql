--
-- SQL script that updates the schema of the system tables to the newer version
--

RENAME TABLE `TX_CHANGE_LOGS` TO `FF$TX_CHANGE_LOGS`;
RENAME TABLE `LAST_TX_PROCESSED` TO `FF$LAST_TX_PROCESSED`;
RENAME TABLE `TRANSACTION_STATISTICS` TO `FF$TRANSACTION_STATISTICS`;
RENAME TABLE `DOMAIN_CLASS_INFO` TO `FF$DOMAIN_CLASS_INFO`;

ALTER TABLE `FF$TX_CHANGE_LOGS` ADD COLUMN `OBJ_OID` BIGINT NOT NULL FIRST;
ALTER TABLE `FF$TX_CHANGE_LOGS` DROP COLUMN `OBJ_CLASS`;
ALTER TABLE `FF$TX_CHANGE_LOGS` DROP COLUMN `OBJ_ID`;

