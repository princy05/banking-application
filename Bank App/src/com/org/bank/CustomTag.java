package com.org.bank;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;
public class CustomTag extends SimpleTagSupport {
   public void doTag() throws JspException, IOException {
      /*This is just to display a message, when
       * we will use our custom tag. This message
       * would be displayed
       */
      JspWriter out = getJspContext().getOut();
      out.println("<img src=\"bank.jpg\" width=\"80\"  height=\"70\" />");
      out.println("<h3>Bank of Regina</h3>");
   }
}