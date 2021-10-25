/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Larry
 */
public class Data {
    public int dia;
    public int mes;
    public int ano;
    
    public Data(){ /*construtor sem parametros */
        dia = 1;
        mes = 1;
        ano = 2000;
    }
    
    public Data(int dia, int mes, int ano){
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    
    public String getData(){ /* metodo para exibir as inf do ricardo */
        String data = "";
        if(dia<10){
            data += "0";
            data += dia + "/";
        }
        if(mes<10){
            data += "0";
            data += mes + "/";
            data += ano;
        }
        return data;
    }
}
