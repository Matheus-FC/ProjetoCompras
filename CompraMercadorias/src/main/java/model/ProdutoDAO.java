package model;

import model.Produto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
/**
 *
 * @author fabriciogmc
 */
public class ProdutoDAO {
    //public Produto insert(Produto produto);
    //public Produto findById(int id);
    //public Produto findByNomeProduto(String nomeProduto);
    //public Produto findByName(String name);
    public List<Produto> findAll(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT p FROM produto p");
        List<Produto> produtos = query.getResultList();
        em.close();
        emf.close();  
        return produtos;
    }
    //public Produto update(Produto ProdutoAnt, Produto ProdutoAt);
    //public boolean delete(Produto produto);
    //public boolean delete(int id);   
}