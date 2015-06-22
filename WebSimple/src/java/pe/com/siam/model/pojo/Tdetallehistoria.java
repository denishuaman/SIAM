package pe.com.siam.model.pojo;
// Generated 06/06/2015 01:03:46 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Tdetallehistoria generated by hbm2java
 */
public class Tdetallehistoria  implements java.io.Serializable {


     private TdetallehistoriaId id;
     private Thistoriaclinica thistoriaclinica;
     private Set texamenmedicosolicitados = new HashSet(0);
     private Tobservacionmedica tobservacionmedica;
     private Ttriaje ttriaje;

    public Tdetallehistoria() {
    }

	
    public Tdetallehistoria(TdetallehistoriaId id, Thistoriaclinica thistoriaclinica) {
        this.id = id;
        this.thistoriaclinica = thistoriaclinica;
    }
    public Tdetallehistoria(TdetallehistoriaId id, Thistoriaclinica thistoriaclinica, Set texamenmedicosolicitados, Tobservacionmedica tobservacionmedica, Ttriaje ttriaje) {
       this.id = id;
       this.thistoriaclinica = thistoriaclinica;
       this.texamenmedicosolicitados = texamenmedicosolicitados;
       this.tobservacionmedica = tobservacionmedica;
       this.ttriaje = ttriaje;
    }
   
    public TdetallehistoriaId getId() {
        return this.id;
    }
    
    public void setId(TdetallehistoriaId id) {
        this.id = id;
    }
    public Thistoriaclinica getThistoriaclinica() {
        return this.thistoriaclinica;
    }
    
    public void setThistoriaclinica(Thistoriaclinica thistoriaclinica) {
        this.thistoriaclinica = thistoriaclinica;
    }
    public Set getTexamenmedicosolicitados() {
        return this.texamenmedicosolicitados;
    }
    
    public void setTexamenmedicosolicitados(Set texamenmedicosolicitados) {
        this.texamenmedicosolicitados = texamenmedicosolicitados;
    }
    public Tobservacionmedica getTobservacionmedica() {
        return this.tobservacionmedica;
    }
    
    public void setTobservacionmedica(Tobservacionmedica tobservacionmedica) {
        this.tobservacionmedica = tobservacionmedica;
    }
    public Ttriaje getTtriaje() {
        return this.ttriaje;
    }
    
    public void setTtriaje(Ttriaje ttriaje) {
        this.ttriaje = ttriaje;
    }




}


