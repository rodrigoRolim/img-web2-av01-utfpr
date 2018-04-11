package br.edu.utfpr.app;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.Pattern;

@WebServlet(urlPatterns = "/admin")
public class Admin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        PrintWriter pw = resp.getWriter();
        resp.setContentType("text/html;charset=UTF-8");
        //TODO: verificar a sessão
        //TODO: implementar home de admin
        //pw.println("Não esqueça de criar a view home.admin");
        pw.print("<form action=\"/AvaliacaoWeb/save\" method=\"post\" enctype=\"multipart/form-data\">\n"
                + "	<label for=\"upload\">Selecione um arquivo</label>\n"
                + "	<input type=\"file\" name=\"upload\" id=\"upload\">\n"
                + "	<button type=\"submit\">Cadastrar</button>\n"
                + "</form>");
    }

}
