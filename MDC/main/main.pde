void setup()
{
  println(MDC(48, 30));
}

float MDC(float a, float b)
{
  float c = 0;
  
  while (1 > 0)
  {
    c = a % b;
    
    if(c == 0)
    {
      break;
    }
    else
    {
      a = b;
      
      if(c != 1)
        b = c;
    }
  }
  
  return b;
}
