import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class vertiCategoryNews extends StatelessWidget {
  const vertiCategoryNews({super.key, required this.model});
  final newsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: model.image !=
                null ? NetworkImage(model.image!) as ImageProvider<Object> 
                :const AssetImage('assets/technology.jpeg'),
                // image: model.image != null
                //     ? NetworkImage(model.image!) as ImageProvider<Object>
                //     :const AssetImage('assets/technology.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Container(
          //   width: double.infinity,
          //   height: 300,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       image: DecorationImage(
          //           image:
          //               NetworkImage(model.image ?? 'assets/technology.jpeg'),
          //           fit: BoxFit.cover)),
          // ),
          const SizedBox(
            height: 10,
          ),
          Text(
            model.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            model.subtitle ?? 'hello',
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
