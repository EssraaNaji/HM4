/*Write a Dart program to print the first 10 numbers in the Fibonacci sequence.*/

void main (){
   print(twoSum([7,1,3,7,9], 4));
   
}

List<int>  twoSum(List<int> nums, int target) {
  List<MapEntry<int , int>> pairs =[];
  for(int i=0; i<nums.length ; i++){
    pairs.add(MapEntry(i, nums[i]));
    }
  pairs.sort((a, b) => a.value.compareTo(b.value));
   int first =0 , second=0 ;

  for (int i=0 , j=pairs.length-1 ; i<j;) {
     if(pairs[i].value + pairs[j].value > target)
     { j--;}
     else if (pairs[i].value + pairs[j].value < target)
     {i++; }
     else {
       first=pairs[i].key ;
       second =pairs[j].key;
       break ;
     }

  }
   return[first ,second];
}