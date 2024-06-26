INSERT INTO `pesos` (`PESO_NOM`, `PESO_MIN`, `PESO_MAX`) VALUES
('leve', 1, 100),
('ligero', 101, 500),
('medio', 501, 2500),
('pesado', 2501, 5000),
('sin peso', 0, 0);

INSERT INTO `proveedores` (`PRV_NUM`, `PRV_NOM`) VALUES
(1, 'catio electronic'),
(2, 'estilografica reunidas'),
(3, 'mecanica de precision'),
(4, 'sanjita'),
(5, 'electrolamp'),
(6, 'copisteria'),
(7, 'el corte suizo'),
(8, 'Mercadiz'),
(9, 'El ahorramas'),
(10, 'Sara hogar');

INSERT INTO `articulos` (`ART_NUM`, `ART_NOM`, `ART_PESO`, `ART_COL`, `ART_PC`, `ART_PV`, `ART_PRV`) VALUES
(1, 'impresora', 150, 'rojo', 400, 580, 4),
(2, 'calculadora', 150, 'negro', 10, 20, 1),
(3, 'calendario', 100, 'blanco', 1, 4, 4),
(4, 'lampara', 550, 'rojo', 20, 33, 5),
(5, 'lampara', 550, 'blanco', 20, 34, 5),
(6, 'lampara', 550, 'azul', 25, 36, 5),
(7, 'lampara', 550, 'verde', 25, 37, 5),
(8, 'pesacartas 1-500', NULL, NULL, 1, 4, 3),
(9, 'pesacartas 1-1000', NULL, NULL, 2, 9, 3),
(10, 'boligrafo', 20, 'rojo', 0.5, 1, 2),
(11, 'boligrafo', 20, 'azul', 0.5, 1, 2),
(12, 'boligrafo lujo', 20, 'rojo', 0.6, 3, 2),
(13, 'boligrafo lujo', 20, 'verde', 1.99, 3.99, 2),
(14, 'boligrafo lujo', 20, 'azul', 1.99, 4.99, 2),
(15, 'boligrafo lujo', 20, 'negro', 1.99, 4.99, 2),
(16, 'papel', 5000, 'rosa', 3, 6, 2),
(17, 'grapadora', 1000, 'verde', 12, 15.60, 3),
(18, 'impresora', 200, 'morado', 390, 540, 3),
(19, 'calendario', 110, 'negro', 0.6, 2.5, 4),
(20, 'manta', NULL, 'malva', 15, 25, 10),
(69, 'papel', NULL, 'rosa', 3.15, 5.25, NULL),
(99, 'papel', 800, 'morado', 3.18, 5.98, 1);

INSERT INTO `clientes` (`CLT_NUM`, `CLT_APELL`, `CLT_NOM`, `CLT_PAIS`, `CLT_POB`) VALUES
(1, 'Borras', 'Margarita', 'e', 'Madrid'),
(2, 'Perez', 'Miguel', 'e', 'Madrid'),
(3, 'Dupont', 'Jean', 'f', 'París'),
(4, 'Dupreit', 'Michel', 'f', 'Lyon'),
(5, 'Llopis', 'Antoni', 'e', 'Barcelona'),
(6, 'Souris', 'Marcel', 'f', 'París'),
(7, 'Goméz', 'Pablo', 'e', 'Pamplona'),
(8, 'Courbon', 'Gerad', 'f', 'Marsella'),
(9, 'Roman', 'Consuelo', 'e', 'Jaen'),
(10, 'Roca', 'Pau', 'e', 'Gerona'),
(11, 'Mancha', 'Jorge', 'e', 'Valencia'),
(12, 'Curro', 'Pablo', 'e', 'Barcelona'),
(13, 'Cortes', 'Diego', 'e', 'Madrid'),
(14, 'Fernandez', 'Joaquin', 'c', 'Madrid'),
(15, 'Duran', 'Jacinto', 'e', 'Pamplona'),
(16, 'Minguin', 'Pedro', 'e', 'Pamplona'),
(17, 'Ubrique', 'Jesus', 'e', 'Pamplona'),
(18, 'Mazapato', 'Sophie', 'e', 'Madrid'),
(19, 'Bigote', 'Jose Mari', 'p', 'Oporto'),
(20, 'Dalima', 'Romualdo', 'b', 'San José'),
(21, 'Clavel rojo', 'Paco', 'e', 'Oviedo'),
(22, 'Alonso', 'Fernando', 'e', 'Gijón'),
(23, 'Rodriguez', 'Pedrito', 'e', 'Arico'),
(24, 'Florero', 'Mar', 'e', 'Madrid'),
(25, 'Florero', 'Mar', 'e', 'Barcelona'),
(26, 'Peralta', 'Leo', 'a', 'Rosario');

INSERT INTO `tiendas` (`TDA_NUM`, `TDA_POB`, `TDA_GER`) VALUES
(1, 'Madrid-batan', 'Contesfosques, Jordi'),
(2, 'Madrid-centro', 'Martinez, Juan'),
(3, 'Pamplona', 'Dominguez, Julian'),
(4, 'Barcelona', 'Pega, Jose Maria'),
(5, 'Trujillo', 'Mendez, Pedro'),
(6, 'Jaen', 'Marin, Raquel'),
(7, 'Valencia', 'Petit, Joan'),
(8, 'Requena', 'Marcos, Pilar'),
(9, 'Palencia', 'Castroviejo, Lozano'),
(10, 'Gerona', 'Gomez, Gabriel'),
(11, 'Lyon', 'Madoux, Jean'),
(12, 'París', 'Fouet, Paul'),
(13, 'Jerez', 'Peralta, Leo');

INSERT INTO `ventas` (`VNT_CLT`, `VNT_TDA`, `VNT_ART`, `VNT_CANT`, `VNT_FCH`) VALUES
(22, 10, 17, 1,  '20191006'),
(5, 4, 4, 1, '20191015'), 
(7, 3, 10, 1, '20191015'),
(7, 3, 11, 2, '20191015'),
(7, 3, 14, 3, '20191016'),
(8, 11, 2, 1, '20191025'),
(6, 12, 3, 2, '20191030'),
(6, 12, 15, 2, '20191102'),
(13, 1, 4, 1, '20191102'),
(13, 1, 3, 1, '20191105'),
(1, 2, 2, 1, '20191109'),
(1, 2, 12, 1, '20191202'),
(1, 2, 13, 10, '20191212'),
(4, 11, 1, 8, '20191222'),
(4, 11, 10, 7, '20191223'),
(3, 7, 6, 1, '20200111'),
(3, 7, 9, 2, '20200111'),
(1, 2, 3, 3, '20200120'),
(7, 8, 3, 1, '20200203'),
(4, 5, 3, 6, '20200204'),
(10, 11, 3, 1, '20200206'),
(6, 7, 3, 1, '20200211'),
(3, 4, 3, 2, '20200216'),
(9, 10, 3, 1, '20200221'),
(2, 3, 3, 4, '20200222'),
(8, 9, 3, 1, '20200229'),
(5, 6, 3, 3, '20200229'),
(26, 4, 17, 2, '20200302'),
(19, 7, 3, 1, '20200303'),
(17, 4, 3, 10, '20200303'),
(18, 1, 3, 1, '20200303'),
(10, 4, 2, NULL, '20200303'),
(3, 13, 3, NULL, '20200303');

