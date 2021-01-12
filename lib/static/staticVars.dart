//this file contains the static variable for the web system url.

class StaticVars {
  //I've made the API URL variable as static because I want to access it
  // globally and I don't want to change it every time in the home file.
  static final apiUrl = url0;

  //I've created these two variables to make it easy for me to switch between
  // the API URL of the working web system and the testing one.
  static var url = "http://$ip/events/mobile/apis/";
  static var url0 = "http://$ip/apps/myapps/events/mobile/apis/";
  //This is the IP of the remote server that I'll use it when I want to test the
  // app on the remote server or to publish it.
  static var ip = "193.188.88.148";

  //This URL is for the local web system for the testing purposes.
  static var url1 = "http://10.77.30.66/apps/myapps/events/mobile/apis/";
}
