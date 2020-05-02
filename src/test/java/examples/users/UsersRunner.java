package examples.users;

import org.junit.BeforeClass;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "pre-prod");
	}

	@Karate.Test
	Karate testUsers() {

		return Karate.run("users").relativeTo(getClass());
	}

}
