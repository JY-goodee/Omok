package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import logic.OmokService;

@Controller
public class OmokController {
	/*@Autowired
	private OmokService omokService;*/
	
	@RequestMapping("omok/NewFile")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	

}
