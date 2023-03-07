import 'package:flutter/material.dart';

import 'detaipage.dart';

class signup extends StatefulWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
        actions: [
          Icon(Icons.filter_list, color: Colors.white,),
          SizedBox(width: 30,),
          Icon(Icons.menu, color: Colors.white,),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.15,
            
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Text('Healthy',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Text('Food',style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 30, ),)
                ],
              ),
            ),

          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.732,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 20, right: 20),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.58,
                    child: ListView(
                      children: [
                          _buildfooditem('assets/plate1.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/plate2.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/plate3.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/plate4.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/plate5.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/plate6.png', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/samosa.jpg', 'Salmon Bowl', '\$24.00'),
                          _buildfooditem('assets/gulabjamun.jpg', 'Salmon Bowl', '\$24.00'),
                        


                      ],
                    ),
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Icon(Icons.search, color: Colors.black,),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Icon(Icons.shop, color: Colors.black,),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text('Checkout', style: TextStyle(color: Colors.white),),),
                      ),
                    ],
                  ),
                )

              ],),

          )
      ],)
      ,
      
    );
  }
  Widget _buildfooditem(String imgpath, String foodname, String foodprice){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell
      (
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
          detailpage(herotag: imgpath, name: foodname,price: foodprice,)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: 
              Row(
                children: [
                  Hero(
                    tag: imgpath,
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(imgpath), 
                          fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(foodname, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text(foodprice, style: TextStyle(color: Colors.grey, fontSize: 15, ),),
                    ],)

                ],
              ),
            ),
            IconButton(onPressed: (){},
             icon: Icon(Icons.add, color: Colors.black,))
          ],
        )
      ),
    );
  }
}