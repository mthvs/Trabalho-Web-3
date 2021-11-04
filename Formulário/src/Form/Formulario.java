package Form;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Formulario")
public class Formulario extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nomeParam = req.getParameter("campo_nome");
		
		String nascimentoParam = req.getParameter("campo_data_nascimento");
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate dateNascimento = LocalDate.parse(nascimentoParam, formatter);
		
		String idiomaParam = req.getParameter("idioma");
		
		String[] habilidades = req.getParameterValues("habilidades");
		
		if(nomeParam == null ||nomeParam.isEmpty() ) {
			throw new IllegalArgumentException("Nome não pode estar vazio"); 
		}
		
		if(nascimentoParam == null ||nascimentoParam.isEmpty() ) {
			throw new IllegalArgumentException(" Campo data tem quer ser preenchido"); 
		}
		
		if(idiomaParam == null ||idiomaParam.isEmpty() ) {
			throw new IllegalArgumentException("Escolha um idioma"); 
		}
		
		if(habilidades == null) {
			throw new IllegalArgumentException("Escolha uma Habilidade"); 
		}
		
		System.out.println("nome: " + nomeParam);
		System.out.println("data nascimento	: " + dateNascimento);
		System.out.println("Idioma: " + idiomaParam);
		
		for(int i = 0 ; i<habilidades.length ; i++)
		System.out.println("habilidades: " + habilidades[i]);
	}
}
