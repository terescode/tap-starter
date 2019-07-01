package app.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import app.model.Tree;
import app.model.TreeImpl;

public class TreeDaoImpl implements TreeDao {

  private EntityManagerFactory emf;
  
  @PersistenceUnit
  public void setEntityManagerFactory(EntityManagerFactory emf) {
      this.emf = emf;
  }
  
  @Override
  public Tree[] getTrees() {
    try {
      EntityManager em = this.emf.createEntityManager();
      Query query = em.createQuery("from TreeImpl as T");
      List<TreeImpl> trees = (List<TreeImpl>)query.getResultList();
      if (trees == null) {
        return new TreeImpl[] {};
      }
      TreeImpl[] treesAry = new TreeImpl[trees.size()];
      return trees.toArray(treesAry);
    } catch (Exception exc) {
      throw exc;
    }
  }

}
