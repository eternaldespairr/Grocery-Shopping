import 'package:flutter/material.dart';




class Homepage extends StatelessWidget {
  int count_water=0;
  int count_banana=0;
  int count_chicken=0;
  int count_avocado=0;

  Homepage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Text("Total Cost: ${count_avocado+count_chicken+count_banana+count_water}");

        },
        child: Icon(Icons.local_grocery_store),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Good Morning,"),
              ),
              const SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Let's order fresh items for you ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38
                ),),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text("Fresh items",style: TextStyle(fontSize: 17),),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        count_water+=4;

                      } ,
                      child: Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.all(Radius.circular(22)),
                          color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: Column(
                            children: [
                              Image.asset("lib/Resimler/water.png"),
                              SizedBox(height: 14,),
                              Text("4 TL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        count_banana+=5;
                      } ,
                      child: Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(22))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: Column(
                            children: [
                              Image.asset("lib/Resimler/banana.png"),
                              SizedBox(height: 14,),
                              Text("5 TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black38),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 120,top: 40),
                    child: GestureDetector(
                      onTap: () {
                        count_chicken+=88;
                      } ,
                      child: Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.all(Radius.circular(22))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: Column(
                            children: [
                              Image.asset("lib/Resimler/chicken.png"),
                              SizedBox(height: 14,),
                              Text("88 TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black38),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50,bottom: 120,top: 40),
                    child: GestureDetector(
                      onTap: () {
                        count_avocado+=45;
                      } ,
                      child: Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(22))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: Column(
                            children: [
                              Image.asset("lib/Resimler/avocado.png"),
                              SizedBox(height: 14,),
                              Text("45 TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black38),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],

              ),




            ],
          ),
        ),
      ),

    );
  }




}
