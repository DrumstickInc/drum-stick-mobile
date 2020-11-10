import 'package:flutter/material.dart';
import 'package:flutter_app/models/posts.dart';
import 'package:flutter_app/pages/components/comments/addcomment.dart';
import 'package:flutter_app/pages/components/comments/comment.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              Post post = posts[index];
              String likes = post.likes.toString();
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: <Widget>[
                              Text(post.userName),
                              Text(post.userLocation),
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                        height: 250.0,
                        color: Colors.blue,
                        child: Image(
                          image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Like",
                            style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Icon(Icons.favorite_border,
                              size: 20,
                            ) ,

                          ),
                          Text("Comment",
                              style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 2.2,
                                  color: Colors.black)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Icon(Icons.comment,
                            size: 20,
                            ),
                          ),
                          Text("Share",
                              style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 2.2,
                                  color: Colors.black)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.near_me,
                              size: 20,),

                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: post.likes != null
                          ? Text(
                              "Liked by me and $likes others",
                              style: TextStyle(),
                            )
                          : Text(""),
                    ),
                  ),
                  CommentWidget(post.postID),
                  AddComment(),
                ],
              );
            }),
      ),
    );
  }
}
