/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.siam.controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.hibernate.sql.Select;
import org.primefaces.event.SelectEvent;
import pe.com.siam.model.pojo.Tpaciente;

/**
 *
 * @author Jean
 */
@ManagedBean
@SessionScoped
public class MBeanReservarCitaMedica {
    private int filtro;
    private String nomxtipo;    
    private Tpaciente p;
    
    public MBeanReservarCitaMedica() {
        //p = new Tpaciente();
        setNomxtipo("Registrar cita");
        filtro=2;        
    }

    public void actualizarBoton(){
        if(filtro==1)nomxtipo="Registrar y cobrar";
        if(filtro==2)nomxtipo="Registrar cita";
    }
    
    public void cargarPaciente(){
        System.out.println("cargandoPaciente");
//        p = ((Tpaciente)eventSelect.getObject())
//        listOrdeFabr = modeSoli.listarOrdeFabr(numSoli);
//        System.out.print("el # "+numSoli);
//        detalleRender=1;
        System.out.println("dni: "+p.getDni());
        //System.out.println("num: "+p.getThistoriaclinica().getNumHistoria());
    }
    
    public int getFiltro() {
        return filtro;
    }

    public void setFiltro(int filtro) {
        this.filtro = filtro;
    }

    public String getNomxtipo() {
        return nomxtipo;
    }

    public void setNomxtipo(String nomxtipo) {
        this.nomxtipo = nomxtipo;
    }

    public Tpaciente getP() {
        return p;
    }

    public void setP(Tpaciente p) {
        this.p = p;
    }

    
    
}
