USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[inserare]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[inserare]
AS
begin
	
	/*Avioane*/

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Junkers','Focke-Wulf');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Junkers','Focke-Wulf');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('BMW','Messerschmitt');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Rolls-Royce','Spitfire');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Rolls-Royce','Wellington');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Klimov','I-16');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Energia','Buran');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Mitsubishi','F-2');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Klimov','Myasishchev ');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Dobrynin','Myasishchev ');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('BMW','Ju-88 ');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Daimler','Dornier-217 ');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Junkers','Henkel ');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Energia','Polyus');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Alfa-Romeo','Savoia');

	INSERT INTO Avion (Motor,NumeA)
	VALUES ('Alfa-Romeo','Aermacchi');
	

	/*Motoare*/
	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Alfa-Romeo','15');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Junkers','1');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Junkers','2');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Junkers','13');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Energia','14');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('BMW','3');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('BMW','11');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Rolls-Royce','4');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Rolls-Royce','5');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Klimov','6');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Klimov','9');

	INSERT INTO Motor (NumeM)
	VALUES ('Pratt-Whitney');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Energia','7');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Mitsubishi','8');

	INSERT INTO Motor (NumeM,Acod)
	VALUES ('Dobrynin','10');


	/*Armament*/
	INSERT INTO Armament (Tip)
	VALUES ('20');

	INSERT INTO Armament (Tip)
	VALUES ('7');

	INSERT INTO Armament (Tip)
	VALUES ('37');

	INSERT INTO Armament (Tip)
	VALUES ('12');

	INSERT INTO Armament (Tip)
	VALUES ('500');

	INSERT INTO Armament (Tip)
	VALUES ('250');

	INSERT INTO Armament (Tip)
	VALUES ('1000');

	/*LEegAA*/

	INSERT INTO LegAA(codA,codAr)
	VALUES ('1','4')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('2','4')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('3','1')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('4','1')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('5','5')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('6','6')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('3','3')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('1','1')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('8','6')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('8','7')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('13','3')

	INSERT INTO LegAA(codA,codAr)
	VALUES ('14','1')

	/*Tari*/
	INSERT INTO Tara (NumeT)
	VALUES ('Germania');

	INSERT INTO Tara (NumeT)
	VALUES ('UK');

	INSERT INTO Tara (NumeT)
	VALUES ('Rusia');

	INSERT INTO Tara (NumeT)
	VALUES ('USA');

	INSERT INTO Tara (NumeT)
	VALUES ('Japonia');

	INSERT INTO Tara (NumeT)
	VALUES ('Italia');

	/*Fabrici*/
	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Horten','BFW','Berlin');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('deHavilland','ARC','Liverpool');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Polikarpov','FAN','Arkhangelsky');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Avro','ARC','London');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Bayerische','BFW','Frankfurt');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Nakajima','CHI','Fukuoka');

	INSERT INTO Fabrica (NumeF,Distribuitor,Locatie)
	VALUES ('Wulf','FAN','Berlin');

	/*Locatii*/
	INSERT INTO Locatie(NumeL)
	VALUES ('Liverpool')

	INSERT INTO Locatie(NumeL)
	VALUES ('Frankfurt')

	INSERT INTO Locatie(NumeL)
	VALUES ('London')

	INSERT INTO Locatie(NumeL)
	VALUES ('Arkhangelsky')

	INSERT INTO Locatie(NumeL)
	VALUES ('Fukuoka')

	INSERT INTO Locatie(NumeL)
	VALUES ('Berlin')

	INSERT INTO Locatie(NumeL)
	VALUES ('Napoli')

	/*Distribuitori*/
	INSERT INTO Distribuitor(NumeD)
	VALUES ('BFW')

	INSERT INTO Distribuitor(NumeD)
	VALUES ('FAN')

	INSERT INTO Distribuitor(NumeD)
	VALUES ('CHI')

	INSERT INTO Distribuitor(NumeD)
	VALUES ('ARC')

	INSERT INTO Distribuitor(NumeD)
	VALUES ('RO')

	/*LegAT*/
	INSERT INTO LegAT(codA,codT)
	VALUES ('1','3')

	INSERT INTO LegAT(codA,codT)
	VALUES ('2','3')

	INSERT INTO LegAT(codA,codT)
	VALUES ('4','2')

	INSERT INTO LegAT(codA,codT)
	VALUES ('4','1')

	INSERT INTO LegAT(codA,codT)
	VALUES ('3','4')


end
GO
