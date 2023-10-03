package mvc;

import mvc.entityRest.BookEntityRest;
import org.springframework.web.client.RestTemplate;
import org.w3c.dom.stylesheets.LinkStyle;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

public class mainRest {
    static String url = "http://localhost:8081/restbook";
    public static void main(String[] args){
//        printAllBook();
//        insertBook();
//        updateExistingBook();
        deleteBook();
    }
    static void printAllBook(){
        RestTemplate restTemplate = new RestTemplate();
        BookEntityRest[] bookArray = restTemplate.getForObject(url, BookEntityRest[].class);
        List<BookEntityRest> bookEntityRestList = Arrays.asList(bookArray);
        System.out.println("fetched " + bookEntityRestList.size() + " from Rest API");
        for(BookEntityRest bookEntityRest: bookEntityRestList){
            System.out.println(bookEntityRest.getName() + " of " + bookEntityRest.getAuthor());
        }
    }
    static void insertBook(){
        RestTemplate restTemplate = new RestTemplate();
        BookEntityRest newBook = new BookEntityRest();
        newBook.setId(9);
        newBook.setName("RoR A-Z");
        newBook.setAuthor("Eric");
        newBook.setPrice(12.3);
        BookEntityRest result = restTemplate.postForObject(url,newBook , BookEntityRest.class);
        System.out.println("A new book named : '" + result.getName() + "'has been insert successfully");
    }
    static void updateExistingBook(){
        RestTemplate restTemplate = new RestTemplate();
        BookEntityRest updatedBook = new BookEntityRest();
        updatedBook.setId(1);
        updatedBook.setName("Hai");
        updatedBook.setAuthor("Tran");
        updatedBook.setPrice(10.2);
        restTemplate.put(url,updatedBook);
    }
    static void deleteBook(){
        RestTemplate restTemplate = new RestTemplate();
        String bookID = "1";
        String deleteURL = url + "/" + bookID;
        restTemplate.delete(deleteURL);
    }
}