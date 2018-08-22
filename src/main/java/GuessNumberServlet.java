import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "Guess", urlPatterns = "/guess")

public class GuessNumberServlet extends HttpServlet {
   public static int random = (int) (Math.random() * 100) + 1;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String guess = request.getParameter("guess");
        String higher = "higher";
        String lower = "lower";
        int guessNum;


           if (guess != null) {
               guessNum = Integer.parseInt(guess);
               if (guessNum == random) {
                   request.getRequestDispatcher("/winner.jsp").forward(request, response);
               } else {
                   if (guessNum < random) {
                       request.setAttribute("higher", higher);
                       request.getRequestDispatcher("/guessNumber.jsp").forward(request, response);
                   } else {
                       request.setAttribute("lower", lower);
                       request.getRequestDispatcher("/guessNumber.jsp").forward(request, response);
                   }
               }
           }

           request.getRequestDispatcher("/guessNumber.jsp").forward(request, response);




    }

}