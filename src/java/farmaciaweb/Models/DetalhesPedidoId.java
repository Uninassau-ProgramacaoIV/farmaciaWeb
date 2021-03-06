package farmaciaweb.Models;
// Generated 22/11/2014 09:20:01 by Hibernate Tools 3.6.0



/**
 * DetalhesPedidoId generated by hbm2java
 */
public class DetalhesPedidoId  implements java.io.Serializable {


     private int codigoPedido;
     private int codigoProduto;

    public DetalhesPedidoId() {
    }

    public DetalhesPedidoId(int codigoPedido, int codigoProduto) {
       this.codigoPedido = codigoPedido;
       this.codigoProduto = codigoProduto;
    }
   
    public int getCodigoPedido() {
        return this.codigoPedido;
    }
    
    public void setCodigoPedido(int codigoPedido) {
        this.codigoPedido = codigoPedido;
    }
    public int getCodigoProduto() {
        return this.codigoProduto;
    }
    
    public void setCodigoProduto(int codigoProduto) {
        this.codigoProduto = codigoProduto;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof DetalhesPedidoId) ) return false;
		 DetalhesPedidoId castOther = ( DetalhesPedidoId ) other; 
         
		 return (this.getCodigoPedido()==castOther.getCodigoPedido())
 && (this.getCodigoProduto()==castOther.getCodigoProduto());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getCodigoPedido();
         result = 37 * result + this.getCodigoProduto();
         return result;
   }   


}


