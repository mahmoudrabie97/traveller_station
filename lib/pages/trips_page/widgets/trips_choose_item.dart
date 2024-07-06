import 'package:flutter/material.dart';
import 'package:traveller_station/pages/trip_details_page/trip_details_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class TripsChoosingGridItem extends StatelessWidget {
  const TripsChoosingGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(TripDetailsPage());
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, right: 5, left: 5, bottom: 5),
        child: Container(
          width: 200,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/Mask Group 1.png',
                  // width: 200,
                  height: 105,
                  // width: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 22.0,
                left: 15,
                child: Container(
                  color: Colors.blue,
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 9, right: 9),
                    child: Text(
                      '15% off',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 80,
                left: 45,
                child: CustomText(
                  text: '(4.8)',
                  color: Colors.grey,
                ),
              ),
              const Positioned(
                bottom: 80,
                left: 16,
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              Positioned(
                top: 112,
                right: 5,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                ),
              ),
              const Positioned(
                bottom: 5.0,
                left: 16.0,
                child: Text(
                  '\$99.99',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                bottom: 5.0,
                right: 16.0,
                child: Icon(
                  Icons.add_box_outlined,
                  color: Colors.blue,
                ),
              ),
              const Positioned(
                bottom: 52,
                left: 16,
                child: CustomText(text: 'Hajj Trip'),
              ),
              const Positioned(
                  bottom: 40,
                  left: 16,
                  child: CustomText(
                    text: 'Makkah, Saudi',
                    color: Colors.grey,
                    fontSize: 12,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
