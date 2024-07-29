import 'package:flutter/material.dart';
import 'package:travel_app/screens/category_trips_screen.dart';

//3arth 3onser wehed mel tasnifet
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CategoryItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.id});
  void selectCategory(BuildContext ctx) {
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(
    //     builder: (c) => CategoryTripsScreen(categoryId: ' ', categoryTitle: '',),
    //   ),
    // ); //tna9al bin safhat el safhat houma des pages fou9 b3athhom kol mara tzid safha
    Navigator.of(ctx).pushNamed(CategoryTripsScreen.screenRoute, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    //stack hyt enty mech thot barcha hajet fou9 b3athhem
    return InkWell(
      //hthy thot biha el stack clickable hyt stack wel contianer mafihom l5asey hthy
      onTap: () => selectCategory,
      splashColor:
          Theme.of(context).primaryColor, //ki tenzl 3liha yetbedel elcolor
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            //Creates a rounded-rectangular clip.
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            // color: Colors.black.withOpacity(0.4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(
                  0.4), //lezm ki testa3melha wtesta3mel box decoration tkoun hya fil box
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
