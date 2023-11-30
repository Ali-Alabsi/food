import 'package:flutter/material.dart';
import '../../../core/shared/color.dart';
class Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Theme.of(context).secondaryHeaderColor,
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
            itemBuilder: (context , index ) =>  Container(
              height: 120,
              padding: EdgeInsetsDirectional.all(10),
              margin: EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                  color:   Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: Offset.zero,
                        blurRadius: 2,
                        spreadRadius: 2
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        boxShadow: [
                          BoxShadow(
                              color: mainColor.withOpacity(0.3),
                              offset: Offset.zero,
                              blurRadius: 3,
                              spreadRadius: 3
                          )
                        ]
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset('assets/image/login.jpg' , fit: BoxFit.cover, width: 150, height: 150, ),
                  ),
                  Container(
                    // height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chery Salad", style: TextStyle(fontSize: 22 , color: mainColor, fontWeight: FontWeight.w900),),
                        Text('10\$' , style: TextStyle(color:  Colors.grey  , fontSize: 22 ),),

                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text('-' ,style: TextStyle(fontSize: 22 , color:   Theme.of(context).secondaryHeaderColor),),
                            height: 30,
                            width: 30,
                            alignment: AlignmentDirectional.topCenter,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text('02' , style: TextStyle(fontSize: 24 , color: Colors.grey ),),
                          SizedBox(width: 3,),
                          Container(
                            child: Icon(Icons.add , color:   Theme.of(context).secondaryHeaderColor,),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      Text('10\$' , style: TextStyle(color: Colors.grey , fontSize: 22 ),),
                    ],
                  )
                ],
              ),
            ),
            separatorBuilder: (context , index )=>SizedBox(height: 20,),
            itemCount: 20)
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.only(
          top: 20,
          start: 20,
          end: 20
        ),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color:   Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset.zero,
                  blurRadius: 3,
                  spreadRadius: 3
              )
            ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Price' ,style: TextStyle(color: mainColor, fontSize: 20),),
                Row(
                  children: [
                    Text('10\$' , style: TextStyle(color:  mainColor  , fontSize: 22 ),),
                    SizedBox(width: 75,)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){}, child: Text('Apply' ,style: TextStyle(fontSize: 18),)))
          ],
        ),
      ),
    );
  }
}
