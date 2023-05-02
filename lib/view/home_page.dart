import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/constant/sies.dart';
import 'package:flutternew/models/book.dart';
import 'package:flutternew/view/detail_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F5F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F5F9),
          elevation: 0,
          title: Text('Hi Namish'),
          foregroundColor: Colors.black,
          actions: [
            Icon(CupertinoIcons.search),
            gapW10,
            Icon(CupertinoIcons.bell),
            gapW10,
          ],
        ),
        body: ListView(
          children: [
            Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/005/741/969/non_2x/online-learning-tutorials-concept-screen-with-female-teacher-vector.jpg',
                  fit: BoxFit.cover,)

            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 250,
                child: ListView.builder(
                    itemCount: books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder : (context, index){
                      final book = books[index];
                      return InkWell(
                        onTap: (){
                          Get.to(()=> DetailPage(book), transition: Transition.leftToRight);
                        },
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(right: 10),
                          width: 370,
                          child: Row(

                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(book.ImageUrl,width: 150,)),
                              gapW20,

                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(book.title, style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text(book.details, maxLines: 4,),
                                    Row(
                                      children: [
                                        Text(book.ratings),
                                        Text(book.genre),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Recommended Books', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            gapH20,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 340,
                child: ListView.builder(
                  itemCount: books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    final book = books[index];
                    return Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 10),
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image.network(book.ImageUrl,height: 300,fit: BoxFit.cover,),
                          Container(
                              height: 250,
                              child: Image.network(book.ImageUrl,fit: BoxFit.cover,),),
                          gapW20,

                          Padding(
                            padding: const EdgeInsets.only(right: 10,left: 10),
                            child: Column(
                              children: [
                                Text(book.title, style: TextStyle(fontWeight: FontWeight.bold),),
                                gapH10,
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Text(book.genre),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

              ),
            ),
          ],

        ),
    );
  }
}

