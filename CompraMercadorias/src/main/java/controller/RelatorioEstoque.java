import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import model.Produto;
import model.ProdutoDAO;

@WebServlet( urlPatterns={"/relatorioestoque"})
public class RelatorioEstoque extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        
        ServletContext sc = req.getServletContext();

        try{
            ProdutoDAO b = new ProdutoDAO();
            List<Produto> produtos = b.findAll();
            for (Produto produto : produtos) {
                System.out.println(produto.getId());
            }
            
            req.setAttribute("produtos", produtos);
            sc.getRequestDispatcher("/jsp/relatorioEstoque.jsp").forward(req, resp);            
        } catch (Exception e){}
    }


}
