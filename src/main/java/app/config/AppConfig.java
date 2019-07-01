package app.config;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.jndi.JndiTemplate;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import app.data.TreeDao;
import app.data.TreeDaoImpl;
import app.services.HttpBinService;
import app.services.UrlUtils;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"app.controllers"})
public class AppConfig implements WebMvcConfigurer {

  @Bean
  public ViewResolver viewResolver() {
    return new InternalResourceViewResolver("/WEB-INF/jsp/html/", ".jsp");
  }
  
  @Bean
  public UrlUtils urlUtils() {
    return new UrlUtils();
  }

  @Bean
  public RestTemplate restTemplate() {
    RestTemplate restTemplate = new RestTemplate();
    restTemplate.getMessageConverters().add(
        new MappingJackson2HttpMessageConverter()
    );
    return restTemplate;
  }
  
  @Bean
  public HttpBinService httpBinServer() {
    return new HttpBinService(
        urlUtils(),
        restTemplate()
    );
  }
  
  @Bean
  public DataSource dataSource() throws NamingException {
      return (DataSource) new JndiTemplate().lookup(
          "java:jboss/datasources/PrimaryDS"
      );
  }
  
  @Bean
  public LocalContainerEntityManagerFactoryBean entityManagerFactory()
    throws NamingException {
    /*EntityManagerFactory entityManagerFactory = 
        Persistence.createEntityManagerFactory("primary");
    return entityManagerFactory;*/
    LocalContainerEntityManagerFactoryBean entityManagerFactory =
        new LocalContainerEntityManagerFactoryBean();
        
    entityManagerFactory.setDataSource(dataSource());
    
    // Classpath scanning of @Component, @Service, etc annotated class
    entityManagerFactory.setPackagesToScan("app.model");
    
    // Vendor adapter
    HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
    entityManagerFactory.setJpaVendorAdapter(vendorAdapter);
    
    // Hibernate properties
    Properties additionalProperties = new Properties();
    additionalProperties.put("hibernate.show_sql", false);
    additionalProperties.put("hibernate.hbm2ddl.auto", "create-drop");
    entityManagerFactory.setJpaProperties(additionalProperties);
    
    return entityManagerFactory;
  }
  
  @Bean
  public TreeDao treeDao() {
    return new TreeDaoImpl();
  }
  
  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry
        .addResourceHandler("/assets/**")
        .addResourceLocations("/assets/");
    registry.setOrder(-1);
  }
}
