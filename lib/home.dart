import 'package:flutter/material.dart';
import 'package:group_project/navBar.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('PetSetGO!', style: TextStyle(fontFamily: 'Calibri')),
          backgroundColor: Colors.greenAccent[400],
        ),
        drawer: NavBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 40, 0),
              child: Text('Top Sitters Around You',
              style: TextStyle(
                color: Colors.grey[700],
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: ClipOval(
                                child: Image.asset('assets/profile1.jpg',
                                  height: 90, width: 90, fit: BoxFit.cover)
                                ),
                                radius: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex:2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Partha Sarathi', style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('0.9 km away', style: TextStyle(fontFamily: 'Calibri')),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow[800]),
                                        Text('4.5', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(onPressed: () {
                                  Navigator.pushNamed(context, '/confirmReqst');
                                  },
                                    icon: Icon(Icons.chat_bubble, size: 40,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: ClipOval(
                                  child: Image.asset('assets/profile1.jpg',
                                      height: 90, width: 90, fit: BoxFit.cover)
                              ),
                                radius: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex:2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Aditya Dutta', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('1.3 km away', style: TextStyle(fontFamily: 'Calibri')),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow[800]),
                                        Text('4.3', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(onPressed: () {
                                  Navigator.pushNamed(context, '/confirmReqst');
                                },
                                    icon: Icon(Icons.chat_bubble, size: 40,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: ClipOval(
                                  child: Image.asset('assets/profile1.jpg',
                                      height: 90, width: 90, fit: BoxFit.cover)
                              ),
                                radius: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex:2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Md. Tarif Shahriar', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('0.6 km away', style: TextStyle(fontFamily: 'Calibri')),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow[800]),
                                        Text('4.0', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(onPressed: () {
                                  Navigator.pushNamed(context, '/confirmReqst');
                                  },
                                    icon: Icon(Icons.chat_bubble, size: 40,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: ClipOval(
                                  child: Image.asset('assets/profile1.jpg',
                                      height: 90, width: 90, fit: BoxFit.cover)
                              ),
                                radius: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex:2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Shiara Tabassum', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('1.8 km away', style: TextStyle(fontFamily: 'Calibri')),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow[800]),
                                        Text('4.0', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(onPressed: () {
                                  Navigator.pushNamed(context, '/confirmReqst');
                                },
                                    icon: Icon(Icons.chat_bubble, size: 40,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(child: ClipOval(
                                  child: Image.asset('assets/profile1.jpg',
                                      height: 90, width: 90, fit: BoxFit.cover)
                              ),
                                radius: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex:2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Iqbal Hossain', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('1.1 km away', style: TextStyle(fontFamily: 'Calibri')),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow[800]),
                                        Text('3.9', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(onPressed: () {
                                  Navigator.pushNamed(context, '/confirmReqst');
                                  },
                                    icon: Icon(Icons.chat_bubble, size: 40,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

