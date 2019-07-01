package app.services;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.client.RestTemplate;

public class HttpBinService {

  private UrlUtils urlUtils;
  private RestTemplate restTemplate;
  
  public HttpBinService(
      UrlUtils queryUtils,
      RestTemplate restTemplate
  ) {
    this.urlUtils = queryUtils;
    this.restTemplate = restTemplate;
  }
  
  @SuppressWarnings("unchecked")
  public Map<String, Object> echoParams(Map<String, String[]> map) {
    HashMap<String, Object> result = 
        (HashMap<String, Object>)this.restTemplate.getForObject(
        "https://httpbin.org/get?" + this.urlUtils.toQueryString(map),
        HashMap.class
    );
    return (HashMap<String, Object>)result.get("args");
  }

  @SuppressWarnings("unchecked")
  public String rollTheBones() {
    HashMap<String, Object> result = 
        (HashMap<String, Object>)this.restTemplate.getForObject(
        "https://httpbin.org/uuid",
        HashMap.class
    );
    return (String)result.get("uuid");
  }
}
