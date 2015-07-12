package com.praxify.hack;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mongodb.util.JSON;
import com.praxify.hack.DAO.SpringMongoConfig;
import com.praxify.hack.template.IdGenerator;
import com.praxify.hack.template.Patient1;

import net.sf.json.JSONObject;

import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
 	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String authenticateUser(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
 	
 	
 	@RequestMapping(value = "/regForm", method = RequestMethod.GET)
	public ModelAndView regForm(Locale locale, Model model) {
 		System.out.println("inside controller @@@@@@@@@@@@@@@@@@@@@@@@");
  		
		  return new ModelAndView("patientRegistration", "command", new Patient1());
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value="/registerPatient",method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
    public String addPatient(@ModelAttribute Patient1 patient, Model mod ){
        logger.info("Trying to save patient details: "+patient);

		patient.setId(IdGenerator.randomString(6));
		
		System.out.println("saving obj : "+patient.toString());
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
        MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
        mongoOperation.save(patient);
        List<Patient1> patientList = mongoOperation.findAll(Patient1.class);
        System.out.println("Patient Details :"+patientList.size());
        for(Patient1 pa : patientList){
        	
        	System.out.println(pa.toString());
        }
       JSONObject jobj = JSONObject.fromObject(patient);
       
       System.out.println("the json output : " +jobj.toString());
        
        logger.info("saved Patient is: "+mongoOperation.findAll(Patient1.class));
        return jobj.toString();
    }
    
	/*private String getID(){
		
		Random randomGenerator = new Random();
 	      int randomInt = randomGenerator.nextInt(1000);
 	      
 	      StringBuilder id = new StringBuilder("UID-");
 	      id.append(randomInt);
		return id.toString();
	}*/
	
	
}
