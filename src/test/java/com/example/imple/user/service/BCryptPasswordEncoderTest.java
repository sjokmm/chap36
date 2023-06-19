package com.example.imple.user.service;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
public class BCryptPasswordEncoderTest {


    @Test
    void encode() {
        var encoder = new BCryptPasswordEncoder();
        var pass = encoder.encode("1234");
        System.out.println(pass);
 
        
//        $2a$10$70zF6wK3/1juTrUhAOAWJuU8YLhNNpJ2xJwju1VLtji4RSC79FTvG
//        $2a$10$J39qvnIkvLmfPffp/oxoD.FK9qR5/cyAFiJ8FFzh8eOd57e/ER6Mm
    }
}
