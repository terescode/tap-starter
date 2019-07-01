package app.services;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public class UrlUtils {
  
  public String toQueryString(Map<String, String[]> params) {
    StringBuilder builder = new StringBuilder();
    int index = 0;
    try {
      for (String name : params.keySet()) {
        for (String value : params.get(name)) {
          if (index > 0) {
            builder.append("&");
          }
          builder.append(URLEncoder.encode(name, "UTF8"));
          builder.append("=");
          builder.append(URLEncoder.encode(value, "UTF8"));
          index += 1;
        }
      }
    } catch (UnsupportedEncodingException ignore) {
      // UTF-8 support is required per the JVM spec.
    }
    return builder.toString();
  }
  
}
