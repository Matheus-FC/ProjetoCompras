package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Belo -  Cadastro/Atualziar Mercadoria</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("</head>\r\n");
      out.write("<div>\r\n");
      out.write("    <div>\r\n");
      out.write("        <div>\r\n");
      out.write("        <a href='mercadoria'>\r\n");
      out.write("            <label> Mercadorias </label>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href='estoque'>\r\n");
      out.write("            <label> Estoque </label>\r\n");
      out.write("        </a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div>\r\n");
      out.write("    <div>\r\n");
      out.write("        <div>\r\n");
      out.write("        <a href='estoque'>\r\n");
      out.write("            <label> Gerenciamento </label>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href='cadastrar'>\r\n");
      out.write("            <label> Cadastrar / Atualizar </label>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href='relatorioestoque'>\r\n");
      out.write("            <label> Relatório </label>\r\n");
      out.write("        </a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div>\r\n");
      out.write("    <form>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Código</label>\r\n");
      out.write("            <input type='number' placeholder=\"Código do Produto\" min='0'>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Nome</label>\r\n");
      out.write("            <input type='text' placeholder=\"Nome da Mercadoria\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Unidade</label>\r\n");
      out.write("            <input type='text' placeholder=\"Unidade da Mercadoria\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Preço R$</label>\r\n");
      out.write("            <input type='number' placeholder=\"Preço Unitário do Produto\" min='0'>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Quantidade no Estoque</label>\r\n");
      out.write("            <input type='number' placeholder=\"Quantidade da Mercadoria no Estoque\" min='1'>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <label>Descrição</label>\r\n");
      out.write("            <input type='text' placeholder=\"Descrição da Mercadoria\">\r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("    <div>\r\n");
      out.write("        <button>\r\n");
      out.write("            Salvar \r\n");
      out.write("        </button>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
