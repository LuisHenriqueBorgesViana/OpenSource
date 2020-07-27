package app.opensource.quartz;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Teste {
    
    /**
     * Metódo que irá executar uma mensagem no console.
     */
    public void ExibeRetornoConsole () {
        
        // Formata Data e Hora atual.
        LocalDateTime DataHoraAtual = LocalDateTime.now();

        DateTimeFormatter formatterData = DateTimeFormatter.ofPattern("dd/MM/uuuu");
        String DataAtual = formatterData.format(DataHoraAtual);
 
        DateTimeFormatter formatterHora = DateTimeFormatter.ofPattern("HH:mm:ss");
        String HoraAtual = formatterHora.format(DataHoraAtual);
        
        // Exibe a Mensagem no Console.
        System.out.println("Rotina executada de forma automatizada, com sucesso em " + DataAtual + " ás " + HoraAtual + "."); 
    }
    
}
