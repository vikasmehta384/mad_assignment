import 'dart:math';

class mathutils{

static squareroot(int n){
  int sr = sqrt(n).toInt();
  print('square root of $n is $sr');
}

static factorial(int n){
  int fact=1;
  for(int i=1; i<=n ; i++){
    fact = fact*i;

  }
  print('factorial of $n is $fact');

}

static power(int n , int exp){
   num power = pow(n, exp);
   print('the power of $n having exponent $exp is $power');
}


static void main(){
   squareroot(4);
   factorial(5);
   power(4, 3);

}

}

void main() {
  mathutils.main();
}