import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;

import author.Author;
import author.AuthorRepository;

public class TestRepository {
	
	private static AuthorRepository repo;
	
	@BeforeClass
	public static void setUp() {
		repo = new AuthorRepository();
	}

	@Test
	public void test() {
		List<Author> list = repo.getAll();
		assertNotEquals(0, list.size());
	}

}
