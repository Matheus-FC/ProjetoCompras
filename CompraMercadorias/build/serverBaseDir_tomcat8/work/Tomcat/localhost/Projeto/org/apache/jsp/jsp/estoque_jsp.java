/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.51
 * Generated at: 2019-11-05 00:30:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class estoque_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/C:/Users/mathe/.gradle/caches/modules-2/files-2.1/javax.servlet/jstl/1.2/74aca283cd4f4b4f3e425f5820cda58f44409547/jstl-1.2.jar", Long.valueOf(1570764022226L));
    _jspx_dependants.put("jar:file:/C:/Users/mathe/.gradle/caches/modules-2/files-2.1/javax.servlet/jstl/1.2/74aca283cd4f4b4f3e425f5820cda58f44409547/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153395882000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Gerenciamento de Estoque</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <style>\n");
      out.write("        table, th, td{\n");
      out.write("        border: 1px solid black;\n");
      out.write("        font-family: 'Courier New', Courier, monospace;\n");
      out.write("        }\n");
      out.write("        label{\n");
      out.write("            padding: 10px;\n");
      out.write("            text-align: center;\n");
      out.write("            font-family: 'Courier New', Courier, monospace;\n");
      out.write("        }\n");
      out.write("        .content {\n");
      out.write("            max-width: 500px;\n");
      out.write("            margin: auto;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<div class='content'>\n");
      out.write("<div>\n");
      out.write("    <div>\n");
      out.write("        <div>\n");
      out.write("        <a href='mercadoria'>\n");
      out.write("            <label> Mercadorias </label>\n");
      out.write("        </a>\n");
      out.write("        <a href='estoque'>\n");
      out.write("            <label> Estoque </label>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div>\n");
      out.write("    <div>\n");
      out.write("        <div>\n");
      out.write("        <a href='estoque'>\n");
      out.write("            <label> Gerenciamento </label>\n");
      out.write("        </a>\n");
      out.write("        <a href='cadastrar'>\n");
      out.write("            <label>  Alteração e Cadastro </label>\n");
      out.write("        </a>\n");
      out.write("        <a href='relatorioestoque'>\n");
      out.write("            <label> Relatório </label>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div>\n");
      out.write("    <div>\n");
      out.write("        <label>Pesquisa </label>\n");
      out.write("        <input type='number' placeholder=\"Código da mercadoria\" min='0'>\n");
      out.write("        <button type='button'> \n");
      out.write("            <label>Pesquisar </label>\n");
      out.write("        </button>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div>\n");
      out.write("    <table>\n");
      out.write("        <tr>\n");
      out.write("            <th> Código</th>\n");
      out.write("            <th> Nome</th>\n");
      out.write("            <th> Marca</th>\n");
      out.write("            <th> Unidade</th>\n");
      out.write("            <th> Preço R$</th>\n");
      out.write("            <th> Quantidade no Estoque</th>\n");
      out.write("            <th> Descrição</th>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td> 1</td>\n");
      out.write("                <td> Camisa</td>\n");
      out.write("                <td> ArtRock</td>\n");
      out.write("                <td> NaA</td>\n");
      out.write("                <td> 20</td>\n");
      out.write("                <td> 20 </td>\n");
      out.write("                <td> Camiseta</td>\n");
      out.write("            <td>\n");
      out.write("                <button>\n");
      out.write("                    <a href='atualizar'>\n");
      out.write("                        <label> Alterar </label>\n");
      out.write("                    </a>\n");
      out.write("                </button>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <button>\n");
      out.write("                    <label> Excluir </label>\n");
      out.write("                </button>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td> 1</td>\n");
      out.write("            <td> 2</td>\n");
      out.write("                <td> Arroz</td>\n");
      out.write("                <td> Saboroso</td>\n");
      out.write("                <td> 10 </td>\n");
      out.write("                <td> 13</td>\n");
      out.write("                <td> Pacote de Arroz</td>\n");
      out.write("            <td>\n");
      out.write("                <button>\n");
      out.write("                    <a href='atualizar'>\n");
      out.write("                        <label> Alterar </label>\n");
      out.write("                    </a>\n");
      out.write("                </button>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <button>\n");
      out.write("                    <label> Excluir </label>\n");
      out.write("                </button>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("</div>\n");
      out.write("</div>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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
}
