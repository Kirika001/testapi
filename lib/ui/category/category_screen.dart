import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testglj/data/model/category_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var dio = Dio();
  CategoryModel categoryModel = CategoryModel();

  @override
  void initState() {
    // dio.options =
    //     BaseOptions(baseUrl: "http://jcc-rest-api-mobile.test/api/", headers: {
    //       "accept": "application/json",
    //       "Authorization":
    //       "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNTMzZDY0YWJjNmM3Y2Y5ZDczNTE0MzUxNWNkYmY4ZWUwNWZhMzU0ZGNhYjViNzhiZTRkNmExMjUyOGM1MmNlOTgzMjk1ZGIwMjA2ZGVjMWUiLCJpYXQiOjE2Njc0ODYxNzMuMTk4MjEyLCJuYmYiOjE2Njc0ODYxNzMuMTk4MjE3LCJleHAiOjE2OTkwMjIxNzMuMTg1NCwic3ViIjoiMzMiLCJzY29wZXMiOltdfQ.WRQ3IRAPF2_O1Nr_3D5HUKl5wAsjAxe9zSvFNMOAsx5XIgib2fmZVMUezPu23ca0DGhag7PH1fHfh0Xx2lBjDEBZUGk3oZwGkrqBrZ5s36KZtPG96fa1DQtmHBuGCeeI0PAWcUF5X7a-B18YJulXpWPzZkEW32QwjjU9ZF2BtS_X4pJnhqC8Q7EKeoWJ8Z7AlDSCLos4_ULRb_uKNmSnRxSS5xyiabI0IDP5t8A25Q3tklDsf6iUB9UjEgEHSA9HHB07CIyYRxWB0bsksQ9Bi3S5geZ0wr0tkGcLt5RVBpWEtoU9QPz1bBTJpjnqmB1jsUNL37wa_I4DxVnG5rsHkVF2hkCIqas29p0LGkEW1iE4BcDtrXeNQEQffmEgK0dqbqGW6RtUgvipryrsk4ZO_50khHZCS-gKbiUnt7NrU4oNZe5w400Eg9oz0hkYm5PQYIPSCyoHOFT6HDOTwOl0OlygF5nBbKGBij8wQ_aVj2ZPD6fR7U_E5UA89lIg2M1JrkgB12YsM4xtjheEg9OMS328y7AhzMI0C6mOObCnPt1kgQZMdVxikEpA6GffcxxVVswSdNzCWJk41YMBTJKaujgQHthfRxImqg-huem9thXLJ2f4fZmcGUrAR2c22xyybH1RYHGpCMwY8PZNRFGh448LF9FSZtaMpswfCgzmVXg"
    //     });
    dio.options = BaseOptions(baseUrl: "http://10.0.2.2:8000/api", );
    super.initState();
    getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("kategori"),
        ),
        body: categoryModel != null
            ? ListView.builder(
            itemCount: categoryModel.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(categoryModel.data?[index].nama ?? "-") ,
              );
            }
    ): Center(
    child: const CircularProgressIndicator.adaptive(
    valueColor: AlwaysStoppedAnimation(Colors.blue))));
  }

  void getCategory() async {
    try {
      print('ok');
      print('hjjvvfgfvg${categoryModel.data?[0].nama}');

      var res = await dio.get(
        "/p/category",
      );

      setState(() {
        categoryModel = CategoryModel.fromJson(res.data);
      });

    } on DioError catch (e) {
      print(e.error);
      return e.error;
    }
  }
}
