package app.opensource.main;

import app.opensource.mail.Salvar;
import java.io.IOException;

public class NewClass1 {
    
    
    public static void main(String[] args) throws IOException {

        Salvar x = new Salvar();
        x.SalvarArquivo("C:\\", "Teste", "Teste", "Teste", "02.01.2020 23.59.59");
        
        
    }
   
    
}
