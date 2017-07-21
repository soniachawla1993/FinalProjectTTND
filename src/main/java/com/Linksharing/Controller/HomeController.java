package com.Linksharing.Controller;

import com.Linksharing.Beans.UserBean;
import com.Linksharing.Model.User;
import com.Linksharing.ServiceInter.TopicService;
import com.Linksharing.ServiceInter.UserLoginService;
import com.Linksharing.ServiceInter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
 import javax.servlet.http.HttpServletRequest;

/**
 * Created by dell on 7/12/2017.
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController {
    @Autowired
    private TopicService topicService;
    @Autowired
    private UserService userService;

    @Autowired
    private JavaMailSender mailSender;
   @Autowired
   private UserLoginService userLoginService;

    @RequestMapping(value = "/reset", method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request) {
        // takes input from e-mail form
        String username = request.getParameter("username");
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(username);
        // sends the e-mail
        mailSender.send(email);
        return "Result";
    }

//For login
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginUser(HttpServletRequest request, String username, String password) {
        boolean check = userLoginService.checkLogin(username, password);
        if (check) {
            request.getSession().setAttribute("username",username);
            return new ModelAndView("userDashboard");
        } else {
            return new ModelAndView("Error");
        }
    }

    private User prepareModel(String username, String password) {
        return new User();
    }

    //For Index.jsp
    @RequestMapping("/")
    public ModelAndView func() {
        return new ModelAndView("index");

    }


    /*

    @RequestMapping("/forgotpassword")
    public String func1() {
        return "forgotpassword";
    }
*/

@RequestMapping(value = "/loggingout",method = RequestMethod.POST)
public ModelAndView logout(HttpServletRequest request){
    request.getSession().invalidate();
    return new ModelAndView("loggingout");
}

    @RequestMapping(value = "/registered", method = RequestMethod.POST)
    public ModelAndView saveUser(@ModelAttribute("command") UserBean userBean, @RequestParam(name = "file", required = false) MultipartFile file,
                                 BindingResult result) {
        if (ObjectUtils.isEmpty(userBean)) {
            return new ModelAndView("Error");
        } else {

            try {
                if(!ObjectUtils.isEmpty(file))
                userBean.setPhoto(file.getBytes());
            }catch (Exception e){
                e.printStackTrace();
            }
            userService.addUser(userBean);
            return new ModelAndView("registered");
        }

    }

}