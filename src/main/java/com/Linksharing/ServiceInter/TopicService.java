package com.Linksharing.ServiceInter;

import com.Linksharing.Beans.TopicBean;
import org.springframework.stereotype.Service;

/**
 * Created by dell on 7/20/2017.
 */

@Service
public interface TopicService {
    public boolean create(TopicBean topicBean);
}
