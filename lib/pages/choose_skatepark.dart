import 'package:flutter/material.dart';
import 'package:skate_guide_cali_mk6/services/weather.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  bool isSearching = false;

  List<WorldWeather> weatherlocations = [
    WorldWeather(
        city: 'ripon,us',
        skateparkname: 'Curt Pernice Skatepark',
        address: '1250 Hughes Ln Ripon, CA 95366',
        parksize: '30,000 sqft',
        lights: 'no',
        padrequirement: 'helmet required, pads optional',
        skateparkPicture1: 'curt_pernice_skatepark.jpg',
        times: 'Monday - Sunday:  Dawn - Dusk',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'san+jose,us',
        skateparkname: 'Lake Cunningham Regional Skatepark',
        address: '2305 S White Rd, San Jose CA 95148',
        parksize: '80,000 sqft',
        lights: 'yes',
        padrequirement:
        'helmet required, pads required in certain parts of the park ',
        skateparkPicture1: 'lake_cunningham_regional_skatepark(1).jpg',
        times: 'Monday - Sunday:  8:00AM - 8:00PM ',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'encinitas,us',
        skateparkname: 'Magdalena Ecke YMCA Skatepark',
        address: '200 Saxony Rd Encinitas, CA 92024',
        parksize: '37,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'magdalena_ecke_ymca_skatepark.jpg',
        times: 'Monday - Friday:  3:00PM - 7:30PM\nSaturday - Sunday:  9:00AM - 5:00PM ',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'culver+city,us',
        skateparkname: 'Stoner Skatepark',
        address: '1835 Stoner Ave #1801, Los Angeles, CA 90025',
        parksize: '26,500 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  10:00AM - 7:00PM',
        skateparkPicture1: 'stoner_skatepark.jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'sacramento,us',
        skateparkname: 'Tanzanite Skatepark ',
        address: '2220 Tanzanite Avenue, Sacramento, CA 95834',
        parksize: '16,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'tanzanite_skatepark.jpg',
        times: 'Monday - Sunday:  8:00AM - 9:00PM',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'santa+monica,us',
        skateparkname: 'The Cove Skatepark',
        address: '1401 Olympic Blvd, Santa Monica, CA 90404',
        parksize: '20,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'the_cove_skatepark.jpg',
        times:
        'Monday - Friday:  1:00PM - 8:00PM\nSaturday:  12:00PM - 6:00PM\nSunday:  12:00PM - 7:00PM',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'huntington+beach,us',
        skateparkname: 'Vans "Off The Wall" Skatepark',
        address: '7471 Center Ave, Huntington Beach, CA 92647',
        parksize: '35,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'vens_off_the_wall_skatepark.jpg',
        times: 'TEMPORARILY CLOSED',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'orange+county',
        skateparkname: 'Vans Skatepark',
        address: '20 City Blvd W Suite 2, Orange, CA 92868',
        parksize: '20,000 sqft',
        lights: 'yes',
        padrequirement:
        'helmet & pads required (unless 18 or over, only helmet required)',
        skateparkPicture1: 'vans_orange_county_skatepark.jpg',
        times:
        'Monday - Thursday:  11:00AM - 7:00PM\nFriday - Saturday:  10:00AM - 8:00PM\nSunday:  12:00PM - 6:00PM',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'venice,us',
        skateparkname: 'Venice Beach Skatepark',
        address: '1800 Ocean Front Walk, Venice CA 90291',
        parksize: '16,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        skateparkPicture1: 'venice_beach_skatepark.jpg',
        times: 'Monday - Sunday:  Dawn - Dusk',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Linda Vista Skatepark',
        address: ' 6893 Osler St, San Diego, CA 92111',
        parksize: '34,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 9:00PM',
        skateparkPicture1: 'linda_vista_skatepark.jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'oakland,us',
        skateparkname: 'Town Park Skatepark ',
        address: '1651 Adeline St, Oakland, CA 94607',
        parksize: '8,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  12:00PM - 6:00PM\nSaturday - Sunday:  12:00PM - 5PM',
        skateparkPicture1: 'town_park_skatepark.jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'san+francisco,us',
        skateparkname: 'SoMa West Skatepark',
        address: 'Central Fwy, San Francisco, CA 94103',
        parksize: '3,500 sqft',
        lights: 'no',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  9:00AM - 9:00PM',
        skateparkPicture1: 'soma_west_skatepark.jpg',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'fremont,us',
        skateparkname: 'Fremont Skatepark',
        address: '40500 Paseo Padre Pkwy, Fremont, CA 94538',
        parksize: '43,560 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 8:00PM',
        skateparkPicture1: 'fremont_skatepark.jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'pasadena,us',
        skateparkname: 'Garvanza Skatepark',
        address: '6240 Meridian St, Los Angeles, CA 90042',
        parksize: '2,500 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 6:00PM',
        skateparkPicture1: 'garvanza_skatepark.jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'san+francisco,us',
        skateparkname: 'Potrero Del Sol Skatepark',
        address: '2827 Cesar Chavez, San Francisco, CA 94110',
        parksize: '16,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'potrero_del_sol_skatepark.jpg',
        region: 'Silicon Valley',
    ),

  ];
  List<WorldWeather> filteredSkateParks = [];

  void updateWeather(index) async {
    WorldWeather instance = filteredSkateParks[index];
    await instance.getWeather();
    //navigate to home screen
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.skateparkname,
      'skateparkPicture1': instance.skateparkPicture1,
      'weather': instance.weather,
      'address': instance.address,
      'parksize': instance.parksize,
      'lights': instance.lights,
      'padrequirement': instance.padrequirement,
      'times': instance.times,
    });
  }

  String _selectedRegion = 'A';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _filterSkateParks('');
    _selectedRegion =
        (ModalRoute.of(context)!.settings.arguments as Map)['region']
            .toString();
    print("region: $_selectedRegion");
    _filterSkateParks('');
  }

  void _filterSkateParks(value) {
    filteredSkateParks = weatherlocations
        .where((WorldWeather weatherData) =>
    weatherData.skateparkname!
        .toLowerCase()
        .contains(value.toString().toLowerCase()) &&
        weatherData.region == _selectedRegion)
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: !isSearching
            ? const Text('Choose a Skatepark')
            : TextField(
          onChanged: (value) {
            _filterSkateParks(value);
          },
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search Skatepark Here",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearching = false;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = true;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredSkateParks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateWeather(index);
                },
                title: Text(filteredSkateParks[index].skateparkname.toString()),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/${filteredSkateParks[index].skateparkPicture1}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}