package mvc.controllerRest;

import mvc.entityRest.BookEntityRest;

import mvc.repositoryRest.BookRepositoryRest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/restbook")

public class BookControllerRest {
    @Autowired
    BookRepositoryRest bookRepositoryRest;

    @RequestMapping(method = RequestMethod.GET)
    public Object getAllBook(){
        List<BookEntityRest> bookEntityRestList = bookRepositoryRest.findAll();

        return bookEntityRestList;
    }
    @RequestMapping(method = RequestMethod.POST)
    public Object addNewBook(@RequestBody BookEntityRest newBookEntityRest){
        BookEntityRest result = bookRepositoryRest.save(newBookEntityRest);
        return result;
    }
    @RequestMapping(method = RequestMethod.PUT)
    public Object updateBook(@RequestBody BookEntityRest updateBookEntityRest){
        BookEntityRest result = bookRepositoryRest.update(updateBookEntityRest);
        if(result == null){
            Map<String, String> error = new HashMap<String, String>(){{
                put("error", updateBookEntityRest.getId()+" does not exist");
            }};
            return error;
        }
        return result;
    }
    @RequestMapping(value = "/{bookID}", method = RequestMethod.DELETE)
    public Object deleteBook(@PathVariable(value = "bookID") String bookID){
        Boolean result = bookRepositoryRest.delete(Integer.valueOf(bookID));
        if(!result){
            Map<String, String> error = new HashMap<String, String>(){{
                put("eroor","A book which book ID = " + bookID + " does not exist");
            }};
            return error;
        }else {
            Map<String, String> success = new HashMap<String, String>(){{
                put("success", "A book which book ID = " +bookID + " has been deleted successfully");
            }};
            return success;
        }
    }
}