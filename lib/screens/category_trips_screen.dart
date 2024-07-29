//el file htha fih elpage ely yemchilha ki tenzel 3al wahda mel categoire
import 'package:flutter/material.dart';
import '../widgets/app_data.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRoute = '/category-trips';

  const CategoryTripsScreen({super.key});
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryTripsScreen(
  //     {super.key, required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgument['title'];
    final categoryId = routeArgument['Id'];
    final filterTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      //3melna scaffold hitha safha mosta9ela
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(filterTrips[index].title);
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
