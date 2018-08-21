package com.lv.face;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lv.persisntece.Product;

@Repository
@Transactional
public interface ProductsFace extends JpaRepository<Product, Long> {

}
