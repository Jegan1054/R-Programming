for(n in 1:100){
  if(n%%3==0 && n%%5==0)
    print("FIZZBUZZ")
else if(n%%3==0)
  print("fizz")
else if(n%%5==0)
print("buzz")
else
  print(n)
}