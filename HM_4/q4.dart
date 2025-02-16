/*Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name.
*/
void main() {
  Weather wether = Weather();

  wether.addCity("New York", 22, 60);
  wether.addCity("Los Angeles", 28, 50);
  wether.addCity("Chicago", 18, 70);

  wether.display("New York");
  wether.display("Los Angeles");
  wether.display("Chicago");
  wether.display("Miami");
}

class Weather {
  Map<String, Map<String, dynamic>> weatherlist = {};

  void addCity(String city, int temperature, int humidity) {
    weatherlist[city] = {"Temperature": temperature, "Humidity": humidity};

  }    

  void display(String city) {
    if (weatherlist.containsKey(city)) {
      print("Weather in $city:");
      weatherlist[city]!.forEach((key, value) {
        print("$key: $value");
      });
    } else {
      print("Weather data for $city not found.");
    }
  }
}
