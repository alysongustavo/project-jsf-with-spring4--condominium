package br.com.cookiesoft.bopepo.repository;

import br.com.cookiesoft.bopepo.domain.TypeDocumentation;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class TypeDocumentationRepository
{

    @PersistenceContext
    private EntityManager entityManager;

    public List<TypeDocumentation> allTypeDocumentation(){

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<TypeDocumentation> criteriaQuery = criteriaBuilder.createQuery(TypeDocumentation.class);
        Root<TypeDocumentation> typeDocumentationRoot = criteriaQuery.from(TypeDocumentation.class);
        CriteriaQuery<TypeDocumentation> all = criteriaQuery.select(typeDocumentationRoot);
        TypedQuery<TypeDocumentation> allQuery = entityManager.createQuery(all);
        return allQuery.getResultList();

    }
}
