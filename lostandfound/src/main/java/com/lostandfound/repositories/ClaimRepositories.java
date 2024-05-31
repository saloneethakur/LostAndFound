package com.lostandfound.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lostandfound.entities.Claim;

@Repository
public interface ClaimRepositories extends JpaRepository<Claim, Integer> {

}
