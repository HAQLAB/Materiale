char shellcode[] __attribute__((section(".test,\"awx\",@progbits#")))= ""; //Inserire qui lo shellcode

int main(int argc, char **argv)
{
  int (*func)();
  func = (int (*)()) shellcode;
  (int)(*func)();
  return 0;
}
//Compilare con gcc -m32 -o test test.c
