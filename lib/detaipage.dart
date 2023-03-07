import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  final herotag;
  final name;
  final price;
  const detailpage({ Key? key, this.name , this.price, this.herotag}) : super(key: key);

  @override
  _detailpageState createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  var selectedcard= 'weight';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff719bee),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,), ),
          title: Text('Details', 
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){},
             icon: Icon(Icons.more_horiz))
          ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                
              ),
              Positioned(
                top:MediaQuery.of(context).size.height*0.15,
                child: Container(
                
                  height: MediaQuery.of(context).size.height *0.83,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
                  ),
                )
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.08,
                  
                  right: (MediaQuery.of(context).size.width/3)-30,
                  
                  child: Hero(
                    tag: widget.herotag,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(widget.herotag), fit: BoxFit.cover)
                      ),
                    ),
                  )
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.37,
                    

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(widget.name, 
                              style: TextStyle(color: Colors.black, fontSize: 22,
                               fontWeight: FontWeight.bold),),
                          
                             
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            
                            children: [
                              Text(widget.price, 
                              style: TextStyle(color: Colors.grey, fontSize: 18,
                               ),),
                               SizedBox(width: 100,),
                               Container(
                                 width: 2,
                                 height: 20,
                                 color: Colors.grey.withOpacity(0.6),
                               ),
                                SizedBox(width: 90,),
                               Container(
                                 height: 40,
                                 width: 110,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.blue
                                   ),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     
                                     children: [
                                       IconButton(
                                      onPressed: (){}, 
                                      icon: Icon(Icons.remove,),
                                      color: Colors.white,
                                      ),
                                      Text('2', style: TextStyle(color: Colors.white,fontSize: 18),),

                                      Center(
                                        child: IconButton(
                                        onPressed: (){}, 
                                        icon: Icon(Icons.add,),
                                        color: Colors.white,
                                        ),
                                      ),
                                     ],

                                   ),
                               )


                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: MediaQuery.of(context).size.height*0.3,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _buildlist('weight','32', 'tyir'),
                                SizedBox(width: 10,),
                                _buildlist('eight','32', 'tyir'),
                                 SizedBox(width: 10,),
                                _buildlist('wight','32', 'tyir')
                                  
                                
                              ],),

                          )
                        ],
                      ),
                    )
                    
                    
                    )
            ],
          )
        ],

      ),
      
    );
  }
  Widget _buildlist(String title, String num, String cat){
    return InkWell(
      onTap: (){
        setState(() {
          selectcard(title){
            selectedcard=title;
          };
          
        }
        );
      },
      child: AnimatedContainer(
        width: 100,
        height: 100,
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          color: (selectedcard==title)? Colors.blue:Colors.white,
          border: Border.all(
            color: (selectedcard==title)?Colors.transparent:Colors.grey.withOpacity(0.5),
            width: 2,
            style: BorderStyle.solid
          )
          
           ),
           child: Column(
             children: [
               Text(title, style: TextStyle(color: (selectedcard==title)?Colors.white:Colors.grey.withOpacity(0.4),
               fontSize: 18),)
             ],),
        ),
    );
  }
}