import 'package:flutter/material.dart';
import 'package:group_project/navBar.dart';

class Community extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Community', style: TextStyle(fontFamily: 'Calibri')),
        backgroundColor: Colors.greenAccent[400],
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 95, 0),
              child: Text("What's going on with your pet?",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 70),
                  labelStyle: TextStyle(
                    fontFamily: 'Calibri',
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(onPressed: () {
                //Navigator.pushNamed(context, '/accept');
              },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 60),
                  backgroundColor: Colors.greenAccent[400],
                  foregroundColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Post',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 40, 0),
              child: Text("Meanwhile others have posted these",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('Today at 8:00PM', style: TextStyle(fontFamily: 'Calibri')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('hello everyone, my dog has a cold from the afternoon. can anyone suggest me a vet clinic nearby?', style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.thumb_up, color: Colors.black54),
                                    label: Text('Like', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.chat, color: Colors.black54),
                                    label: Text('Comment', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
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
                                    Text('Tarif Shahriar', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('Today at 11:00AM', style: TextStyle(fontFamily: 'Calibri')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Thinking of getting a dog. Can anyone suggest me a good pet shop?', style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.thumb_up, color: Colors.black54),
                                    label: Text('Like', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.chat, color: Colors.black54),
                                    label: Text('Comment', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text('Yesterday at 10:30PM', style: TextStyle(fontFamily: 'Calibri')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('hey everyone! just got a new dog yesterday...where can i get some chew toys?', style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.thumb_up, color: Colors.black54),
                                    label: Text('Like', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton.icon(onPressed: () {},
                                    icon: Icon(Icons.chat, color: Colors.black54),
                                    label: Text('Comment', style: TextStyle(color: Colors.black54)),
                                    style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 1)
                                ),
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

