package app.opensource.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class Rotina implements Job {

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
 
        Teste Rotina = new Teste();
        Rotina.ExibeRetornoConsole(); 

    }
}