CREATE DATABASE IF NOT EXISTS `sncf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sncf`;

CREATE TABLE IF NOT EXISTS `gare` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nomgare` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `tgv` ( 
  `id` int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  `idgaredepart` int(11) REFERENCES gare(id), 
  `idgarearrivee` int(11) REFERENCES gare(id), 
  `horairedepart` date NOT NULL, 
  `duree` time NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

COMMIT;
