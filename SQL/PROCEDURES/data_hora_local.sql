DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `data_hora_local`()
BEGIN
declare ts datetime default localtimestamp();
select ts;
END$$
DELIMITER ;
