package springjpa;

import org.apache.commons.lang3.ThreadUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ApplicationJPA {

    public static void main(String[] args) throws Exception {

        System.out.println("Start waiting ... ");
        Thread.sleep(15*1000);
        System.out.println("DONE in wait 15s - Start App ... ");

        SpringApplication.run(ApplicationJPA.class, args);
    }
}
