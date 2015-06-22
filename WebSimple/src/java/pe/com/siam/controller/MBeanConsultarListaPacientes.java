/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.siam.controller;

import java.util.Date;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import pe.com.siam.model.business.AdminClinica;
import pe.com.siam.model.pojo.Tcitamedica;
import pe.com.siam.model.pojo.Tpaciente;

/**
 *
 * @author DENIS
 */
@ManagedBean
@RequestScoped
@SessionScoped
public class MBeanConsultarListaPacientes {

    /**
     * Creates a new instance of MBeanConsultarListaPacientes
     */
    int codMedico;
    Date fechaProgramada;
    private List<Tcitamedica> listaPacientes;
    private boolean value1;
    private AdminClinica admClinica;

    public MBeanConsultarListaPacientes() {
        admClinica = new AdminClinica();
    }

    public boolean isValue1() {
        return value1;
    }

    public void setValue1(boolean value1) {
        this.value1 = value1;
    }

    public void addMessage() {
        String summary = value1 ? "Paciente seleccionado" : "Paciente deseleccionado";
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(summary));
    }

    public List<Tcitamedica> getListaPacientes() {
        return listaPacientes;
    }

    public void setListaPacientes(List<Tcitamedica> listaPacientes) {
        this.listaPacientes = listaPacientes;
    }

    public int getCodMedico() {
        return codMedico;
    }

    public void setCodMedico(int codMedico) {
        this.codMedico = codMedico;
    }

    public Date getFechaProgramada() {
        return fechaProgramada;
    }

    public void setFechaProgramada(Date fechaProgramada) {
        this.fechaProgramada = fechaProgramada;
    }

    public void listarPacienteDeMedicoFecha() {
        listaPacientes = admClinica.listarPacientesCitaMedico(codMedico, fechaProgramada);
    }
}
