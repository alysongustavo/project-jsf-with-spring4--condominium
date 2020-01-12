package br.com.cookiesoft.bopepo.service;

import br.com.cookiesoft.bopepo.domain.TypeDocumentation;
import br.com.cookiesoft.bopepo.repository.TypeDocumentationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeDocumentationService {

    @Autowired
    private TypeDocumentationRepository typeDocumentationRepository;

    public List<TypeDocumentation> todos(){
        return typeDocumentationRepository.allTypeDocumentation();
    }
}
