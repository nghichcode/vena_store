import 'package:flutter/material.dart';

class ZooStackCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 18, top: 46),
          child: Card(
            shadowColor: Colors.amber,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 40, top: 60),
                      child: Column(
                        children: [
                          Text(
                            'Nguyễn Văn Nam',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'nvn@abc.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        Container(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber.shade800
                          .withOpacity(0.3),
                      offset: const Offset(-4, 10),
                      blurRadius: 60.0,
                    ), //BoxShadow
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: AssetImage('images/shops.png'),
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage('images/boy.png'),
            //   // child: Image.asset('images/boy.png'),
            //   backgroundColor: Colors.red,
            //   radius: 50,
            // )
          ),
        ),
      ],
    );
  }
}
