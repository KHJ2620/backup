/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.24
 * Generated at: 2024-06-28 02:10:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view.mypage;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class mypage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/lib/jakarta.servlet.jsp.jstl-3.0.0.jar", Long.valueOf(1719202130046L));
    _jspx_dependants.put("/WEB-INF/view/mypage/../outer-nav.jsp", Long.valueOf(1719466509079L));
    _jspx_dependants.put("jar:file:/D:/jee/web-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/campic/WEB-INF/lib/jakarta.servlet.jsp.jstl-3.0.0.jar!/META-INF/c-1_2.tld", Long.valueOf(1649403498000L));
    _jspx_dependants.put("/WEB-INF/view/mypage/../inner-nav.jsp", Long.valueOf(1719532522900L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>다함께 캠핑가자, 캠픽</title>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/style.css\" />\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div style=\"position:fixed; margin: 13%\">\r\n");
      out.write("	<i class=\"fa-solid fa-quote-left\" style=\"color:white ; font-size: 3em\"></i>\r\n");
      out.write("	<div style=\"color:white ; font-size: 3em ; margin-left: 5px ; text-align: center\">\r\n");
      out.write("	<span style=\"font-size: 1.5em\">캠핑,</span> 복잡한<br/>예약은 이제 그만!<br/> <span style=\"color: gold\">캠픽</span>하세요!</div>\r\n");
      out.write("	<i class=\"fa-solid fa-quote-right\" style=\"color:white ; font-size: 3em ; margin-top: 25px ; margin-left: 430px\"></i>\r\n");
      out.write("	</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("	<div class=\"fixed-box\">\r\n");
      out.write("		<!-- 임시 CSS 처리 -->\r\n");
      out.write("		<div\r\n");
      out.write("			style=\"display: flex; align-items: center; justify-content: space-between;\">\r\n");
      out.write("			<div style=\"font-size: 1.1em; font-weight: bold;\">마이</div>\r\n");
      out.write("			<div>\r\n");
      out.write("				<button class=\"button-a\">\r\n");
      out.write("					<i class=\"fa-regular fa-bell\"></i>\r\n");
      out.write("				</button>\r\n");
      out.write("				<button class=\"button-a\">\r\n");
      out.write("					<i class=\"fa-solid fa-headset\"></i>\r\n");
      out.write("				</button>\r\n");
      out.write("				<button class=\"button-a\">\r\n");
      out.write("					<i class=\"fa-solid fa-gear\"></i>\r\n");
      out.write("				</button>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("		<div>\r\n");
      out.write("			<img src=\"./a.jpg\"> <a\r\n");
      out.write("				style=\"text-decoration: none; color: black\"\r\n");
      out.write("				href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mypage/info/edit\">\r\n");
      out.write("				");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${authUser.nickname }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 내 정보 관리 ></a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div\r\n");
      out.write("			style=\"text-align: center; margin-top: 20px; display: flex; align-items: center; justify-content: space-between; background: #221F18; border-radius: 10px; padding: 15px; color: white; margin-bottom: 10px\">\r\n");
      out.write("			<div>\r\n");
      out.write("			<span style=\"font-weight: bold\">공지</span>\r\n");
      out.write("				[공지] 6월 6일(목) 현충일 고객센터 휴무 공지\r\n");
      out.write("			</div>\r\n");
      out.write("			<div style=\"margin-left: 5px\">\r\n");
      out.write("				>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		");
      if (_jspx_meth_c_005fchoose_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("		<div\r\n");
      out.write("			style=\"display: flex; align-items: center; justify-content: space-between;\">\r\n");
      out.write("		<div>캠핑 기획전</div>\r\n");
      out.write("		<div>진행중인 이벤트</div>\r\n");
      out.write("		<div>캠핑로그 작성하기</div>\r\n");
      out.write("		<br />\r\n");
      out.write("		<div>쇼핑</div>\r\n");
      out.write("		<div>스토어 기획전</div>\r\n");
      out.write("		<br />\r\n");
      out.write("		<div>고객센터</div>\r\n");
      out.write("		<div>공지사항</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"fixed-footer\">\r\n");
      out.write("			");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded\"\r\n");
      out.write("	rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("	<div\r\n");
      out.write("		style=\"display: flex; align-items: center; justify-content: space-between; width: 120%\">\r\n");
      out.write("		<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><button\r\n");
      out.write("				class=\"button-d\" style=\"width: 80px; height: 60px; padding: 5px\">\r\n");
      out.write("				<span class=\"material-symbols-rounded\"> home </span><br /><small>홈</small>\r\n");
      out.write("			</button></a> \r\n");
      out.write("			\r\n");
      out.write("			<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/search\"><button\r\n");
      out.write("				class=\"button-d\" style=\"width: 80px; height: 60px; padding: 5px\">\r\n");
      out.write("				<span class=\"material-symbols-rounded\"> search </span><br /><small>캠핑장 검색</small>\r\n");
      out.write("			</button></a>\r\n");
      out.write("			\r\n");
      out.write("			<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/product\"><button\r\n");
      out.write("				class=\"button-d\" style=\"width: 80px; height: 60px; padding: 5px\">\r\n");
      out.write("				<span class=\"material-symbols-rounded\"> storefront </span><br /><small>스토어</small>\r\n");
      out.write("			</button></a>\r\n");
      out.write("			<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board\"><button\r\n");
      out.write("				class=\"button-d\" style=\"width: 80px; height: 60px; padding: 5px\">\r\n");
      out.write("				<span class=\"material-symbols-rounded\"> edit_square </span><br /><small>캠핑생활</small>\r\n");
      out.write("			</button></a>\r\n");
      out.write("			<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mypage\"><button\r\n");
      out.write("				class=\"button-d\" style=\"width: 80px; height: 60px; padding: 5px\">\r\n");
      out.write("				<span class=\"material-symbols-rounded\"> person </span><br /><small>마이</small>\r\n");
      out.write("			</button></a>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fchoose_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    boolean _jspx_th_c_005fchoose_005f0_reused = false;
    try {
      _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fchoose_005f0.setParent(null);
      int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
      if (_jspx_eval_c_005fchoose_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("		");
          if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("		");
          if (_jspx_meth_c_005fotherwise_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write("\r\n");
          out.write("		");
          int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
          if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fchoose_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
      _jspx_th_c_005fchoose_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fwhen_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    boolean _jspx_th_c_005fwhen_005f0_reused = false;
    try {
      _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fwhen_005f0.setParent((jakarta.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      // /WEB-INF/view/mypage/mypage.jsp(49,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${authUser != null}", boolean.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
      if (_jspx_eval_c_005fwhen_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("			<div>\r\n");
          out.write("				<a href=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("/logout\"> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${authUser.nickname }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("							님 로그아웃 </a>\r\n");
          out.write("			</div>\r\n");
          out.write("			\r\n");
          out.write("		<div\r\n");
          out.write("			style=\"display: flex; align-items: center; justify-content: space-around;\">\r\n");
          out.write("			<div>나의 캠핑</div>\r\n");
          out.write("			<div>나의 쇼핑</div>\r\n");
          out.write("		</div>\r\n");
          out.write("		<div\r\n");
          out.write("			style=\"display: flex; align-items: center; justify-content: space-around;\">\r\n");
          out.write("			<div>예약내역</div>\r\n");
          out.write("			<div>빈자리 구독</div>\r\n");
          out.write("			<div>캠핑로그</div>\r\n");
          out.write("			<div>찜 목록</div>\r\n");
          out.write("		</div>\r\n");
          out.write("		<div\r\n");
          out.write("			style=\"display: flex; align-items: center; justify-content: space-between;\">\r\n");
          out.write("			<div>캠핑장 쿠폰</div>\r\n");
          out.write("			<div>></div>\r\n");
          out.write("		</div>\r\n");
          out.write("		<div>내 장비</div>\r\n");
          out.write("		<div>박스들~</div>\r\n");
          out.write("		<br />\r\n");
          out.write("		<div>캠핑</div>\r\n");
          out.write("		<div>내 사용 리뷰</div>\r\n");
          out.write("		<div>나의 활동</div>\r\n");
          out.write("		");
          int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
          if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fwhen_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      _jspx_th_c_005fwhen_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fotherwise_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    boolean _jspx_th_c_005fotherwise_005f0_reused = false;
    try {
      _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fotherwise_005f0.setParent((jakarta.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
      if (_jspx_eval_c_005fotherwise_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("		\r\n");
          out.write("			<div\r\n");
          out.write("				style=\"display: flex; align-items: center; justify-content: space-between;\">\r\n");
          out.write("				<div style=\"width: 50%\">\r\n");
          out.write("					<a href=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("/signup\"><button>회원가입</button></a>\r\n");
          out.write("				</div>\r\n");
          out.write("				<div style=\"width: 50%\">\r\n");
          out.write("					<a href=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath }", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("/login\"><button>로그인</button></a>\r\n");
          out.write("				</div>\r\n");
          out.write("				\r\n");
          out.write("			</div>\r\n");
          out.write("			<div\r\n");
          out.write("			style=\"display: flex; align-items: center; justify-content: space-between;\">\r\n");
          out.write("			<div>비회원 예약조회</div>\r\n");
          out.write("			</div>\r\n");
          out.write("		");
          int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
          if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fotherwise_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
      _jspx_th_c_005fotherwise_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
    }
    return false;
  }
}
