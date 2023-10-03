package mvc.repositoryRest;

import mvc.entityRest.BookEntityRest;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

@Repository
public class BookRepositoryRest {
    private List<BookEntityRest> bookList = new ArrayList<>();
    @PostConstruct
    public void init(){
        bookList.add(new BookEntityRest(1,"Java A-Z",13.2,"Roger"));
        bookList.add(new BookEntityRest(2,".Net tutorial", 23.9,"Peter"));
    }
    public List<BookEntityRest> findAll(){
        return bookList;
    }
    public BookEntityRest save(BookEntityRest bookEntityRest){
        bookList.add(bookEntityRest);
        return bookEntityRest;
    }
    public BookEntityRest update(BookEntityRest newBookData) {
        boolean isFound = false;
        BookEntityRest foundBook = null;

        for (BookEntityRest book: bookList) {
            if(book.getId() == newBookData.getId()){
                isFound = true;
                foundBook = book;
                break;
            }
        }
        if (!isFound){
            return null;
        }
        bookList.remove(foundBook);
        newBookData.setId(foundBook.getId());
        bookList.add(newBookData);
        return newBookData;
    }
    public boolean delete(int bookID){
        boolean isFound = false;
        BookEntityRest foundBook = null;
        for(BookEntityRest book: bookList){
            if(book.getId() == bookID){
                isFound = true;
                foundBook = book;
                break;
            }
        }
        if (!isFound){
            return false;
        }
        bookList.remove(foundBook);
        return true;
    }
}