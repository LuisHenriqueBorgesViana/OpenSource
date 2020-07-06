package app.opensource.mail;

import java.util.Date;

public class Modelo {
    
    private int    NumeroEmail;
    private Date   DataEnvioEmail;
    private String RemetenteEmail;
    private String AssuntoEmail;
    private String ConteudoEmail;

    public int getNumeroEmail() {
        return NumeroEmail;
    }

    public void setNumeroEmail(int NumeroEmail) {
        this.NumeroEmail = NumeroEmail;
    }

    public Date getDataEnvioEmail() {
        return DataEnvioEmail;
    }

    public void setDataEnvioEmail(Date DataEnvioEmail) {
        this.DataEnvioEmail = DataEnvioEmail;
    }

    public String getRemetenteEmail() {
        return RemetenteEmail;
    }

    public void setRemetenteEmail(String RemetenteEmail) {
        this.RemetenteEmail = RemetenteEmail;
    }

    public String getAssuntoEmail() {
        return AssuntoEmail;
    }

    public void setAssuntoEmail(String AssuntoEmail) {
        this.AssuntoEmail = AssuntoEmail;
    }

    public String getConteudoEmail() {
        return ConteudoEmail;
    }

    public void setConteudoEmail(String ConteudoEmail) {
        this.ConteudoEmail = ConteudoEmail;
    }
  
}
