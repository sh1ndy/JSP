package author;

import java.util.List;

public interface IAuthorService {
	// 목록
	List<Author> getAll();
	
	//추가
	int add(Author author);
	
	//삭제
	int delete(int id);

}
