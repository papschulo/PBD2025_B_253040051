--CARA MEMBUAT VARIABLE
--CARA PERTAMA
DECLARE @Nilai INT = 100;
PRINT @Nilai;

--CARA KEDUA
DECLARE @Nama CHAR(255)
SET @Nama = 'Ocky';
PRINT @Nama;

--Jika nilainya diatas 80
--MAKA TAMPILKAN 'LULUS'
--JIKA TIDAK MAKA TAMPILKAN 'TIDAK LULUS'
DECLARE @Nilai INT = 50;
IF @Nilai > 80 
	PRINT 'LULUS'
ELSE 
	PRINT 'TIDAK LULUS';

DECLARE @HARGABAR INT= 150000
PRINT @HARGABAR;
IF @HARGABAR > 100000
	PRINT 'MAHAL'
ELSE
	PRINT 'BELI';
--VIEW

--TANPA VIEW
SELECT * FROM Mahasiswa;
SELECT * FROM Nilai;

--MAHASISWA + NILAI
SELECT * FROM Mahasiswa M
INNER JOIN Nilai N
ON M.MahasiswaID = N.MahasiswaID;

--VIEW
CREATE OR ALTER VIEW vw_mahasiswanilai
AS 
SELECT M.NamaMahasiswa, M.Prodi, M.Angkatan, N.NilaiAkhir FROM Mahasiswa M
INNER JOIN Nilai N
ON M.MahasiswaID = N.MahasiswaID;

--CARA PANGGIL VIEW
SELECT * FROM vw_mahasiswanilai;

--LATIHAN 
CREATE OR ALTER VIEW vw_mahasiswasmt
AS 
SELECT M.NamaMahasiswa, K.Semester
FROM Mahasiswa M
INNER JOIN KRS K
ON M.MahasiswaID = K.MahasiswaID;

SELECT * FROM vw_mahasiswasmt

--STORED PROCEDURE
CREATE OR ALTER PROCEDURE sp_lihatmahasiswa
AS
BEGIN
	SELECT * FROM Mahasiswa
END

EXEC sp_lihatmahasiswa;

--SELECT * FROM Nilai
--DECLARE @nilainih CHAR = 'A'
--IF @nilainih = 'A'
--	SELECT NilaiAkhir FROM Nilai
--	PRINT 'LULUS'
--ELSE 
--	PRINT 'TIDAK LULUS';


CREATE OR ALTER PROCEDURE sp_nilai
AS 
BEGIN 
	DECLARE @nilaiakhir CHAR(1) = 'A';
	IF @nilaiakhir = 'A'
		SELECT M.NamaMahasiswa, N.NilaiAkhir FROM Mahasiswa M 
		INNER JOIN Nilai N 
		ON N.MahasiswaID = M.MahasiswaID
		WHERE N.NilaiAkhir = 'A';
	ELSE
		PRINT 'TIDAK LULUS';
END;

EXEC sp_nilai
