package com.door_store;

import com.wacky_math.Calculator;

public class Store {

    Calculator calculator;

    public Store() {
        this.calculator = new Calculator();
    }

    public void printPrice(Integer num) {
        Integer price = this.calculator.doMagic();
        System.out.printf("The price for %s doors is %s!%n", num, price);
    }
}