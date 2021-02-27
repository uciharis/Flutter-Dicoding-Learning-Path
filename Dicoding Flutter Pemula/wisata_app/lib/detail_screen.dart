import 'package:flutter/material.dart';
import 'price_screen.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7.0),
                    bottomRight: Radius.circular(7.0),
                  ),
                  child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(
                    top: 10.0, right: 30.0, left: 30.0, bottom: 20.0),
                child: Text(
                  'Farm House Bandung',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'ProductSansLight',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PriceScreen();
                              }));
                            }),
                        SizedBox(height: 10.0),
                        Text(
                          'Open Everyday',
                          style: TextStyle(fontFamily: 'ProductSansLight'),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.access_time),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PriceScreen();
                              }));
                            }),
                        SizedBox(height: 10.0),
                        Text(
                          '09.00-20.00',
                          style: TextStyle(fontFamily: 'ProductSansLight'),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.attach_money),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PriceScreen();
                              }));
                            }),
                        SizedBox(height: 10.0),
                        Text(
                          'Rp 25.000',
                          style: TextStyle(fontFamily: 'ProductSansLight'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Berada dijalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah Sepi pengunjung. Selain letaknya yang strategis, kawasan ini juga mewarkan nuansa Eropa, dan tidak lupa cocok untuk instagramable',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 0.2,
                      fontFamily: 'ProductSansLight'),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
