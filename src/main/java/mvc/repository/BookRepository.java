package mvc.repository;

import mvc.entity.BookEntity;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends CrudRepository<BookEntity,Integer> {
    List<BookEntity> findByNameContainingOrAuthorContaining(String name,String author);
//
//    void deleteById(int id);
//
//    void save(BookEntity book);
//
//    void update(BookEntity book);
//
//    BookEntity findOne(int id);
//
//    Object findAll();
////    List<BookEntity> findAll();
////    void deleteById(int id);
////
//////    List<BookEntity> search(String searchInput);
//////    public Object save(BookEntity book);
////
////    void update(BookEntity book);
////
////    BookEntity findOne(int id);

}
