/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.farmaciaweb.dao.produto;

import java.util.Date;
/**
 *
 * @author Filipe
 */
public class ProdutoModel {
    
    private String _nome;
    private double _preco;
    private String _fabricante;
    private int _codigo;
    private String _categoria;
    private int _quantidade;
    private String _validade;

    public String getNome() {
        return _nome;
    }

    public void setNome(String _nome) {
        this._nome = _nome;
    }

    public double getPreco() {
        return _preco;
    }

    public void setPreco(double _preco) {
        this._preco = _preco;
    }

    public String getFabricante() {
        return _fabricante;
    }

    public void setFabricante(String _fabricante) {
        this._fabricante = _fabricante;
    }

    public int getCodigo() {
        return _codigo;
    }

    public void setCodigo(int _codigo) {
        this._codigo = _codigo;
    }

    public String getCategoria() {
        return _categoria;
    }

    public void setCategoria(String _categoria) {
        this._categoria = _categoria;
    }

    public int getQuantidade() {
        return _quantidade;
    }

    public void setQuantidade(int _quantidade) {
        this._quantidade = _quantidade;
    }

    public String getValidade() {
        return _validade;
    }

    public void setValidade(String _validade) {
        this._validade = _validade;
    }
}
