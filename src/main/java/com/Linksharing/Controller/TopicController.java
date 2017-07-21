package com.Linksharing.Controller;

import com.Linksharing.Beans.TopicBean;
import com.Linksharing.Model.User;
import com.Linksharing.Model.Visibility;
import com.Linksharing.ServiceInter.TopicService;
import com.Linksharing.ServiceInter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by mohit bhutani on 21/7/17.
 */
@Controller
@RequestMapping("/topic")
public class TopicController {

    @Autowired
    UserService userService;
    @Autowired
    TopicService topicService;


    //For topic created
    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public ModelAndView topicCreate(HttpServletRequest request, @RequestParam("visibility")String topicvis, @RequestParam("name") String name) {
        String username =(String) request.getSession().getAttribute("username");
        User user = new User();
        user.setUsername(username);
        TopicBean topicBean = new TopicBean();
        topicBean.setName(name);
        topicBean.setVisibility(Visibility.valueOf(topicvis));
        topicBean.setUser(user);
        boolean check = topicService.create(topicBean);

        if (check) {
            return new ModelAndView("topiccreated");
        } else {
            return new ModelAndView("Error");
        }
    }
}
