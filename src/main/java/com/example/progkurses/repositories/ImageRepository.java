package com.example.progkurses.repositories;

import com.example.progkurses.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image,Long> {

}
