package farmaciaweb.Models;
// Generated 22/11/2014 09:20:01 by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Produtos generated by hbm2java
 */
public class Produtos  implements java.io.Serializable {


     private int codigo;
     private Fornecedores fornecedores;
     private String nome;
     private Date validade;
     private String categoria;
     private Integer quantidade;
     private Long preco;
     private Set<DetalhesPedido> detalhesPedidos = new HashSet<DetalhesPedido>(0);

    public Produtos() {
    }

	
    public Produtos(int codigo) {
        this.codigo = codigo;
    }
    public Produtos(int codigo, Fornecedores fornecedores, String nome, Date validade, String categoria, Integer quantidade, Long preco, Set<DetalhesPedido> detalhesPedidos) {
       this.codigo = codigo;
       this.fornecedores = fornecedores;
       this.nome = nome;
       this.validade = validade;
       this.categoria = categoria;
       this.quantidade = quantidade;
       this.preco = preco;
       this.detalhesPedidos = detalhesPedidos;
    }
   
    public int getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    public Fornecedores getFornecedores() {
        return this.fornecedores;
    }
    
    public void setFornecedores(Fornecedores fornecedores) {
        this.fornecedores = fornecedores;
    }
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    public Date getValidade() {
        return this.validade;
    }
    
    public void setValidade(Date validade) {
        this.validade = validade;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public Integer getQuantidade() {
        return this.quantidade;
    }
    
    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
    public Long getPreco() {
        return this.preco;
    }
    
    public void setPreco(Long preco) {
        this.preco = preco;
    }
    public Set<DetalhesPedido> getDetalhesPedidos() {
        return this.detalhesPedidos;
    }
    
    public void setDetalhesPedidos(Set<DetalhesPedido> detalhesPedidos) {
        this.detalhesPedidos = detalhesPedidos;
    }




}


