package app;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import model.Produto;

public class Teste {
    
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
        EntityManager em = emf.createEntityManager();
        
        /* Criação de uma entidade - CREATE */
        Produto u0 = new Produto();
        u0.setNome("Batata");
		u0.setMarca("potato");
        u0.setUnidade("Kilo");
        u0.setPreco(22.0);
        u0.setQuantidade(2);
        u0.setDescricao("É uma batata");
        u0.setId(15);
        em.getTransaction().begin();
        em.persist(u0);
        em.getTransaction().commit();
        /*
        /* Recuperação de uma Entidade - RETRIEVE */
        /* por Id:*/
        
        
        
        em.close();
        emf.close();        
    }
}