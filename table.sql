REATE DATABASE tp_sncf;
USE tp_sncf;

CREATE TABLE `gare` (
  `id` int(10) NOT NULL,
  `nom` varchar(10) NOT NULL
  PRIMARY KEY (`id`)
); 

CREATE TABLE train (
  `id` int(10) NOT NULL,
  `Heure Dep` datetime(6) NOT NULL,
  `Heure Arr` datetime(6) NOT NULL,
  `Gare Dep` int(10) NOT NULL,
  `Gare Arr` int(10) NOT NULL,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`Gare Dep`) REFERENCES gare(`id`),
   FOREIGN KEY (`Gare Arr`) REFERENCES gare(`id`)
) ;

