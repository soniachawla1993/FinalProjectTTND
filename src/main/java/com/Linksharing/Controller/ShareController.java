package com.Linksharing.Controller;

import com.Linksharing.Beans.LinkShareBean;
import com.Linksharing.Beans.TopicBean;
import com.Linksharing.Model.ResourceRating;
import com.Linksharing.Model.User;
import com.Linksharing.Model.Visibility;
import com.Linksharing.ServiceInter.ShareLinkService;
import com.Linksharing.ServiceInter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;

/**
 * Created by dell on 7/21/2017.
 */
@Controller
@RequestMapping("/share")
public class ShareController {
    @Autowired
    UserService userService;
    @Autowired
    ShareLinkService shareLinkService;

    @RequestMapping(value = "/sharelink",method = RequestMethod.POST)
    public ModelAndView topicCreate(HttpServletRequest request, @RequestParam("link")String link, @RequestParam("description") String description) {
        String username =(String) request.getSession().getAttribute("username");
        User user = new User();
        user.setUsername(username);
        LinkShareBean linkShareBean= new LinkShareBean();
        linkShareBean.setUser(user);
        linkShareBean.setLink(link);
        linkShareBean.setDescription(description);
        Date date=new Date();
        linkShareBean.setDatecreated(date);
        linkShareBean.setLastupdated(date);
        Collection<ResourceRating> resourceRatings=new HashSet<ResourceRating>();
        linkShareBean.setResourceRatings(resourceRatings);
        boolean check = shareLinkService.create(linkShareBean);
        if (check) {
            return new ModelAndView("linkshared");
        } else {
            return new ModelAndView("Error");
        }
    }

}
