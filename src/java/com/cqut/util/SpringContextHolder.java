package com.cqut.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

@Service
public class SpringContextHolder implements ApplicationContextAware {
    private static ApplicationContext applicationContext;

    
    /**
     * 使用一个静态引用保存spring启动时的ApplicationContext,然后可以通过这个引用得到上下文的bean
     */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
    	SpringContextHolder.applicationContext = applicationContext;
    }


    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }
    public static Object getBean(String beanName) {
        return applicationContext.getBean(beanName);
    }
    
    public static <T>T getBean(String beanName , Class<T>clazz) {
        return (T) applicationContext.getBean(beanName , clazz);
    }
}