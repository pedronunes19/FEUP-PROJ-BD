PRAGMA foreign_keys = ON;

--Zona
insert into Zona values(1, 'PRT1');
insert into Zona values(2, 'PRT2');
insert into Zona values(3, 'PRT3');
insert into Zona values(4, 'MAI1');
insert into Zona values(5, 'MAI2');
insert into Zona values(6, 'MAI3');
insert into Zona values(7, 'MAI4');
insert into Zona values(8, 'MAI5');
insert into Zona values(9, 'MST1');
insert into Zona values(10, 'MST2');
insert into Zona values(11, 'GDM1');
insert into Zona values(12, 'GDM2');
insert into Zona values(13, 'GDM3');
insert into Zona values(14, 'GDM4');
insert into Zona values(15, 'VNG1');
insert into Zona values(16, 'VNG2');
insert into Zona values(17, 'VNG3');
insert into Zona values(18, 'VNG4');
insert into Zona values(19, 'VNG5');
insert into Zona values(20, 'VNG6');

--Paragem
insert into Paragem values(1, 'PASSEIO ALEGRE', 1, 2);
insert into Paragem values(2, 'PRAIA DO OURIGO', 1, 2);
insert into Paragem values(3, 'PRAIA DOS INGLESES', 1, 2);
insert into Paragem values(4, 'CRASTO', 1, 2);
insert into Paragem values(5, 'JACINTO NUNES', 1, 2);
insert into Paragem values(6, 'MOLHE', 1, 2);
insert into Paragem values(7, 'NEVOGILDE', 1, 2);
insert into Paragem values(8, 'LGO. NEVOGILDE', 1, 2);
insert into Paragem values(9, 'R. CRASTO', 1, 2);
insert into Paragem values(10, 'LICEU GARCIA ORTA', 1, 2);
insert into Paragem values(11, 'AV. DA BOAVISTA', 1, 2);
insert into Paragem values(12, 'FONTE DA MOURA', 1, 2);
insert into Paragem values(13, 'BAIRRO DA VILARINHA', 1, 2);
insert into Paragem values(14, 'BAIRRO DA PREVIDÊNCIA', 1, 2);
insert into Paragem values(15, 'ALBERTO MACEDO', 1, 2);
insert into Paragem values(16, 'S. JOÃO DE BRITO', 1, 2);
insert into Paragem values(17, 'S. JOÃO BOSCO', 1, 2);
insert into Paragem values(18, 'AV. DO BESSA', 1, 1);
insert into Paragem values(19, 'SIDÓNIO PAIS', 1, 1);
insert into Paragem values(20, 'CASA DE SAÚDE DA BOAVISTA', 1, 1);
insert into Paragem values(21, 'GRACIOSA', 1, 1);
insert into Paragem values(22, 'BOAVISTA-CASA DA MÚSICA', 1, 1);
insert into Paragem values(23, 'BOAVISTA BRASÍLIA', 1, 1);
insert into Paragem values(24, 'HOSPITAL MILITAR', 1, 1);
insert into Paragem values(25, 'CARVALHOSA', 1, 1);
insert into Paragem values(26, 'FIGUEIROA', 1, 1);
insert into Paragem values(27, 'PR. DA REPÚBLICA', 1, 1);
insert into Paragem values(28, 'GONÇALO CRISTOVÃO', 1, 1);
insert into Paragem values(29, 'TRINDADE', 1, 1);
insert into Paragem values(30, 'AV. ALIADOS', 1, 1);

--Linha
insert into Linha values(1, 202, 1, 1, 30);

--Condutor
insert into Condutor values(1, 'Tiago Araújo', '919874321', '1993-12-06', 'Rua de Passos Manuel 137, Porto', 'Portugues', '033430166');
insert into Condutor values(2, 'Ana Guedes', '911345987', '1995-06-03', 'Rua dos Mártires da Liberdade 134, Porto', 'Portugues', '166430033');
insert into Condutor values(3, 'Bernardo Silva', '923546798', '1997-03-01', 'Rua da Madeira 84, Porto', 'Portugues', '642834961');


--TipoAutocarro
insert into TipoAutocarro values(1, 'Standard', 25, 45);
insert into TipoAutocarro values(2, 'Articulado', 45, 85);
insert into TipoAutocarro values(3, "Dois Pisos", 50, 110);
insert into TipoAutocarro values(4, 'Mini', 18, 25);


--Autocarro
insert into Autocarro values(1, 'AB-09-CD', 1, 1);
insert into Autocarro values(2, 'EF-18-GH', 1, 2);
insert into Autocarro values(3, 'ZX-55-CV', 0, 4);


--CondutorDoAutocarro
insert into CondutorDoAutocarro values(1, 1);
insert into CondutorDoAutocarro values(1, 2);
insert into CondutorDoAutocarro values(2, 1);
insert into CondutorDoAutocarro values(2, 3);
insert into CondutorDoAutocarro values(3, 3);

--LinhaDoAutocarro
insert into LinhaDoAutocarro values(1, 1);
insert into LinhaDoAutocarro values(2, 1);
insert into LinhaDoAutocarro values(3, 1);


--TipoHorário
insert into TipoHorário values(1, 'Dias Úteis');
insert into TipoHorário values(2, 'Sábados');
insert into TipoHorário values(3, 'Domingos/Feriados');
insert into TipoHorário values(4, 'Verão');
insert into TipoHorário values(5, 'Férias Escolares');


--Horário
insert into Horário values(1, 1, 1);
insert into Horário values(2, 1, 2);


--Passagem
insert into Passagem values(1, 1, 1, 1, '06:00');
insert into Passagem values(2, 1, 1, 1, '06:30');
insert into Passagem values(3, 1, 1, 1, '06:44');
insert into Passagem values(4, 1, 1, 1, '06:57');
insert into Passagem values(5, 1, 1, 1, '07:11');
insert into Passagem values(6, 1, 1, 1, '07:36');
insert into Passagem values(7, 1, 1, 1, '07:51');
insert into Passagem values(8, 1, 1, 1, '08:08');
insert into Passagem values(9, 1, 1, 1, '08:27');
insert into Passagem values(10, 1, 1, 1, '08:45');
insert into Passagem values(11, 1, 1, 1, '09:14');
insert into Passagem values(12, 1, 1, 1, '09:30');
insert into Passagem values(13, 1, 1, 1, '09:47');
insert into Passagem values(14, 1, 1, 1, '10:06');
insert into Passagem values(15, 1, 1, 1, '10:30');
insert into Passagem values(16, 1, 1, 1, '10:54');
insert into Passagem values(17, 1, 1, 1, '11:18');
insert into Passagem values(18, 1, 1, 1, '11:42');
insert into Passagem values(19, 1, 1, 1, '12:06');
insert into Passagem values(20, 1, 1, 1, '12:30');
insert into Passagem values(21, 1, 1, 1, '12:44');
insert into Passagem values(22, 1, 1, 1, '12:53');
insert into Passagem values(23, 1, 1, 1, '13:17');
insert into Passagem values(24, 1, 1, 1, '13:41');
insert into Passagem values(25, 1, 1, 1, '14:05');
insert into Passagem values(26, 1, 1, 1, '14:26');
insert into Passagem values(27, 1, 1, 1, '14:48');
insert into Passagem values(28, 1, 1, 1, '15:08');
insert into Passagem values(29, 1, 1, 1, '15:28');
insert into Passagem values(30, 1, 1, 1, '15:48');
insert into Passagem values(31, 1, 1, 1, '16:08');
insert into Passagem values(32, 1, 1, 1, '16:19');
insert into Passagem values(33, 1, 1, 1, '16:30');
insert into Passagem values(34, 1, 1, 1, '16:51');
insert into Passagem values(35, 1, 1, 1, '17:11');
insert into Passagem values(36, 1, 1, 1, '17:35');
insert into Passagem values(37, 1, 1, 1, '17:57');
insert into Passagem values(38, 1, 1, 1, '18:17');
insert into Passagem values(39, 1, 1, 1, '18:37');
insert into Passagem values(40, 1, 1, 1, '18:59');
insert into Passagem values(41, 1, 1, 1, '19:18');
insert into Passagem values(42, 1, 1, 1, '19:31');
insert into Passagem values(43, 1, 1, 1, '19:47');
insert into Passagem values(44, 1, 1, 1, '20:06');
insert into Passagem values(45, 1, 1, 1, '20:24');
insert into Passagem values(46, 1, 1, 1, '20:40');
insert into Passagem values(47, 1, 1, 1, '21:03');
insert into Passagem values(48, 1, 1, 1, '21:25');

insert into Passagem values(50, 1, 1, 30, '06:15');
insert into Passagem values(51, 1, 1, 30, '06:40');
insert into Passagem values(52, 1, 1, 30, '07:00');
insert into Passagem values(53, 1, 1, 30, '07:15');
insert into Passagem values(54, 1, 1, 30, '07:30');
insert into Passagem values(55, 1, 1, 30, '07:45');
insert into Passagem values(56, 1, 1, 30, '08:00');
insert into Passagem values(57, 1, 1, 30, '08:15');
insert into Passagem values(58, 1, 1, 30, '08:30');
insert into Passagem values(59, 1, 1, 30, '08:48');
insert into Passagem values(60, 1, 1, 30, '09:06');
insert into Passagem values(61, 1, 1, 30, '09:25');
insert into Passagem values(62, 1, 1, 30, '09:38');
insert into Passagem values(63, 1, 1, 30, '10:12');
insert into Passagem values(64, 1, 1, 30, '10:36');
insert into Passagem values(65, 1, 1, 30, '11:00');
insert into Passagem values(66, 1, 1, 30, '11:24');
insert into Passagem values(67, 1, 1, 30, '11:48');
insert into Passagem values(68, 1, 1, 30, '12:12');
insert into Passagem values(69, 1, 1, 30, '12:36');
insert into Passagem values(70, 1, 1, 30, '13:00');
insert into Passagem values(71, 1, 1, 30, '13:24');
insert into Passagem values(72, 1, 1, 30, '13:45');
insert into Passagem values(73, 1, 1, 30, '14:05');
insert into Passagem values(74, 1, 1, 30, '14:25');
insert into Passagem values(75, 1, 1, 30, '14:45');
insert into Passagem values(76, 1, 1, 30, '15:05');
insert into Passagem values(77, 1, 1, 30, '15:25');
insert into Passagem values(78, 1, 1, 30, '15:35');
insert into Passagem values(79, 1, 1, 30, '16:05');
insert into Passagem values(80, 1, 1, 30, '16:25');
insert into Passagem values(81, 1, 1, 30, '16:45');
insert into Passagem values(82, 1, 1, 30, '17:05');
insert into Passagem values(83, 1, 1, 30, '17:25');
insert into Passagem values(84, 1, 1, 30, '17:45');
insert into Passagem values(85, 1, 1, 30, '18:05');
insert into Passagem values(86, 1, 1, 30, '18:25');
insert into Passagem values(87, 1, 1, 30, '18:45');
insert into Passagem values(88, 1, 1, 30, '19:05');
insert into Passagem values(89, 1, 1, 30, '19:25');
insert into Passagem values(90, 1, 1, 30, '19:45');
insert into Passagem values(91, 1, 1, 30, '20:05');
insert into Passagem values(92, 1, 1, 30, '20:30');
insert into Passagem values(93, 1, 1, 30, '20:55');
insert into Passagem values(94, 1, 1, 30, '21:25');

insert into Passagem values(100, 2, 1, 1, '06:14');
insert into Passagem values(101, 2, 1, 1, '06:44');
insert into Passagem values(102, 2, 1, 1, '07:25');
insert into Passagem values(103, 2, 1, 1, '08:06');
insert into Passagem values(104, 2, 1, 1, '08:48');
insert into Passagem values(105, 2, 1, 1, '09:30');
insert into Passagem values(106, 2, 1, 1, '10:10');
insert into Passagem values(107, 2, 1, 1, '10:50');
insert into Passagem values(108, 2, 1, 1, '10:30');
insert into Passagem values(109, 2, 1, 1, '11:30');
insert into Passagem values(110, 2, 1, 1, '12:10');
insert into Passagem values(111, 2, 1, 1, '12:50');
insert into Passagem values(112, 2, 1, 1, '13:17');
insert into Passagem values(113, 2, 1, 1, '13:32');
insert into Passagem values(114, 2, 1, 1, '14:13');
insert into Passagem values(115, 2, 1, 1, '14:48');
insert into Passagem values(116, 2, 1, 1, '15:20');
insert into Passagem values(117, 2, 1, 1, '15:50');
insert into Passagem values(118, 2, 1, 1, '16:20');
insert into Passagem values(119, 2, 1, 1, '16:50');
insert into Passagem values(120, 2, 1, 1, '17:20');
insert into Passagem values(121, 2, 1, 1, '17:50');
insert into Passagem values(122, 2, 1, 1, '18:20');
insert into Passagem values(123, 2, 1, 1, '18:48');
insert into Passagem values(124, 2, 1, 1, '19:20');
insert into Passagem values(125, 2, 1, 1, '20:00');
insert into Passagem values(126, 2, 1, 1, '20:40');
insert into Passagem values(127, 2, 1, 1, '21:23');

insert into Passagem values(130, 2, 1, 30, '06:15');
insert into Passagem values(131, 2, 1, 30, '06:55');
insert into Passagem values(132, 2, 1, 30, '07:35');
insert into Passagem values(133, 2, 1, 30, '08:15');
insert into Passagem values(134, 2, 1, 30, '08:55');
insert into Passagem values(135, 2, 1, 30, '09:35');
insert into Passagem values(136, 2, 1, 30, '10:15');
insert into Passagem values(137, 2, 1, 30, '10:55');
insert into Passagem values(138, 2, 1, 30, '11:35');
insert into Passagem values(139, 2, 1, 30, '12:15');
insert into Passagem values(140, 2, 1, 30, '12:55');
insert into Passagem values(141, 2, 1, 30, '13:35');
insert into Passagem values(142, 2, 1, 30, '14:10');
insert into Passagem values(143, 2, 1, 30, '14:40');
insert into Passagem values(144, 2, 1, 30, '15:10');
insert into Passagem values(145, 2, 1, 30, '15:40');
insert into Passagem values(146, 2, 1, 30, '16:10');
insert into Passagem values(147, 2, 1, 30, '16:40');
insert into Passagem values(148, 2, 1, 30, '17:10');
insert into Passagem values(149, 2, 1, 30, '17:40');
insert into Passagem values(150, 2, 1, 30, '18:10');
insert into Passagem values(151, 2, 1, 30, '18:45');
insert into Passagem values(152, 2, 1, 30, '19:25');
insert into Passagem values(153, 2, 1, 30, '20:05');
insert into Passagem values(154, 2, 1, 30, '20:50');
insert into Passagem values(155, 2, 1, 30, '21:20');

insert into Passagem values(160, 1, 1, 22, '06:24');
insert into Passagem values(161, 1, 1, 22, '06:49');
insert into Passagem values(162, 1, 1, 22, '07:11');
insert into Passagem values(163, 1, 1, 22, '07:26');
insert into Passagem values(164, 1, 1, 22, '07:41');
insert into Passagem values(165, 1, 1, 22, '07:56');
insert into Passagem values(166, 1, 1, 22, '08:14');
insert into Passagem values(167, 1, 1, 22, '08:29');
insert into Passagem values(168, 1, 1, 22, '08:44');
insert into Passagem values(169, 1, 1, 22, '09:02');
insert into Passagem values(170, 1, 1, 22, '09:38');
insert into Passagem values(171, 1, 1, 22, '10:02');
insert into Passagem values(172, 1, 1, 22, '10:26');
insert into Passagem values(173, 1, 1, 22, '10:50');
insert into Passagem values(174, 1, 1, 22, '11:14');
insert into Passagem values(175, 1, 1, 22, '11:38');
insert into Passagem values(176, 1, 1, 22, '12:02');
insert into Passagem values(177, 1, 1, 22, '12:25');
insert into Passagem values(178, 1, 1, 22, '12:48');
insert into Passagem values(179, 1, 1, 22, '13:12');
insert into Passagem values(180, 1, 1, 22, '13:36');
insert into Passagem values(181, 1, 1, 22, '13:57');
insert into Passagem values(182, 1, 1, 22, '14:19');
insert into Passagem values(183, 1, 1, 22, '13:39');
insert into Passagem values(184, 1, 1, 22, '14:05');
insert into Passagem values(185, 1, 1, 22, '14:39');
insert into Passagem values(186, 1, 1, 22, '14:59');
insert into Passagem values(187, 1, 1, 22, '15:19');
insert into Passagem values(188, 1, 1, 22, '15:39');
insert into Passagem values(189, 1, 1, 22, '15:59');
insert into Passagem values(190, 1, 1, 22, '16:08');
insert into Passagem values(191, 1, 1, 22, '16:20');
insert into Passagem values(192, 1, 1, 22, '16:40');
insert into Passagem values(193, 1, 1, 22, '17:00');
insert into Passagem values(194, 1, 1, 22, '17:22');
insert into Passagem values(195, 1, 1, 22, '17:42');
insert into Passagem values(196, 1, 1, 22, '18:02');
insert into Passagem values(197, 1, 1, 22, '18:22');
insert into Passagem values(198, 1, 1, 22, '18:42');
insert into Passagem values(199, 1, 1, 22, '19:02');
insert into Passagem values(200, 1, 1, 22, '19:18');
insert into Passagem values(201, 1, 1, 22, '19:38');
insert into Passagem values(202, 1, 1, 22, '19:58');
insert into Passagem values(203, 1, 1, 22, '20:16');
insert into Passagem values(204, 1, 1, 22, '20:40');
insert into Passagem values(205, 1, 1, 22, '21:05');
insert into Passagem values(206, 1, 1, 22, '21:35');

insert into Passagem values(210, 1, 1, 12, '05:50');
insert into Passagem values(211, 1, 1, 12, '06:20');
insert into Passagem values(212, 1, 1, 12, '06:34');
insert into Passagem values(213, 1, 1, 12, '06:47');
insert into Passagem values(214, 1, 1, 12, '06:59');
insert into Passagem values(215, 1, 1, 12, '07:24');
insert into Passagem values(216, 1, 1, 12, '07:39');
insert into Passagem values(217, 1, 1, 12, '07:54');
insert into Passagem values(218, 1, 1, 12, '08:13');
insert into Passagem values(219, 1, 1, 12, '08:31');
insert into Passagem values(220, 1, 1, 12, '08:49');
insert into Passagem values(221, 1, 1, 12, '09:01');
insert into Passagem values(222, 1, 1, 12, '09:34');
insert into Passagem values(223, 1, 1, 12, '09:53');
insert into Passagem values(224, 1, 1, 12, '10:17');
insert into Passagem values(225, 1, 1, 12, '10:41');
insert into Passagem values(226, 1, 1, 12, '11:05');
insert into Passagem values(227, 1, 1, 12, '11:29');
insert into Passagem values(228, 1, 1, 12, '11:53');
insert into Passagem values(229, 1, 1, 12, '12:17');
insert into Passagem values(230, 1, 1, 12, '12:30');
insert into Passagem values(231, 1, 1, 12, '13:40');
insert into Passagem values(232, 1, 1, 12, '13:03');
insert into Passagem values(233, 1, 1, 12, '13:27');
insert into Passagem values(234, 1, 1, 12, '13:51');
insert into Passagem values(235, 1, 1, 12, '14:12');
insert into Passagem values(236, 1, 1, 12, '14:34');
insert into Passagem values(237, 1, 1, 12, '14:54');
insert into Passagem values(238, 1, 1, 12, '15:14');
insert into Passagem values(239, 1, 1, 12, '15:34');
insert into Passagem values(240, 1, 1, 12, '15:54');
insert into Passagem values(241, 1, 1, 12, '16:05');
insert into Passagem values(242, 1, 1, 12, '16:16');
insert into Passagem values(243, 1, 1, 12, '16:37');
insert into Passagem values(244, 1, 1, 12, '16:57');
insert into Passagem values(245, 1, 1, 12, '17:21');
insert into Passagem values(246, 1, 1, 12, '17:43');
insert into Passagem values(247, 1, 1, 12, '18:04');
insert into Passagem values(248, 1, 1, 12, '18:24');
insert into Passagem values(249, 1, 1, 12, '18:46');
insert into Passagem values(250, 1, 1, 12, '19:05');
insert into Passagem values(251, 1, 1, 12, '19:19');
insert into Passagem values(252, 1, 1, 12, '19:35');
insert into Passagem values(253, 1, 1, 12, '19:55');
insert into Passagem values(254, 1, 1, 12, '20:13');
insert into Passagem values(255, 1, 1, 12, '20:29');
insert into Passagem values(256, 1, 1, 12, '20:53');
insert into Passagem values(257, 1, 1, 12, '21:15');

--TipoAlteraçãoServiço
insert into TipoAlteraçãoServiço values(1, 'Paragem');
insert into TipoAlteraçãoServiço values(2, 'Linha');
insert into TipoAlteraçãoServiço values(3, 'Horário');


--AlteraçãoServiço
insert into AlteraçãoServiço values(1, 'Desativação Paragem Passeio Alegre Obras', '2021-12-13', '2021-12-14', 1);
insert into AlteraçãoServiço values(2, 'Desativação Linha 202', '2021-12-15', '2021-12-16', 2);
insert into AlteraçãoServiço values(3, 'Falha Autocarro 202 Passeio Alegre 06:00', '2021-12-17', '2021-12-18', 3);
insert into AlteraçãoServiço values(4, 'Falha Autocarro 202 Aliados 06:15 Sábado', '2021-12-18', '2021-12-19', 3);


--AlteraçãoHorário
insert into AlteraçãoHorário values(3, 1);
insert into AlteraçãoHorário values(4, 130);

--DesativaçãoLinha
insert into DesativaçãoLinha values(2, 1);

--DesativaçãoParagem
insert into DesativaçãoParagem values(1, 1);