package app.controllers;

import java.util.Map;
import java.util.concurrent.Callable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import app.data.TreeDao;
import app.model.Tree;
import app.services.HttpBinService;

@Controller
public class HomeController {

  @Autowired
  private HttpBinService httpBinService;
  
  @Autowired
  private TreeDao treeDao;
  
  @GetMapping("/")
  public String home() {
    return "home";
  }
  
  @GetMapping("/test-for-echo")
  public ModelAndView echo(HttpServletRequest request) {
    ModelAndView mnv = new ModelAndView("echo");
    Map<String, Object> result = null;
    
    if (
        !request.getParameterMap().isEmpty() &&
        request.getParameter("Submit") != null
    ) {
      result = this.httpBinService.echoParams(
          request.getParameterMap()
      );
    }
    
    mnv.getModel().put("result", result);
    return mnv;
  }
  
  @GetMapping("/roll-the-bones")
  public ModelAndView roll(HttpServletRequest request) {
    ModelAndView mnv = new ModelAndView("roll");
    String result = null;
    
    if (
        !request.getParameterMap().isEmpty() &&
        request.getParameter("Submit") != null
    ) {
      result = this.httpBinService.rollTheBones();
    }
    
    mnv.getModel().put("result", result);
    return mnv;
  }
  
  @GetMapping("/the-trees")
  public Callable<ModelAndView> trees(HttpServletRequest request) {
    return () -> {
      ModelAndView mnv = new ModelAndView("trees");
      Tree[] result = null;
      
      if (
          !request.getParameterMap().isEmpty() &&
          request.getParameter("Submit") != null
      ) {
        result = this.treeDao.getTrees();
      }
      
      mnv.getModel().put("result", result);
      return mnv;
    };
  }
}
