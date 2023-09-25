package mvc.utils;

import mvc.entity.CategoryEntity;

public class CategoryUtils {
    public static CategoryEntity getBookCategory(int id){
        CategoryEntity category = new CategoryEntity();
        category.setId(id);
        if (id == 1){
            category.setName("IT");
            category.setDescription("IT Books");
        }else if (id == 2 ){
            category.setName("Math");
            category.setDescription("Mathematics Books");
        }
        return category;
    }
}
