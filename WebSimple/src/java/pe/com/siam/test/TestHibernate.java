/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.siam.test;

import java.util.Iterator;
import java.util.Set;
import org.hibernate.HibernateException;
import pe.com.siam.model.dao.EnfermedadDAO;
import pe.com.siam.model.dao.PacienteDAO;
import pe.com.siam.model.pojo.Tenfermedad;
import pe.com.siam.model.pojo.Tpaciente;

/**
 *
 * @author bperez
 */
public class TestHibernate {
   
    public static void recuperarPacienteSimple(){
        PacienteDAO pacdao = new PacienteDAO();

        Tpaciente pac = pacdao.obtenerObjeto(45891391);
        //if(pac instanceof Tpaciente)System.out.println("Se encontro: "+pac.getClass().getName());
        //else System.out.println("No se encontro: "+pac.getClass().getName());
        try {
            System.out.println("naci en: "+pac.getLugarNac());
            System.out.println("me registre el: "+pac.getThistoriaclinica().getFechaCreacion());
            Set efrmds = pac.getThistoriaclinica().getTenfermedads();
            Iterator<Tenfermedad> it = efrmds.iterator();
            while (it.hasNext()) {
                System.out.println("padesco de: "+it.next().getNombre());   
            }            
        } catch (HibernateException HEx) {
            System.out.println("Paciente no encontrado");
        }
    }
    
    public static void registrarEnfermedades(String nom,String dsc){
        EnfermedadDAO enfDAO = new EnfermedadDAO();
        Tenfermedad enf = new Tenfermedad(nom, dsc);
        enfDAO.agregarObjeto(enf);
    }
    
    public static void main(String[] args) {
        String nom = "Psoriasis2";
        String dsc = "La psoriasis es una enfermedad de la piel "
                + "que causa descamación e inflamación (dolor, hinchazón, "
                + "calentamiento y coloración).";        
        
        //registrarEnfermedades(nom, dsc);    
        recuperarPacienteSimple();
    }    
}
