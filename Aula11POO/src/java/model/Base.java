/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Larry
 */
public class Base {
    private static ArrayList<Contato> contatosList;
    public static ArrayList<Contato> getContatosList(){
        if(contatosList == null){
            contatosList =new ArrayList<>();
            contatosList.add(new Contato("fulano","(13)99111-0001", new Data(1,1,2001)));
            contatosList.add(new Contato("beltrano","(13)99111-0002", new Data(2,2,2001)));
            contatosList.add(new Contato("cicrano","(13)99111-0003", new Data(3,3,2001)));
        }
        return contatosList;
    }
}
