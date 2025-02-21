import 'dart:io';

void main (){
  int size=int.parse(stdin.readLineSync()!);
  Map<int ,int > freq ={} ;
  List<int> list =[];
   for(int i=0; i<size ; i++){
      list.add(int.parse(stdin.readLineSync()!));
   }
   bool flag=true ;
    for(int i in list)
   {
     freq[i]=(freq[i]??0)+1;
   }
    freq.forEach((k,v){
      if(v>1)
        {
          flag=false;
        }
    });
    print(flag);
}