package br.com.cookiesoft.bopepo.controller;

import br.com.cookiesoft.bopepo.domain.TypeDocumentation;
import br.com.cookiesoft.bopepo.service.TypeDocumentationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.annotation.RequestScope;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@RequestScope
@Controller
public class TypeDocumentationController {

    @Autowired
    private TypeDocumentationService typeDocumentationService;

    private List<TypeDocumentation> allTypeDocumentation;

    public TypeDocumentationController(){
        allTypeDocumentation = new ArrayList<>();
    }

    @PostConstruct
    public void init(){
        allTypeDocumentation = typeDocumentationService.todos();

        System.out.println("Quantidade Tipo Documento: " + allTypeDocumentation.size());

        for(TypeDocumentation typeDocumentation: allTypeDocumentation){

            System.out.println("Nome:" + typeDocumentation.getName());

        }


    }

    public List<TypeDocumentation> getAllTypeDocumentation() {
        return allTypeDocumentation;
    }

}
