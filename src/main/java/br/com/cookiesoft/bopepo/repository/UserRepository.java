package br.com.cookiesoft.bopepo.repository;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class UserRepository {

    @PersistenceContext
    private EntityManager entityManager;

}
