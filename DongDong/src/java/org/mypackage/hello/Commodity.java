/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

/**
 *
 * @author elvis
 */
public class Commodity {
    private String name;
    private int number;
    private float price;
    
    public Commodity(){
    }
    
    public void setName(String name){
        this.name=name;
    }
    
    public String getName(){
        return name;
    }
    
    public void setPrice(float price){
        this.price=price;
    }
    
    public float getPrice(){
        return price;
    }
    
    public void setNumber(int number){
        this.number=number;
    }
    public int getNumber(){
        return number;
    }
}
