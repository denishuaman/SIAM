package pe.com.siam.model.pojo;
// Generated 06/06/2015 01:03:46 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Tdisponibilidadcitamedica generated by hbm2java
 */
public class Tdisponibilidadcitamedica  implements java.io.Serializable {


     private TdisponibilidadcitamedicaId id;
     private Tdisponibilidad tdisponibilidad;
     private Tespecialidad tespecialidad;
     private Tmedico tmedico;
     private int capacidad;
     private Set tcitamedicas = new HashSet(0);

    public Tdisponibilidadcitamedica() {
    }

	
    public Tdisponibilidadcitamedica(TdisponibilidadcitamedicaId id, Tdisponibilidad tdisponibilidad, Tespecialidad tespecialidad, Tmedico tmedico, int capacidad) {
        this.id = id;
        this.tdisponibilidad = tdisponibilidad;
        this.tespecialidad = tespecialidad;
        this.tmedico = tmedico;
        this.capacidad = capacidad;
    }
    public Tdisponibilidadcitamedica(TdisponibilidadcitamedicaId id, Tdisponibilidad tdisponibilidad, Tespecialidad tespecialidad, Tmedico tmedico, int capacidad, Set tcitamedicas) {
       this.id = id;
       this.tdisponibilidad = tdisponibilidad;
       this.tespecialidad = tespecialidad;
       this.tmedico = tmedico;
       this.capacidad = capacidad;
       this.tcitamedicas = tcitamedicas;
    }
   
    public TdisponibilidadcitamedicaId getId() {
        return this.id;
    }
    
    public void setId(TdisponibilidadcitamedicaId id) {
        this.id = id;
    }
    public Tdisponibilidad getTdisponibilidad() {
        return this.tdisponibilidad;
    }
    
    public void setTdisponibilidad(Tdisponibilidad tdisponibilidad) {
        this.tdisponibilidad = tdisponibilidad;
    }
    public Tespecialidad getTespecialidad() {
        return this.tespecialidad;
    }
    
    public void setTespecialidad(Tespecialidad tespecialidad) {
        this.tespecialidad = tespecialidad;
    }
    public Tmedico getTmedico() {
        return this.tmedico;
    }
    
    public void setTmedico(Tmedico tmedico) {
        this.tmedico = tmedico;
    }
    public int getCapacidad() {
        return this.capacidad;
    }
    
    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }
    public Set getTcitamedicas() {
        return this.tcitamedicas;
    }
    
    public void setTcitamedicas(Set tcitamedicas) {
        this.tcitamedicas = tcitamedicas;
    }




}


