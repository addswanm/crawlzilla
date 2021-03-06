<!--
  Copyright 2004 The Apache Software Foundation

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Crawlzilla Management" />
<meta name="keywords" content="nutch, crawlzilla, cloud computing, Hadoop, search engine" />
<meta name="author" content="Waue(waue@nchc.org.tw), Shunfa(shunfa@nchc.org.tw) , Rock(rock@nchc.org.tw)" />
<title>Change Password</title>
</head>
<body>

<jsp:useBean id="changePasswdBean" class="org.nchc.crawlzilla.ChangePasswdBean" /> 
<jsp:setProperty name="changePasswdBean" property="*" /> 
<%
String indexURL = "index.jsp"; 
String loginFormURL = "adminLogin.jsp"; 
String go = "<br><a href=adminLogin.jsp>若系統無跳轉請按此一連結</a>";
if (changePasswdBean.editPasswd()){
	response.setHeader("Refresh", "0.5; URL=" + loginFormURL);
	out.println("密碼修改完成，請重新登入（3秒後回到登入頁面)");
	out.println(go);
}

else { 
    response.setHeader("Refresh", "3; URL=" + loginFormURL); 
    out.println("使用者或密碼錯誤，請重新登入（3秒後回到登入頁面）");
    out.println(go);
} 
%>
</body>
</html>