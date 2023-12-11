import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextSearchView extends StatelessWidget {
  const TextSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: (){
        showSearch(context: context, delegate: DataSearch());
      },
      decoration: InputDecoration(
        filled: true,
        hintText: "Search....",
          fillColor: Colors.white,
          hintStyle: const TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
        prefixIcon: SvgPicture.asset("assets/icons/search.svg",fit: BoxFit.scaleDown,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r)
        )
      ),
    );
  }
}


class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // action on tapping
    return [
      IconButton(onPressed: (){}, 
          icon: const Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Icon
    return IconButton(onPressed: (){},
        icon: SvgPicture.asset("assets/icons/arrow_left.svg")
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // search results
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // what happens when search for something
    return const Text("Hello");
  }
  
}
