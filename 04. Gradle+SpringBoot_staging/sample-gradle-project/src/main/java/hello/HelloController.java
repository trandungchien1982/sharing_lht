package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    
	@Value("${message.test}")
	private String message;
	
	
    @RequestMapping("/")
    public String index() {
        return "<h1><span style='color:red'>Greetings</span> from Spring Boot!</h1><br/><h2>" + message + "</h2>"
        		+ "<h3>Sample line 01<br/>"
        		+ "Sample line 02</h3>";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "<h1><span style='color:lightgreen'>Welcome</span> to Spring Boot!</h1><br/><h2>" + message + "</h2>"
        		+ "<h3>Line 01<br/>"
        		+ "Line 2</h3>";
    }

    @RequestMapping("/dashboard")
    public String dashboard() {
        return "<h1><span style='color:blue'>Dashboard</span> of project Spring Boot!</h1><br/><h2>" + message + "</h2>"
        		+ "<h3>Dashboard - Line 01<br/>"
        		+ "Dashboard - Line 2</h3>";
    }
    
}
