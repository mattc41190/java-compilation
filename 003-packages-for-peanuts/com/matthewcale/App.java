package com.matthewcale;

import com.circus.cotton_candy.CottonCandy;
import com.circus.peanut.Peanut;

public class App {
    public static void main(String[] args) {
        CottonCandy cottonCandy = new CottonCandy();
        Peanut peanut = new Peanut();

        System.out.printf("Here we are the circus%n");
        
        System.out.printf("Look a peanut I wonder how salty it is.%n");
        System.out.printf("Peanut:%n");
        peanut.explainSaltiness("a big ol bowl of salt");

        System.out.printf("Look some cotton candy I wonder how pink it is.%n");
        System.out.printf("Cotton Candy:%n");
        cottonCandy.lookPink("bright and beautiful");
    }
}