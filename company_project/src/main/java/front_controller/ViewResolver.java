package front_controller;

public class ViewResolver {
   public static String makeView(String nextPage) {
      return "/WEB-INF/viewPage/" + nextPage + ".jsp";
   }
}
