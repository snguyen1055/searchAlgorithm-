int[] primes = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};

void setup(){
  println(search(67, primes));
}

int search (int needle, int[] haystack){
  int left =  0;
  int right = haystack.length-1;
  int midPoint = ((left+right)/2);
  
  
  
  while(right != left){
    midPoint = ((left+right)/2);
    
    if(haystack[midPoint] > needle){
      right = midPoint;
    }
    if(haystack[midPoint] < needle){
      left = midPoint;
    }
    if(haystack[midPoint] == needle){
      return midPoint;
    }
  }
  return -1;
}







