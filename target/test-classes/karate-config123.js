function fn() {
	var env = karate.env; // get java system property 'karate.env'
	karate.log('karate.env system property was:', env);
	if (!env) {
		env = 'dev'; // a custom 'intelligent' default
	}
	var config = {
		env : env,
		someUrlBase : 'https://reqres.in/api'
	};
	if (env == 'dev') {
		// over-ride only those that need to be
		config.someUrlBase = 'https://reqres.in/api';
	} else if (env == 'pre-prod') {
		config.someUrlBase = 'https://reqres.in/api';
	}

	// don't waste time waiting for a connection or if servers don't respond
	// within 5 seconds
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);

	return config;
}