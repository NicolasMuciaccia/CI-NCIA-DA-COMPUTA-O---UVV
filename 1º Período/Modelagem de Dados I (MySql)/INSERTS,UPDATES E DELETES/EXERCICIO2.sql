USE BDEX2_PASSAGENS_AEREAS;

INSERT INTO PASSAGEIROS (COD_PASSAGEIRO, NOME, SOBRENOME, DATA_NASC, NACIONALIDADE) VALUES 
(1, 'Maria', 'Ferreira', '1992-11-25', 'Espanhola'),
(2, 'Luiz', 'Rodrigues', '1980-07-12', 'Brasileiro'),
(3, 'Carla', 'Gomes', '2000-04-30', 'Brasileira'),
(4, 'André', 'Martins', '1975-09-18', 'Português'),
(5, 'Ana', 'Lima', '1995-03-20', 'Brasileira');

INSERT INTO AEROPORTOS (ID_AEROPORTO, NOME, CIDADE, ESTADO, PAIS, LATITUDE, LONGITUDE, TAMANHO_PISTA) VALUES 
(1, 'Aeroporto Internacional de Dubai', 'Dubai', "n/a", 'Emirados Árabes Unidos', '25.252', '55.364', 4000.0),
(2, 'Aeroporto de Tóquio-Haneda', 'Tóquio', "n/a", 'Japão', '35.548', '139.785', 3800.0),
(3, 'Aeroporto Internacional de Heathrow', 'Londres', "n/a", 'Reino Unido', '51.470', '-0.454', 4200.0),
(4, 'Aeroporto Internacional de Los Angeles', 'Los Angeles', 'California', 'Estados Unidos', '33.942', '-118.408', 4400.0),
(5, 'Aeroporto de Sydney', 'Sydney', 'Nova Gales do Sul', 'Austrália', '-33.946', '151.177', 4100.0);

INSERT INTO CIA_AEREAS (ID_CIA, CNPJ, NOME_FANTASIA) VALUES 
(1, '98765432109876', 'Sky Airlines'),
(2, '56789012345678', 'Air Canada'),
(3, '34567890123456', 'Singapore Airlines'),
(4, '67890123456789', 'Qatar Airways'),
(5, '45678901234567', 'Emirates');

INSERT INTO RESERVAS (ID_RESERVA, DATA_RESERVA, FORMA_PGTO, VALOR_RESERVA) VALUES 
(1, '2024-04-29', 'CREDITO', 500.00),
(2, '2024-05-01', 'DEBITO', 700.00),
(3, '2024-05-03', 'DINHEIRO', 600.00),
(4, '2024-05-05', 'PIX', 450.00),
(5, '2024-05-07', 'CREDITO', 800.00);

INSERT INTO AERONAVES (PFX_AERO, MODELO, ANO_FABR, FABRICANTE, POLTRONAS, CIA_AEREA) VALUES 
('ABC123', 'Boeing 737', 2018, 'Boeing', 180, 1),
('DEF456', 'Airbus A320', 2019, 'Airbus', 150, 2),
('GHI789', 'Boeing 787', 2017, 'Boeing', 250, 3),
('JKL012', 'Airbus A350', 2016, 'Airbus', 200, 4),
('MNO345', 'Embraer E190', 2015, 'Embraer', 100, 5);

INSERT INTO VOOS (ID_VOO, ASSENTO, AERO_PART, DATA_PART, HORA_PART, AERO_CHEG, DATA_CHEG, HORA_CHEG, AERONAVE, CIA_AEREA) VALUES 
(1, 'A1', 1, '2024-05-10', '08:00:00', 2, '2024-05-10', '10:00:00', 'ABC123', 1),
(2, 'B2', 2, '2024-05-12', '10:30:00', 3, '2024-05-12', '12:30:00', 'DEF456', 2),
(3, 'C3', 3, '2024-05-14', '12:00:00', 4, '2024-05-14', '14:00:00', 'GHI789', 3),
(4, 'D4', 4, '2024-05-16', '14:30:00', 5, '2024-05-16', '16:30:00', 'JKL012', 4),
(5, 'E5', 5, '2024-05-18', '16:00:00', 1, '2024-05-18', '18:00:00', 'MNO345', 5);

INSERT INTO VOOS_RESERVAS (ID_VOO, ASSENTO, ID_RESERVA) VALUES 
(1, 'A1', 1),
(2, 'B2', 2),
(3, 'C3', 3),
(4, 'D4', 4),
(5, 'E5', 5);

INSERT INTO PASSAGEIROS_RESERVAS (PASSAGEIRO, ID_RESERVA) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

UPDATE PASSAGEIROS SET NACIONALIDADE = 'Mexicano' WHERE COD_PASSAGEIRO = 1;
UPDATE PASSAGEIROS SET SOBRENOME = 'Alves' WHERE COD_PASSAGEIRO = 2;

UPDATE AEROPORTOS SET CIDADE = 'Abu Dhabi' WHERE ID_AEROPORTO = 1;
UPDATE AEROPORTOS SET PAIS = 'Japão' WHERE ID_AEROPORTO = 2;

UPDATE CIA_AEREAS SET NOME_FANTASIA = 'United Airlines' WHERE ID_CIA = 1;
UPDATE CIA_AEREAS SET CNPJ = '98765432109877' WHERE ID_CIA = 2;

UPDATE RESERVAS SET FORMA_PGTO = 'DEBITO' WHERE ID_RESERVA = 1;
UPDATE RESERVAS SET VALOR_RESERVA = 600.00 WHERE ID_RESERVA = 2;

UPDATE AERONAVES SET POLTRONAS = 200 WHERE PFX_AERO = 'ABC123';
UPDATE AERONAVES SET FABRICANTE = 'Boeing' WHERE PFX_AERO = 'DEF456';

UPDATE VOOS SET DATA_PART = '2024-05-15' WHERE ID_VOO = 1;
UPDATE VOOS SET HORA_PART = '09:30:00' WHERE ID_VOO = 2;

UPDATE VOOS_RESERVAS SET ASSENTO = 'F6' WHERE ID_VOO = 1 AND ID_RESERVA = 1;
UPDATE VOOS_RESERVAS SET ID_RESERVA = 3 WHERE ID_VOO = 2 AND ID_RESERVA = 2;

UPDATE PASSAGEIROS_RESERVAS SET PASSAGEIRO = 3 WHERE PASSAGEIRO = 2 AND ID_RESERVA = 2;
UPDATE PASSAGEIROS_RESERVAS SET ID_RESERVA = 1 WHERE PASSAGEIRO = 3 AND ID_RESERVA = 3;

SET FOREIGN_KEY_CHECKS = 0; #USADO APENAS PARA FINS DE APRENDIZADO - LIBERA AS RESTRIÇÕES DE CHAVE ESTRANGEIRA

DELETE FROM PASSAGEIROS WHERE COD_PASSAGEIRO = 1;
DELETE FROM PASSAGEIROS WHERE COD_PASSAGEIRO = 2;

DELETE FROM AEROPORTOS WHERE ID_AEROPORTO = 1;
DELETE FROM AEROPORTOS WHERE ID_AEROPORTO = 2;

DELETE FROM CIA_AEREAS WHERE ID_CIA = 1;
DELETE FROM CIA_AEREAS WHERE ID_CIA = 2;

DELETE FROM RESERVAS WHERE ID_RESERVA = 1;
DELETE FROM RESERVAS WHERE ID_RESERVA = 2;

DELETE FROM AERONAVES WHERE PFX_AERO = 'ABC123';
DELETE FROM AERONAVES WHERE PFX_AERO = 'DEF456';

DELETE FROM VOOS WHERE ID_VOO = 1;
DELETE FROM VOOS WHERE ID_VOO = 2;

DELETE FROM VOOS_RESERVAS WHERE ID_VOO = 1 AND ID_RESERVA = 1;
DELETE FROM VOOS_RESERVAS WHERE ID_VOO = 2 AND ID_RESERVA = 2;

DELETE FROM PASSAGEIROS_RESERVAS WHERE PASSAGEIRO = 3 AND ID_RESERVA = 2;
DELETE FROM PASSAGEIROS_RESERVAS WHERE PASSAGEIRO = 3 AND ID_RESERVA = 3;