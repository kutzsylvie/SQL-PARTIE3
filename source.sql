 --ajouter à la table languages une colonne versions (VARCHAR).--
 EXO1
USE webDevelopment;
ALTER TABLE `languages`
ADD COLUMN `versions`VARCHAR(5);

 --ajouter à la table frameworks une colonne version (INT).--
EXO2
ALTER TABLE `frameworks`
ADD COLUMN `version` INT UNSIGNED;

 --dans la table languages renommer la colonne versions en version.
EXO3
ALTER TABLE `languages`
CHANGE `versions` `version` VARCHAR(5);

 --dans la table frameworks, renommer la colonne name en framework.--
EXO4
ALTER TABLE `frameworks`
CHANGE `name` `framework` VARCHAR(40); -- je me suis trompée j'ai mis frameworks partout donc je le laisse--

 --dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.--
EXO5
ALTER TABLE `frameworks`
MODIFY `version` VARCHAR(10);

TP
USE `codex`
ALTER TABLE `clients`
DROP COLUMN `secondPhoneNumber`,
RENAME COLUMN `firstPhoneNumber` TO`phoneNumber`,
ADD COLUMN `zipCode`VARCHAR(40),
ADD COLUMN `city`VARCHAR(40);
