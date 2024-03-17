import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class RatingBusinessBottomSheet extends StatefulWidget {
  const RatingBusinessBottomSheet({Key? key}) : super(key: key);


  @override
  State<RatingBusinessBottomSheet> createState() => _RatingBusinessBottomSheetState();
}

class _RatingBusinessBottomSheetState extends State<RatingBusinessBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  double? ratingValue;

  final TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("What is you rate?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 )),

            const SizedBox(height: 12,),

            RatingBar(
              glow: true,
              minRating: 1,
              allowHalfRating: true,
              ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: Colors.amber),
                  half: const Icon(Icons.star_half, color: Colors.amber),
                  empty: const Icon(Icons.star_border, color: Colors.grey)),
              onRatingUpdate: (double value) {
                ratingValue = value;
              },
            ),
            const SizedBox(height: 25,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(" Please Share your opinion about the product ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,),textAlign: TextAlign.center),
            ),
            const SizedBox(height: 40,),
            Form(
              key: _formKey,
              child: TextFormField(
                style: const TextStyle(fontSize: 14),
                controller: reviewController,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                  hintText: "Enter your review ",
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.black)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.grey)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ' Review cannot be empty ! ';
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) {
                  _onSubmitButtonPressed(context);
                  // _formKey.currentState!.validate();
                },
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              _onSubmitButtonPressed(context);
            },style:  ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.pink),
                minimumSize: MaterialStateProperty.all(Size(MediaQuery.sizeOf(context).width, 48))),
              child: const Text("SEND REVIEW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }

  void _onSubmitButtonPressed(BuildContext context) {

    if(_formKey.currentState!.validate()){

    }
    else{

    }
  }
}