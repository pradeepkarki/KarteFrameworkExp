package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

	/*
	 * @Karate.Test Karate testSample() { return
	 * Karate.run("sample").relativeTo(getClass()); }
	 * 
	 * @Karate.Test Karate testTags() { return
	 * Karate.run("tags").tags("@second").relativeTo(getClass()); }
	 * 
	 * @Karate.Test Karate testFullPath() { return
	 * Karate.run("classpath:karate/tags.feature").tags("@first"); }
	 */

	@Karate.Test
	Karate testSample() {
		return Karate.run("classpath:examples/users").relativeTo(getClass());
	}

}
