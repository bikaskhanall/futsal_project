import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body:  Column(children: [

      const Text("Verification Code",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      const SizedBox(height: 22,),
      const Padding(
        padding: EdgeInsets.only(left: 40.0,right: 40),
        child: Text("We have sent you the verification code to your email address",style: TextStyle(fontSize: 20),),
      ),
      const SizedBox(height: 22,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Haven't got the code yet?",style: TextStyle(fontSize: 20),),
          const SizedBox(width: 5,),
          GestureDetector(child: const Text("Resend ?",style: TextStyle(fontSize: 20,color: Colors.green),),),
        
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left:10.0,right: 10),
        child: Form(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
          height: 68,
          width: 68,
          child: TextFormField(
            onChanged: (value){
              if(value.length==1){FocusScope.of(context).nextFocus();}
            },
            onSaved:(pin1){} ,
            decoration: InputDecoration(hintText:"0" ,),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            
          ),
        ),
         SizedBox(
          height: 68,
          width: 68,
          child: TextFormField(
            onChanged: (value){
              if(value.length==1){FocusScope.of(context).nextFocus();}
            },
            onSaved:(pin2){} ,
            decoration: InputDecoration(hintText:"0" ),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            
          ),
        ), SizedBox(
          height: 68,
          width: 68,
          child: TextFormField(
            onChanged: (value){
              if(value.length==1){FocusScope.of(context).nextFocus();}
            },
            onSaved:(pin3){} ,
            decoration: InputDecoration(hintText:"0" ),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            
          ),
        ), SizedBox(
          height: 68,
          width: 68,
          child: TextFormField(
            onChanged: (value){
              if(value.length==1){FocusScope.of(context).nextFocus();}
            },
            onSaved:(pin4){} ,
            decoration: InputDecoration(hintText:"0" ),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            
          ),
        ), SizedBox(
          height: 68,
          width: 68,
          child: TextFormField(
            onChanged: (value){
              if(value.length==1){FocusScope.of(context).nextFocus();}
            },
            onSaved:(pin5){} ,
            decoration: InputDecoration(hintText:"0" ),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            
          ),
        )],)),
      ),
      Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(const Color((0xFF2C8B2C))),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {
                      },
                      child: const Text(
                        'Confirm',
                        style: TextStyle(fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

    ],),
    );
  }
}