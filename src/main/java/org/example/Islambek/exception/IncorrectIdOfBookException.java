package org.example.Islambek.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.client.HttpClientErrorException;

public class IncorrectIdOfBookException extends ArithmeticException{

    public IncorrectIdOfBookException() {
        super("Incorrect id");
    }

    public IncorrectIdOfBookException(String s) {
        super(s);
    }
}
