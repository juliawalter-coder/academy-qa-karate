/**
 * Reference: https://docs.karatelabs.io/core-syntax/configuration/
 * Karate configuration function.
 *
 * This function is automatically executed by Karate at the start of a test run.
 * It sets up environment-specific settings such as API URLs, users, and timeouts.
 *
 * @returns {Object} The configuration object for the current environment.
 *
 */
function fn() {
    /** Timeout for HTTP requests in milliseconds */
    const TIMEOUT = 5000;

    /** Environment-specific configuration */
    let env = karate.env || 'int';
    karate.log('karate.env system property was:', env);

    const config = {
//        env: env,
        apiUrl: "https://jsonplaceholder.typicode.com/"
//        pre: {apiUrl: "https://jsonplaceholder.typicode.com/"},
//        pro: {apiUrl: "https://jsonplaceholder.typicode.com/"}
    };

   /** if (env === 'int') {
        config.apiUrl = "https://jsonplaceholder.typicode.com/";
    } else if (env === 'pre') {
        config.apiUrl = "https://jsonplaceholder.typicode.com/";
    } else if (env ==='prod') {
        config.apiUrl = "https://jsonplaceholder.typicode.com/";
    }
    */

    // Configure Karate HTTP timeouts
    karate.configure('connectTimeout', TIMEOUT);
    karate.configure('readTimeout', TIMEOUT);

    // Return configuration for the selected environment
    return config
}
