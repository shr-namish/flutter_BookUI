import 'package:flutter/material.dart';
import 'package:flutternew/constant/sies.dart';
import 'package:flutternew/models/book.dart';

class DetailPage extends StatelessWidget {

  final Book book;
  DetailPage(this.book);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Image.network(book.ImageUrl,height: 300,width: double.infinity,fit: BoxFit.fitWidth,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(book.title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(book.ratings),
                            TextButton(onPressed: (){}, child: Text(book.genre))
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(book.details, style: TextStyle(fontSize: 16,color: Colors.blueGrey),),
                  gapH20,
                  gapH20,
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('Read Book')),
                      ElevatedButton(onPressed: (){}, child: Text('Close')),

                    ],
                  )
                  
                ],
              ),
            )

          ],
        )
    );
  }
}
