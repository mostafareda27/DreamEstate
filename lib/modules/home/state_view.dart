import 'package:dream_estate_project/modules/home/state_model.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../apartments/apartments.dart';

class StateCardView extends StatelessWidget {
  late StateModel stateData ;
   StateCardView({Key? key,required this.stateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: ()
      {
        navigateTo(context, ApartmentsScreen());
      },
      child: Container(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0)
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children:
              [
                const Image(
                  image:AssetImage('assets/images/apartment.jpg'),
                ),
                Container(
                  width:double.infinity,
                  color: Colors.black.withOpacity(0.6),
                  padding:  const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child:  Text(
                    stateData.companyName,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
