class Timer
{

  Timer()
  {
  }

  int time1 = 0;
  int time2 = 0;
  int time3 = 0;

  void time()
  {
    time1 = millis();
    time3 = time1 - time2;
    if (time3 >= 2000)
    {
      println(millis());
      time2 = time1;
      println(millis()/2000.0);
    }
  }
  
  void action(Dragon x)
  {
    time1 = millis();
    time3 = time1 - time2;
    if (time3 >= 100)
    {
      println(millis());
      time2 = time1;
      println(millis()/2000.0);
      x.r = random(0,255);
      x.g = random(0,255);
      x.b = random(0,255);
    }
  }
}

