
import 'package:dream_estate_project/modules/apartments/apartments.dart';
import 'package:dream_estate_project/modules/chalets/chalets.dart';
import 'package:dream_estate_project/modules/duplexes/duplexes.dart';
import 'package:dream_estate_project/modules/login/login_screen.dart';
import 'package:dream_estate_project/modules/search/search.dart';
import 'package:dream_estate_project/modules/villas/villas.dart';
import 'package:dream_estate_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading:const Image
          (
          image: AssetImage('assets/images/o.png'),
          fit: BoxFit.cover,

          width: 160,
          height: 140,

        ),
        title: Row(
          children: [

            SizedBox(
              width: 10.0,
            ),
            Text(
              'Home',
              style: TextStyle(
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 17.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.menu,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                ),
                decoration:
                BoxDecoration(
                 // color: Colors.grey[300],
                ),
                child: TextFormField(

                  decoration: const InputDecoration(

                      labelText: 'Search',
                      prefixIcon: Icon(
                          Icons.search
                      )  ,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0,),
                          ),
                      ),
                  ),

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 102.0 ,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,

               ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              const Text('Our Recommendtions:',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStoryItem() =>
    Container(
      width: 60.0,
      child: Column(
        children: [
          Stack(
           // alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage
                  ('assets/images/ezz.png'
                ),
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Dream Estate',
            textAlign: TextAlign.center ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );



