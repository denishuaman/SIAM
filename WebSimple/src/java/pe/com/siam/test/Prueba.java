/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.siam.test;

import java.util.List;
import org.hibernate.Session;
import pe.com.siam.model.dao.CitaMedicaDAO;
import pe.com.siam.model.dao.HibernateUtil;
import pe.com.siam.model.pojo.Tcitamedica;
import pe.com.siam.model.pojo.Tpaciente;

/**
 *
 * @author DENIS
 */
public class Prueba {

    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<List> listPac = session.createQuery("select new list(cm, p) \n"
                + "from Tcitamedica cm inner join cm.tdisponibilidadcitamedica dcm inner join dcm.tmedico m \n"
                + "with m.codMedico = 1 inner join cm.tpaciente p inner join p.thistoriaclinica h \n"
                + "with cm.fechaCitaProg='2015-06-15'").list();
        session.close();
        Tcitamedica cita;
        Tpaciente p;
        for (List l : listPac) {
            cita = (Tcitamedica)l.get(0);
            System.out.println("..."+cita.getId());
            p = (Tpaciente)l.get(1);
            System.out.println("..."+p.getDni()+" "+p.getNombres());
        }
    }
}
