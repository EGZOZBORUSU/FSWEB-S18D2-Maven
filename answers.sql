INSERT INTO tur (ad) VALUES ('Biyografi');
INSERT INTO yazar (ad, soyad) VALUES ('Nurettin', 'Belek');
UPDATE ogrenci SET sinif = '10C' WHERE sinif = '10B';
UPDATE kitap SET puan = puan + 5;
DELETE FROM yazar WHERE ad = 'Mehmet';
INSERT INTO tur (ad) VALUES ('Kişisel Gelişim');
UPDATE kitap SET turno = (SELECT turno FROM tur WHERE ad = 'Kişisel Gelişim') WHERE ad = 'Benim Üniversitelerim';

CREATE OR REPLACE FUNCTION ogrencilistesi()
RETURNS SETOF ogrenci AS $$
BEGIN
    RETURN QUERY SELECT * FROM ogrenci;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE ekle(k_ad character varying, k_puan integer, k_yazarno bigint, k_turno bigint)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO kitap(ad, puan, yazarno, turno) VALUES(k_ad, k_puan, k_yazarno, k_turno);
END;
$$;

CREATE OR REPLACE PROCEDURE sil(o_no bigint)
LANGUAGE plpgsql AS $$
BEGIN
    DELETE FROM ogrenci WHERE ogrno = o_no;
END;
$$;
