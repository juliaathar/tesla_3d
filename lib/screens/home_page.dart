import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:o3d/o3d.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  O3DController _controller = O3DController();



  @override
  void initState() {
    super.initState();
    animateCamera();
  }

  void animateCamera() async {
    await Future.delayed(Duration(seconds: 2));
    _controller.cameraOrbit(100, 300, 10);
    await Future.delayed(Duration(seconds: 2));
    _controller.cameraOrbit(4000, 20, 2000);
    await Future.delayed(Duration(seconds: 1));
    _controller.cameraOrbit(30, 200, 390);
    await Future.delayed(Duration(seconds: 2));
    _controller.cameraOrbit(1000, 2000, 30);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff16171B),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/user.png"),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff16171B)
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: 400,
              height: 350,
              child: O3D(
                cameraControls: false,
                src: "assets/car.glb",
              ),
            ),
            Text(
              "Your car",
              style: GoogleFonts.leagueSpartan(
                fontSize: 16,
                color: Color(0xffEFF1FE)
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Brand New Model 3",
              style: GoogleFonts.kronaOne(
                fontSize: 20,
                  color: Color(0xffEFF1FE)
              ),
            ),
            SizedBox(
              height: 35,
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff24252B),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Car location",
                              style: GoogleFonts.leagueSpartan(
                                  fontSize: 18,
                                  color: Color(0xffEFF1FE)
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(
                              Symbols.location_on,
                              color: Color(0xff5E606A),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            "123 Main Street, Anytown, USA, 12345",
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEFF1FE)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    Container(
                      child: Image(
                          image:AssetImage(
                        "assets/map.png"
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Row(
                children: [
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xff24252B),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Battery",
                                style: GoogleFonts.leagueSpartan(
                                  fontSize: 18,
                                  color: Color(0xffEFF1FE)
                                ),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Icon(
                                  Symbols.battery_horiz_050,
                                color: Color(0xff5E606A),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "73%",
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Color(0xffEFF1FE)
                            ),
                          )
                          ,
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "3 hours of battery life",
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 12,
                              color: Color(0xffEFF1FE)
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Color(0xff24252B),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Mileage",
                                style: GoogleFonts.leagueSpartan(
                                    fontSize: 18,
                                    color: Color(0xffEFF1FE)
                                ),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Icon(
                                Symbols.avg_pace,
                                color: Color(0xff5E606A),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "90 Km",
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Color(0xffEFF1FE)
                            ),
                          )
                          ,
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "/1kWh",
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 12,
                                color: Color(0xffEFF1FE)
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
