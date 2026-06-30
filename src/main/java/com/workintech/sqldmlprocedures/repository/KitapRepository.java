package com.workintech.sqldmlprocedures.repository;

import com.workintech.sqldmlprocedures.entity.Kitap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface KitapRepository extends JpaRepository<Kitap, Long> {
    @Transactional
    @Modifying
    @Query(value = "INSERT INTO kitap (ad, puan, yazarno, turno) VALUES (?1, ?2, ?3, ?4)", nativeQuery = true)
    void addNewKitap(String ad, Integer puan, Integer yazarno, Integer turno);

    Kitap findByAd(String ad);
}
