package examples.graphql;

import com.intuit.karate.junit5.Karate;

/**
 *
 * @author pthomas3
 */

public class GraphqlStandaloneRunner {

	@Karate.Test
	Karate testGraphQl() {
		return Karate.run("graphql").relativeTo(getClass());
	}
}