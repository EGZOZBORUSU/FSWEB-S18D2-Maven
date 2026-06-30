CREATE TABLE ogrenci (ogrno SERIAL PRIMARY KEY, ad VARCHAR(45) NOT NULL, soyad VARCHAR(45) NOT NULL, cinsiyet VARCHAR(1) NOT NULL, sinif VARCHAR(3), puan INTEGER, dtarih VARCHAR(20));
CREATE TABLE islem (islemno SERIAL PRIMARY KEY, ogrno BIGINT NOT NULL, kitapno BIGINT NOT NULL, atarih VARCHAR(20) NOT NULL, vtarih VARCHAR(20));
CREATE TABLE kitap (kitapno SERIAL PRIMARY KEY, ad VARCHAR(45) NOT NULL, puan INTEGER NOT NULL, yazarno BIGINT NOT NULL, turno BIGINT NOT NULL);
CREATE TABLE yazar (yazarno SERIAL PRIMARY KEY, ad VARCHAR(45) NOT NULL, soyad VARCHAR(45) NOT NULL);
CREATE TABLE tur (turno SERIAL PRIMARY KEY, ad VARCHAR(45) NOT NULL);

INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Hülya', 'Yiğit', 'K', '10A', 0, '1990-04-08 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Niyazi', 'Sevinç', 'E', '9B', 0,'1990-11-11 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('İsmail', 'Sevinç', 'E', '10C', 0,'1990-04-17 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Kenan', 'Emin', 'E', '9A', 0,'1988-02-23 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Sema', 'Bakır', 'K', '9B', 0,'1990-04-07 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Deniz', 'Kara', 'E', '9C', 0,'1989-07-21 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Betül', 'Coşkun', 'K', '11A', 0,'1990-01-10 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Sema', 'Rüzgar', 'K', '9C', 0,'1989-11-14 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Fadime', 'Dönmez', 'K', '9A', 0,'1989-09-11 00:00:00');
INSERT INTO ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih) VALUES('Rıza', 'Koç', 'E', '10C', 0,'1990-01-26 00:00:00');

INSERT INTO tur(ad) VALUES('Dram'), ('Komedi'), ('Roman'), ('Hikaye'), ('Araştırma'), ('Biyografi'), ('Kişisel Gelişim');

INSERT INTO yazar(ad, soyad) VALUES('Leyla', 'Çelik'), ('Zeynep', 'Emin'), ('Ali', 'Yazar'), ('Deniz', 'Akpınar'), ('Nurettin', 'Belek');

INSERT INTO kitap(ad, puan, yazarno, turno) VALUES('Abdülhamidin Kurtlarla Dansı', 27, 1, 1), ('Ablamı Nereye Kaçırdılar', 32, 1, 2), ('Anayurttan Anadoluya', 24, 2, 3), ('Anneannem Gelin Oldu', 20, 2, 4), ('Antik Acılar', 33, 3, 3), ('Aşk Ve Öbür Cinler', 23, 3, 4), ('Aşksız İnsanlar', 23, 4, 5), ('Atuan Mezarları', 21, 4, 2), ('Bahar İsyancıdır', 30, 5, 3), ('Benim Üniversitelerim', 20, 5, 7), ('Bir Gemide', 21, 1, 3), ('Bir Ses Böler Geceyi', 19, 3, 2);
