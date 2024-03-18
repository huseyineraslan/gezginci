import 'package:flutter/material.dart';

class MesajIcerikSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesaj İçeriği'),
      ),
      body: Center(
        child: Text('Mesaj içeriği buraya gelecek'),
      ),
    );
  }
}

class GezginciyimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gezginci'),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gezgincilogo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Merhaba Gezginci',
                    style: TextStyle(fontSize: 40, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EskiSiparislerSayfasi()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                    ),
                    child: Text('Siparişler', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YeniSiparisSayfasi()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                    ),
                    child: Text('Gezi Planla', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MesajlarSayfasi()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      'Mesajlar',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EskiSiparislerSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eski Siparişler'),
      ),
      body: Center(
        child: Text('Henüz Almış Olduğunuz Sipariş Yok'),
      ),
    );
  }
}

class YeniSiparisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Gezi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Tarih'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Uğrayacağınız Şehirler'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nerden'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nereye'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Açıklama'),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Geziyi Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}

class MesajlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesajlar'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Ziya Yılmaz'),
            subtitle: Text('Ankaradan geleceğini gördüm benim için akrabalarımdan bir paket alabilirmisin.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MesajIcerikSayfasi()),
              );
            },
          ),
          ListTile(
            title: Text('Şenol Güneş'),
            subtitle: Text('Bir ay sonra Trabzondan gelecekmişsin benim için ekmek getirirmisin'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MesajIcerikSayfasi()),
              );
            },
          ),
        ],
      ),
    );
  }
}
