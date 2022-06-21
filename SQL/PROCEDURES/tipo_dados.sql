DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tipos_de_dados`()
BEGIN
declare v varchar(5) default 'TEXTO';
declare i integer default 10;
declare d decimal(4,2) default 56.12;
declare dt date default '2022-06-13';
select v, i, d, dt;
END$$
DELIMITER ;
