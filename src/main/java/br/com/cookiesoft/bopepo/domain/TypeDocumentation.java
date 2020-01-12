package br.com.cookiesoft.bopepo.domain;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "type_documentation")
public class TypeDocumentation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TypeDocumentation)) return false;
        TypeDocumentation that = (TypeDocumentation) o;
        return getId().equals(that.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId());
    }
}
