package pe.com.siam.model.pojo;
// Generated 06/06/2015 01:03:46 PM by Hibernate Tools 4.3.1



/**
 * TdisponibilidadcitamedicaId generated by hbm2java
 */
public class TdisponibilidadcitamedicaId  implements java.io.Serializable {


     private int tdisCodDispo;
     private int tmedCodMedico;

    public TdisponibilidadcitamedicaId() {
    }

    public TdisponibilidadcitamedicaId(int tdisCodDispo, int tmedCodMedico) {
       this.tdisCodDispo = tdisCodDispo;
       this.tmedCodMedico = tmedCodMedico;
    }
   
    public int getTdisCodDispo() {
        return this.tdisCodDispo;
    }
    
    public void setTdisCodDispo(int tdisCodDispo) {
        this.tdisCodDispo = tdisCodDispo;
    }
    public int getTmedCodMedico() {
        return this.tmedCodMedico;
    }
    
    public void setTmedCodMedico(int tmedCodMedico) {
        this.tmedCodMedico = tmedCodMedico;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TdisponibilidadcitamedicaId) ) return false;
		 TdisponibilidadcitamedicaId castOther = ( TdisponibilidadcitamedicaId ) other; 
         
		 return (this.getTdisCodDispo()==castOther.getTdisCodDispo())
 && (this.getTmedCodMedico()==castOther.getTmedCodMedico());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getTdisCodDispo();
         result = 37 * result + this.getTmedCodMedico();
         return result;
   }   


}


