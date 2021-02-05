package com.example;

import com.example.dao.master.UserDao;
import com.example.dao.second.SchoolDao;
import com.example.domain.master.UserVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author gu xinxin
 */
@Component
public class ScheduledTasks {
    @Autowired
    private UserDao userDao;

    @Autowired
    private SchoolDao schoolDao;

    private static final Logger log = LoggerFactory.getLogger(ScheduledTasks.class);

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");

    @Scheduled(fixedRate = 7000)
    public void reportCurrentTime() {
        log.info("The time is now {}", dateFormat.format(new Date()));
        UserVo userVo = userDao.findById(2l);
        int i = schoolDao.addSchoolDao(userVo.getUserName(), "something");
        log.info("insest {} row", i);
    }
}
