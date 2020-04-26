package app.opensource.quartz;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Teste {
    
    public void ExibeRetornoConsole () {
        
        LocalDateTime DataHoraAtual = LocalDateTime.now();

        DateTimeFormatter formatterData = DateTimeFormatter.ofPattern("dd/MM/uuuu");
        String DataAtual = formatterData.format(DataHoraAtual);
 
        DateTimeFormatter formatterHora = DateTimeFormatter.ofPattern("HH:mm:ss");
        String HoraAtual = formatterHora.format(DataHoraAtual);
        
        System.out.println("Rotina executada com sucesso em " + DataAtual + " ás " + HoraAtual + "."); 
    }
    
}
