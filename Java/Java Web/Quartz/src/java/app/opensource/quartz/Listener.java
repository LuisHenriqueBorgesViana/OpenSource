package app.opensource.quartz;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;
import static org.quartz.CronScheduleBuilder.cronSchedule;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Listener implements ServletContextListener {

    // Define a váriavel do Agendador
    Scheduler scheduler = null;

    @Override
    public void contextInitialized(ServletContextEvent servletContext) {
         
        try { 

            // Mapeamento da Job (Rotina)
            JobDetail job = newJob(Rotina.class).withIdentity("CronQuartzJob", "OpenSource").build();

            // Criação do Gatilho de Execução
            Trigger trigger = newTrigger()
            .withIdentity("RotinaOpenSource", "OpenSource")
            .withSchedule(cronSchedule("0 0/1 0-23 * * ?")) 
            .build();

            // Criação do Agendador de Execução
            scheduler = new StdSchedulerFactory().getScheduler();
            scheduler.start();
            scheduler.scheduleJob(job, trigger);
            
        } catch (SchedulerException ErroJOB) { ErroJOB.printStackTrace(); }
    }
        
    @Override
    public void contextDestroyed(ServletContextEvent servletContext) {

        try {
              scheduler.shutdown();
        } catch (SchedulerException ErroJOB) {}
    }
}

