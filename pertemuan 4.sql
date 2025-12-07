SELECT NamaMahasiswa FROM Mahasiswa;
GO

SELECT M.NamaMahasiswa, MK.NamaMK
FROM Mahasiswa M
CROSS JOIN MataKuliah MK

SELECT * FROM Dosen
SELECT * FROM Ruangan

SELECT D.NamaDosen, R.KodeRuangan
FROM Dosen D
CROSS JOIN Ruangan R

SELECT * FROM Mahasiswa
SELECT * FROM KRS

DROP 

INSERT INTO Mahasiswa (NamaMahasiswa, Prodi, Angkatan) VALUES ('Ocky Yudha P','Teknik Informatika','2025');
GO

SELECT M.NamaMahasiswa, K.MatakuliahID
FROM Mahasiswa M 
LEFT JOIN KRS K ON M.MahasiswaID = K.MahasiswaID

SELECT * FROM MataKuliah
SELECT * FROM Mahasiswa

SELECT MK.NamaMK, JK.Hari
FROM MataKuliah MK
LEFT JOIN JadwalKuliah JK ON MK.MataKuliahID = JK.MataKuliahID

SELECT MK.NamaMK, JK.Hari
FROM MataKuliah MK
RIGHT JOIN JadwalKuliah JK ON MK.MataKuliahID = JK.MataKuliahID

SELECT * FROM Ruangan
SELECT * FROM JadwalKuliah

SELECT R.KodeRuangan, JK.Hari, JK.JamMulai, JK.JamSelesai
FROM Ruangan R
LEFT JOIN JadwalKuliah JK ON R.RuanganID = JK.RuanganID

SELECT R.KodeRuangan, JK.Hari, JK.JamMulai, JK.JamSelesai
FROM Ruangan R
RIGHT JOIN JadwalKuliah JK ON R.RuanganID = JK.RuanganID

SELECT R.KodeRuangan, JK.Hari
FROM JadwalKuliah JK
INNER JOIN Ruangan R ON R.RuanganID = JK.RuanganID

SELECT M.NamaMahasiswa, KS.KRSID
FROM Mahasiswa M
INNER JOIN KRS KS ON M.MahasiswaID = KS.MahasiswaID

SELECT MK.NamaMK, JK.Hari
FROM MataKuliah MK
INNER JOIN JadwalKuliah JK ON MK.MataKuliahID = JK.MataKuliahID

SELECT MK.NamaMK, JK.Hari
FROM MataKuliah MK
INNER JOIN JadwalKuliah JK ON MK.MataKuliahID = JK.MataKuliahID

SELECT M.NamaMahasiswa, N.NilaiAkhir
FROM Mahasiswa M 
INNER JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
INNER JOIN MataKuliah MK ON MK.MataKuliahID = N.MataKuliahID

SELECT JK.Hari, MK.NamaMK, D.NamaDosen, R.KodeRuangan
FROM JadwalKuliah JK 
INNER JOIN MataKuliah MK ON JK.MataKuliahID = MK.MataKuliahID
INNER JOIN Dosen D ON D.DosenID = MK.DosenID
INNER JOIN Ruangan R ON R.RuanganID = JK.RuanganID