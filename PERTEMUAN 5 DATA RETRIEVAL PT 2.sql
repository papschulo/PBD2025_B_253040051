select * from Dosen;
go

select NamaDosen from Dosen;
go

select * from MataKuliah;

select NamaDosen, Prodi from Dosen where Prodi = 'Informatika';

select D.NamaDosen
from Dosen D 
INNER JOIN MataKuliah MK on D.DosenID = Mk.DosenID
WHERE MK.NamaMK = 'Basis Data'

SELECT NamaDosen
FROM Dosen
WHERE DosenID = (
	SELECT DosenID
	FROM MataKuliah
	WHERE NamaMK ='Basis Data'
)

SELECT MK.NamaMK 
FROM MataKuliah MK
WHERE MK.DosenID = (
	SELECT Dosen.DosenID 
	FROM Dosen 
	WHERE Dosen.NamaDosen = 'Agus Hidayat, M.Kom'); 


select * from Nilai;

SELECT M.NamaMahasiswa
FROM Mahasiswa M
WHERE M.MahasiswaID IN (
	SELECT Nilai.MahasiswaID
	FROM Nilai
	WHERE Nilai.NilaiAkhir = 'A');

SELECT MK.NamaMK
FROM MataKuliah MK
WHERE MK.MataKuliahID IN (
	SELECT MataKuliahID
	FROM Nilai 
	WHERE Nilai.NilaiAkhir = 'A');

SELECT Prodi, TotalMhs
FROM (
	SELECT Prodi, COUNT(*) AS TotalMhs
	FROM Mahasiswa
	GROUP BY Prodi 
) AS HitungMhs
WHERE TotalMhs > 2;

WITH MhsTIF AS (
	SELECT * 
	FROM Mahasiswa
	WHERE Prodi = 'Informatika'
)

SELECT * FROM MhsTIF


select * from Mahasiswa

SELECT Prodi, TotalMhs
FROM (
	SELECT Prodi, COUNT(*) AS TotalMhs
	FROM Mahasiswa
	GROUP BY Prodi 
) AS HitungMhs
WHERE TotalMhs > 2;

WITH MhsProdi AS (
	SELECT Prodi, COUNT(*) AS TotalMhs
	FROM Mahasiswa
	GROUP BY Prodi
)

SELECT * from MhsProdi WHERE TotalMhs >2;

--SET OPERATOR
-- UNION MENGGABUNGKAN DAFTAR NAMA DOSEN DAN DAFTAR NAMA MAHASISWA

select NamaDosen from Dosen
UNION
select NamaMahasiswa from Mahasiswa;


select * from Ruangan

select KodeRuangan ,Kapasitas from Ruangan where Kapasitas>40
UNION
select KodeRuangan ,Kapasitas from Ruangan where Kapasitas<40;

--INTERSECT

select MahasiswaID from KRS
INTERSECT
select MahasiswaID from Mahasiswa

select MataKuliahID from MataKuliah
intersect
select MataKuliahID from Nilai
