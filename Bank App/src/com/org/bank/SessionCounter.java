package com.org.bank;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionCounter implements HttpSessionListener {
	public static int activeSessions = 0;
	
	public void sessionCreated(HttpSessionEvent evt) {
		activeSessions++;
		System.out.println("No. of active session on " + new Date() + " : " + activeSessions);
		
	}
	
	public void sessionDestroyed(HttpSessionEvent evt) {
		activeSessions--;		
	}
}
