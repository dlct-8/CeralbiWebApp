
package Modelo;


public class Rol {
    
    private int idRol;
    private String nombreRol;

    public Rol() {
    }

    public Rol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }
    
    
    
}
