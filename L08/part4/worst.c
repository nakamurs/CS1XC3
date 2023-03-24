#include <stdio.h>
#include <stdbool.h>

int main () {
  int array[3] = {1,1,1};

  // Out of bounds array access
  printf("%d\n", array[5]);

  // Incrementing a Boolean variable.
  bool flag = true;
  flag++;
  
  // Matching if and else if conditions.
  if  (array[0] == 1){
    printf("array[0] is 1");
  } else if (array[0] == 1){
    printf("array[0] is 1");
  }
  
  // Zero division
  printf("%d\n", 5/0);

  return 0;
}
