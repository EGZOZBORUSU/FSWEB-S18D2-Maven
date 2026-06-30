package com.workintech.sqldmlprocedures.repository;

import com.workintech.sqldmlprocedures.entity.Ogrenci;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

public interface OgrenciRepository extends JpaRepository<Ogrenci, Long> {
    @Query(value = "SELECT * FROM ogrenci", nativeQuery = true)
    List<Ogrenci> findAllOgrenci();

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM ogrenci WHERE ogrno = ?1", nativeQuery = true)
    void removeOgrenci(Long ogrno);

    List<Ogrenci> findBySinif(String sinif);
}
