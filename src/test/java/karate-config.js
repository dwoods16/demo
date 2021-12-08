function fn() {
    var config = {
        // Set url variable for application
        baseUrl: 'http://qainterview.pythonanywhere.com/',
    }
    // Set variable for location of data helper
    config.testData = Java.type('utils.DataHelper');

    // Set chrome native driver
    karate.configure('driver', { "type": "chrome"} );

    return config;
}