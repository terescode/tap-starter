package app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TREE")
public class TreeImpl implements Tree {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  
  @Column(name="SCI_NAME")
  private String scientificName;

  @Column(name="COMMON_NAME")
  private String commonName;
  
  @Column(name="BARK_TYPE")
  private String barkType;
  
  @Column(name="LEAF_TYPE")
  private String leafType;
  
  @Column(name="FRUIT_TYPE")
  private String fruitType;
  
  
  public Long getId() {
    return id;
  }
  public void setId(Long id) {
    this.id = id;
  }
  public String getScientificName() {
    return scientificName;
  }
  public void setScientificName(String scientificName) {
    this.scientificName = scientificName;
  }
  public String getCommonName() {
    return commonName;
  }
  public void setCommonName(String name) {
    this.commonName = name;
  }
  public String getBarkType() {
    return barkType;
  }
  public void setBarkType(String barkType) {
    this.barkType = barkType;
  }
  public String getLeafType() {
    return leafType;
  }
  public void setLeafType(String leafType) {
    this.leafType = leafType;
  }
  public String getFruitType() {
    return fruitType;
  }
  public void setFruitType(String fruitType) {
    this.fruitType = fruitType;
  }

}
