package app.opensource.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * Implementa a Rotina a ser Executa em forma de Job.
 */
public class Rotina implements Job {

    /**
     * Metódo que irá executar a Job.
     * @param context
     * @throws JobExecutionException 
     */
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
 
        // Executa o Metódo que a Rotina irá executar de forma automatizada.
        Teste Rotina = new Teste();
        Rotina.ExibeRetornoConsole(); 

    }
}