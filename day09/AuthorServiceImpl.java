package author;

import java.util.List;

public class AuthorServiceImpl implements IAuthorService {
	private AuthorRepository repo;
	
	public AuthorServiceImpl() {
		repo = new AuthorRepository();
	}

	@Override
	public List<Author> getAll() {
		return repo.getAll();
	}

	@Override
	public int add(Author author) {
		return repo.add(author);
	}

	@Override
	public int delete(int id) {
		return repo.delete(id);
	}

}
