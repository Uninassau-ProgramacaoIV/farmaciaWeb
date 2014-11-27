package farmaciaweb.Models;
// Generated 22/11/2014 09:20:01 by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Pedidos generated by hbm2java
 */
public class Pedidos  implements java.io.Serializable {


     private int codigo;
     private Clientes clientes;
     private Funcionarios funcionarios;
     private Date dataPedido;
     private Long valorTotal;
     private Integer quantidadeTotal;
     private String statusPedido;
     private Set<DetalhesPedido> detalhesPedidos = new HashSet<DetalhesPedido>(0);

    public Pedidos() {
    }

	
    public Pedidos(int codigo, Clientes clientes, Funcionarios funcionarios) {
        this.codigo = codigo;
        this.clientes = clientes;
        this.funcionarios = funcionarios;
    }
    public Pedidos(int codigo, Clientes clientes, Funcionarios funcionarios, Date dataPedido, Long valorTotal, Integer quantidadeTotal, String statusPedido, Set<DetalhesPedido> detalhesPedidos) {
       this.codigo = codigo;
       this.clientes = clientes;
       this.funcionarios = funcionarios;
       this.dataPedido = dataPedido;
       this.valorTotal = valorTotal;
       this.quantidadeTotal = quantidadeTotal;
       this.statusPedido = statusPedido;
       this.detalhesPedidos = detalhesPedidos;
    }
   
    public int getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    public Clientes getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Clientes clientes) {
        this.clientes = clientes;
    }
    public Funcionarios getFuncionarios() {
        return this.funcionarios;
    }
    
    public void setFuncionarios(Funcionarios funcionarios) {
        this.funcionarios = funcionarios;
    }
    public Date getDataPedido() {
        return this.dataPedido;
    }
    
    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }
    public Long getValorTotal() {
        return this.valorTotal;
    }
    
    public void setValorTotal(Long valorTotal) {
        this.valorTotal = valorTotal;
    }
    public Integer getQuantidadeTotal() {
        return this.quantidadeTotal;
    }
    
    public void setQuantidadeTotal(Integer quantidadeTotal) {
        this.quantidadeTotal = quantidadeTotal;
    }
    public String getStatusPedido() {
        return this.statusPedido;
    }
    
    public void setStatusPedido(String statusPedido) {
        this.statusPedido = statusPedido;
    }
    public Set<DetalhesPedido> getDetalhesPedidos() {
        return this.detalhesPedidos;
    }
    
    public void setDetalhesPedidos(Set<DetalhesPedido> detalhesPedidos) {
        this.detalhesPedidos = detalhesPedidos;
    }




}

