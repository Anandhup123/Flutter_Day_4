import 'package:flutter/material.dart';

class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed('page1');
              // Add action for opening camera or creating a new post
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Add action for opening direct messages
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Stories Section
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Number of stories
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1579037199070-5ddf23c52bfc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5zdGFncmFtJTIwc3Rvcmllc3xlbnwwfHwwfHx8MA%3D%3D'),
                  ),
                );
              },
            ),
          ),

          // Post Feed
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of posts
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User info (profile picture, username, etc.)
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            // Add user profile picture here
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'username',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),

                      // Post image
                      Image.network(
                        'https://placekitten.com/300/200', // Replace with actual image URL
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      // Like, comment, and share buttons
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 4.0),
                              Text('Like'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.mode_comment_outlined),
                              SizedBox(width: 4.0),
                              Text('Comment'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.send),
                              SizedBox(width: 4.0),
                              Text('Share'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
