package mvc.repository;

import mvc.entity.BookDetailsEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookDetailsEntityRepo extends CrudRepository<BookDetailsEntity,Integer> {
//    List<BookEntity> bookEntityList;
////    @PostConstruct
////    public void init(){
////        final CategoryEntity categoryIT = new CategoryEntity(1,"IT","IT Books");
////        final CategoryEntity categoryMath = new CategoryEntity(2,"Math","Mathematics Books");
////        bookEntityList = new ArrayList<BookEntity>(){{
////            add(new BookEntity(1,"Java A-Z","Roger","32166562",15.2, LocalDate.now(),categoryIT));
////            add(new BookEntity(2,"Kotlin A-Z","Peter","321631315",19.3, LocalDate.now(),categoryIT));
////            add(new BookEntity(3,"Laplace","Will","3212165414",16.4, LocalDate.now(),categoryMath));
////            add(new BookEntity(4,"Math for Kids","Jennifer","326316546516",11.5, LocalDate.now(),categoryMath));
////
////        }};
////
////
////    }
//
//
//    @Override
//    public List<BookEntity> findByNameContainingOrAuthorContaining(String name, String author) {
//        return bookEntityList;
//    }
//
//
//
//
//    @Override
//    public void deleteById(int id) {
//        bookEntityList.remove(new BookEntity(id));
//    }
//
//    @Override
//    public List<BookEntity> search(String searchInput) {
//        searchInput =searchInput.toLowerCase();
//        List<BookEntity> resultList = new ArrayList<>();
//        for (BookEntity book:
//             bookEntityList) {
//            if(book.getName().toLowerCase().contains(searchInput)|| book.getAuthor().toLowerCase().contains(searchInput)|| book.getIsbn().toLowerCase().contains(searchInput) ){
//                resultList.add(book);
//            }
//        }
//        return resultList;
//    }
//
////    @Override
////    public void save(BookEntity book) {
////        book.setId(bookEntityList.size() + 1);
////        CategoryEntity category = CategoryUtils.getBookCategory(book.getCategory().getId());
////        book.setCategory(category);
////        bookEntityList.add(book);
////
////    }
////
////    @Override
////    public void update(BookEntity book) {
////        deleteById(book.getId());
////        bookEntityList.add(book);
////    }
////
////    @Override
////    public BookEntity findOne(int id) {
////        for (BookEntity book:
////             bookEntityList
////        ) {
////            if (book.getId() == id){
////                return book;
////            }
////        }
////        return null;
////    }
////
////    @Override
////    public List<BookEntity> findAll() {
////
////        return bookEntityList;
////    }
}
