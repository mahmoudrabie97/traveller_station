import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveller_station/pages/googlemaps/google_map_psge.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';
import 'package:traveller_station/utilites/widgets/customtextformfield.dart';

class DetectLocationPage extends StatelessWidget {
  DetectLocationPage({super.key});
  final TextEditingController _locationController = TextEditingController();
  final FocusNode field1 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Detect Location',
          fontSize: 18,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_searching_rounded,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: CustomTextFormField(
                      controller: _locationController,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return 'please enter the detect location';
                        }
                        return null;
                      },
                      focusnode: field1,
                      hintText: ' Where?',
                      hinnntcolr: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const locationlistItem();
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class locationlistItem extends StatelessWidget {
  const locationlistItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(GoogleMapPage());
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.location_on_outlined),
            CustomText(
              text: 'Shrewsbury,Pennsylvania(PA)',
              fontSize: 17,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
