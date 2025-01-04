package br.com.fiap.jstl.Controllers;

import br.com.fiap.jstl.Dao.Game;
import br.com.fiap.jstl.Model.ConnectionManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/deleteGame")
public class ServletDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String gameId = request.getParameter("gameId");

        // Valida o parâmetro
        if (gameId == null || gameId.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Título inválido!");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        // Deleta o registro
        boolean success = deleteRecordByTitle(Integer.parseInt(gameId));

        if (success) {
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("errorMessage", "Falha ao deletar o jogo.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    private boolean deleteRecordByTitle(int gameId) {
        String sql = "DELETE FROM TB_GAMES_JAVA WHERE GAME_ID = ?";


        //Teste
        Game game = new Game();
        System.out.println(gameId);
        System.out.println(game.getGameId());

        try (Connection conn = ConnectionManager.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setInt(1, gameId);
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}