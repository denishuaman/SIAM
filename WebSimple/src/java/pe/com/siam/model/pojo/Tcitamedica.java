package pe.com.siam.model.pojo;
// Generated 06/06/2015 01:03:46 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Tcitamedica generated by hbm2java
 */
public class Tcitamedica  implements java.io.Serializable {


     private TcitamedicaId id;
     private Tdisponibilidadcitamedica tdisponibilidadcitamedica;
     private Tpaciente tpaciente;
     private int numTurno;
     private int estadoPago;
     private int estadoAtencion;
     private Date fechaCitaProg;
     private Double costo;

    public Tcitamedica() {
    }

	
    public Tcitamedica(TcitamedicaId id, Tdisponibilidadcitamedica tdisponibilidadcitamedica, Tpaciente tpaciente, int numTurno, int estadoPago, int estadoAtencion, Date fechaCitaProg) {
        this.id = id;
        this.tdisponibilidadcitamedica = tdisponibilidadcitamedica;
        this.tpaciente = tpaciente;
        this.numTurno = numTurno;
        this.estadoPago = estadoPago;
        this.estadoAtencion = estadoAtencion;
        this.fechaCitaProg = fechaCitaProg;
    }
    public Tcitamedica(TcitamedicaId id, Tdisponibilidadcitamedica tdisponibilidadcitamedica, Tpaciente tpaciente, int numTurno, int estadoPago, int estadoAtencion, Date fechaCitaProg, Double costo) {
       this.id = id;
       this.tdisponibilidadcitamedica = tdisponibilidadcitamedica;
       this.tpaciente = tpaciente;
       this.numTurno = numTurno;
       this.estadoPago = estadoPago;
       this.estadoAtencion = estadoAtencion;
       this.fechaCitaProg = fechaCitaProg;
       this.costo = costo;
    }
   
    public TcitamedicaId getId() {
        return this.id;
    }
    
    public void setId(TcitamedicaId id) {
        this.id = id;
    }
    public Tdisponibilidadcitamedica getTdisponibilidadcitamedica() {
        return this.tdisponibilidadcitamedica;
    }
    
    public void setTdisponibilidadcitamedica(Tdisponibilidadcitamedica tdisponibilidadcitamedica) {
        this.tdisponibilidadcitamedica = tdisponibilidadcitamedica;
    }
    public Tpaciente getTpaciente() {
        return this.tpaciente;
    }
    
    public void setTpaciente(Tpaciente tpaciente) {
        this.tpaciente = tpaciente;
    }
    public int getNumTurno() {
        return this.numTurno;
    }
    
    public void setNumTurno(int numTurno) {
        this.numTurno = numTurno;
    }
    public int getEstadoPago() {
        return this.estadoPago;
    }
    
    public void setEstadoPago(int estadoPago) {
        this.estadoPago = estadoPago;
    }
    public int getEstadoAtencion() {
        return this.estadoAtencion;
    }
    
    public void setEstadoAtencion(int estadoAtencion) {
        this.estadoAtencion = estadoAtencion;
    }
    public Date getFechaCitaProg() {
        return this.fechaCitaProg;
    }
    
    public void setFechaCitaProg(Date fechaCitaProg) {
        this.fechaCitaProg = fechaCitaProg;
    }
    public Double getCosto() {
        return this.costo;
    }
    
    public void setCosto(Double costo) {
        this.costo = costo;
    }




}


