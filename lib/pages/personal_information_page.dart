import 'package:comia_lab_act_1/tempData/personal_info_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  int carouselImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 7),
            height: 400,
            child: FlutterCarousel(
              items: [
                for (int index = 0; index < myImages.length; index++)
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.shadow,
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                              myImages[index],
                            ),
                            fit: BoxFit.cover)),
                  )
              ],
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                enableInfiniteScroll: true,
                showIndicator: false,
                slideIndicator: CircularWaveSlideIndicator(),
                onPageChanged: (index, reason) {
                  setState(() {
                    carouselImageIndex = index;
                  });
                },
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(2, 3),
                )
              ],
            ),
            child: Text(
              "Benedict John D. Comia",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(left: 10, right: 7, top: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(2, 3),
                      )
                    ],
                  ),
                  child: Text(
                    "21",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 5, top: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(2, 3),
                      )
                    ],
                  ),
                  child: Text(
                    "Male",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(2, 3),
                      )
                    ],
                  ),
                  child: Text(
                    "06/16/03",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(2, 3),
                )
              ],
            ),
            child: Text(
              "Sitio Manggahan, Tulo, Batangas City, Batangas",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Container(
            width: double.infinity,
            height: 110,
            padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(2, 3),
                )
              ],
            ),
            child: Text(
              "Hi!, I am Benedict John D. Comia. I am currently studying at Batangas State University - The National Engineering University taking the program Bachelor of Science in Information Technology Major in Business Analytics.  Throughout my life, I have a life quote that pushed myself to strive hard which is to \"Keep Moving Forward\"."
              ,textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
