import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/push_category.dart';

class horizontalCategory extends StatelessWidget {
  horizontalCategory({super.key, required this.model});
  categoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return pushCategory(cate: model.text!);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(model.image!), fit: BoxFit.fill),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            model.text!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
