package de.ite.hello.service;

import de.ite.hello.entity.Hello;
import de.ite.hello.repository.HelloRepository;
import org.springframework.stereotype.Service;

@Service
public class HelloService {

    private final HelloRepository helloRepository;

    public HelloService(HelloRepository helloRepository) {
        this.helloRepository = helloRepository;
    }

    public String generateHelloAndSaveInDatabase(String name) {
        String helloString = "Hallo " + name;
        this.helloRepository.save(new Hello(helloString));
        return helloString;
    }
}
