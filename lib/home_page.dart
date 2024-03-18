import 'package:flutter/material.dart';
import 'gezginciyim_page.dart';
import 'products_page.dart';
import 'login_page.dart';
import 'sign_up_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gezginci'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gezgincilogo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hoş Geldiniz!',
                style: TextStyle(fontSize: 40, color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text('Gezgincileri Göster', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text('Üye Girişi', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text('Üye Ol', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GezginciyimPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text('Gezginciyim', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siparişlerim'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Belirsiz-5kg koli'),
            subtitle: Text('Ayşe Uğur Gezgini Tarafından 20.03.2024 Tarihinde Edirneden Bulunduğunuz Konuma Getirilecektir'),
          ),
          ListTile(
            title: Text('Hatay Salça-4kg'),
            subtitle: Text('Kerem Işık Gezgini Tarafından 01.05.2024 Tarihinde Hataydan İstanbula Getirilecektir'),
          ),
          SizedBox(height: 20), // Butonlar arasına boşluk ekleyelim
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Güvenle Öde'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Gezgini Puanla'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
