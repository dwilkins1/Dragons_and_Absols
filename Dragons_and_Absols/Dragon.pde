class Dragon
{
  float scale = 1;

  int dx = 75;
  int dy = 50;
  float jawx1 = dx;
  float jawx2 = dx + 12.5;
  float jawx3 = dx + 25;
  float jawx4 = dx + 37.5;

  float jawy1 = dx; //Open: dx + 12.5
  float jawy2 = dx; //Open: 50
  float jawy3 = dx; //Open: 62.5
  float jawy4 = dx; //Open: dx


  float bjawy1 = dx + 12.5; //Open: dx + 12.5
  float bjawy2 = dx + 12.5; //Open: dx + 50
  float bjawy3 = dx + 12.5; //Open: dx + 37.5
  float bjawy4 = dx + 12.5; //Open: dx + 25

  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  float deg = random(0, 360);
  PVector Position = new PVector(1, 1);
  PVector Speed = new PVector(10, 20);

  int moveSpeed = -20;
  int xFire = 75;

  boolean cshift = true;
  Dragon()
  {
    dx = 75;
    dy = 50;
    jawx1 = dx;
    jawx2 = dx + 12.5;
    jawx3 = dx + 25;
    jawx4 = dx + 37.5;

    jawy1 = dx; //Open: dx + 12.5
    jawy2 = dx; //Open: 50
    jawy3 = dx; //Open: 62.5
    jawy4 = dx; //Open: dx

      bjawy1 = dx + 12.5; //Open: dx + 12.5
    bjawy2 = dx + 12.5; //Open: dx + 50
    bjawy3 = dx + 12.5; //Open: dx + 37.5
    bjawy4 = dx + 12.5; //Open: dx + 25

      Position = new PVector(1, 1);
    Speed = new PVector(10, 20);
  }

  void dragonshownorm()
  {
    //Top Mouth (Alt. for Open Mouth)
    rect(jawx1 + Position.x, jawy1 + Position.y, 12.5, 12.5); //Alt: rect(jawx,jawy1o,12.5,12.5);
    rect(jawx2 + Position.x, jawy2 + Position.y, 12.5, 12.5); //Alt: rect(jawx2,jawy2o,12.5,12.5);
    rect(jawx3 + Position.x, jawy3 + Position.y, 12.5, 12.5); //Alt: rect(jawx3,jawy3o,12.5,12.5);
    rect(jawx4 + Position.x, jawy4 + Position.y, 12.5, 12.5); //Alt: rect(jawx4,jawy,12.5,12.5);

    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == SHIFT)
        {
          jawy1 = 37.5; //Open: 3 7.5
          jawy2 = 50; //Open: 50
          jawy3 = 62.5; //Open: 62.5
          jawy4 = dx; //Open: dx
        }
      }
    }

    else
    {
      jawy1 = dx; //Open: dx + 12.5
      jawy2 = dx; //Open: 50
      jawy3 = dx; //Open: 62.5
      jawy4 = dx; //Open: dx
    }

    //Bottom Mouth (Alt. for Open Mouth)

    rect(jawx4 + Position.x, bjawy1 + Position.y, 12.5, 12.5); //Alt: rect(jawx4,bjawy,12.5,12.5);
    rect(jawx2 + Position.x, bjawy2 + Position.y, 12.5, 12.5); //Alt: rect(jawx2,bjawy2o,12.5,12.5);
    rect(jawx3 + Position.x, bjawy3 + Position.y, 12.5, 12.5); //Alt: rect(jawx3,bjawy3o,12.5,12.5);
    rect(jawx1 + Position.x, bjawy4 + Position.y, 12.5, 12.5); //Alt: rect(jawx,bjawy1o,12.5,12.5);

    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == SHIFT)
        {
          bjawy1 = dx + 12.5; //Open: dx + 12.5
          bjawy2 = dx + 37.5; //Open: dx + 37.5
          bjawy3 = dx + 25; //Open: dx + 25
          bjawy4 = dx + 50; //Open: dx + 50
        }
      }
    }

    else
    {
      bjawy1 = dx + 12.5; //Open: dx + 12.5
      bjawy2 = dx + 12.5; //Open: dx + 50
      bjawy3 = dx + 12.5; //Open: dx + 37.5
      bjawy4 = dx + 12.5; //Open: dx + 25
    }


    //Head
    rect(dx + 50 + Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5+ Position.x, dy + Position.y, 12.5, 12.5);
    rect(dx + 75+ Position.x, dy + Position.y, 12.5, 12.5);
    rect(dx + 75+ Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5+ Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    rect(dx + 50+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    rect(dx + 75+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    rect(dx + 75+ Position.x, dy + 25 + Position.y, 12.5, 12.5);
    rect(dx + 87.5+ Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5+ Position.x, dy + 25 + Position.y, 12.5, 12.5);
    rect(dx + 75+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    rect(dx + 62.5+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    rect(dx + 50+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    rect(dx + 62.5+ Position.x, dy + 62.5 + Position.y, 12.5, 12.5);

    //Body
    rect(dx + 62.5 + Position.x, dy + 75 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);

    //Tail
    rect(dx + 50 + Position.x, dy + 200 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    rect(dx + 87.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 75 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 62.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 50 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 37.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    rect(dx + 25 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    rect(dx + 12.5 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    rect(dx + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
  }


  void dragonshowcamo()
  {

    //Top Mouth (Alt. for Open Mouth)
    fill(img.get(int(jawx1 + Position.x), int(jawy1 + Position.y)));
    rect(jawx1 + Position.x, jawy1 + Position.y, 12.5, 12.5); //Alt: rect(jawx,jawy1o,12.5,12.5);
    fill(img.get(int(jawx2 + Position.x), int(jawy2 + Position.y)));
    rect(jawx2 + Position.x, jawy2 + Position.y, 12.5, 12.5); //Alt: rect(jawx2,jawy2o,12.5,12.5);
    fill(img.get(int(jawx3 + Position.x), int(jawy3 + Position.y)));
    rect(jawx3 + Position.x, jawy3 + Position.y, 12.5, 12.5); //Alt: rect(jawx3,jawy3o,12.5,12.5);
    fill(img.get(int(jawx4 + Position.x), int(jawy4 + Position.y)));
    rect(jawx4 + Position.x, jawy4 + Position.y, 12.5, 12.5); //Alt: rect(jawx4,jawy,12.5,12.5);

    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == SHIFT)
        {
          jawy1 = 37.5; //Open: 37.5
          jawy2 = 50; //Open: 50
          jawy3 = 62.5; //Open: 62.5
          jawy4 = dx; //Open: dx
        }
      }
    }

    else
    {
      jawy1 = dx; //Open: dx + 12.5
      jawy2 = dx; //Open: 50
      jawy3 = dx; //Open: 62.5
      jawy4 = dx; //Open: dx
    }

    //Bottom Mouth (Alt. for Open Mouth)
    fill(img.get(int(jawx4 + Position.x), int(bjawy1 + Position.y)));
    rect(jawx4 + Position.x, bjawy1 + Position.y, 12.5, 12.5); //Alt: rect(jawx4,bjawy,12.5,12.5);
    fill(img.get(int(jawx2 + Position.x), int(bjawy2 + Position.y)));
    rect(jawx2 + Position.x, bjawy2 + Position.y, 12.5, 12.5); //Alt: rect(jawx2,bjawy2o,12.5,12.5);
    fill(img.get(int(jawx3 + Position.x), int(bjawy3 + Position.y)));
    rect(jawx3 + Position.x, bjawy3 + Position.y, 12.5, 12.5); //Alt: rect(jawx3,bjawy3o,12.5,12.5);
    fill(img.get(int(jawx1 + Position.x), int(bjawy4 + Position.y)));
    rect(jawx1 + Position.x, bjawy4 + Position.y, 12.5, 12.5); //Alt: rect(jawx,bjawy1o,12.5,12.5);

    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == SHIFT)
        {
          bjawy1 = dx + 12.5; //Open: dx + 12.5
          bjawy2 = dx + 37.5; //Open: dx + 37.5
          bjawy3 = dx + 25; //Open: dx + 25
          bjawy4 = dx + 50; //Open: dx + 50
        }
      }
    }

    else
    {
      bjawy1 = dx + 12.5; //Open: dx + 12.5
      bjawy2 = dx + 12.5; //Open: dx + 50
      bjawy3 = dx + 12.5; //Open: dx + 37.5
      bjawy4 = dx + 12.5; //Open: dx + 25
    }


    //Head
    fill(img.get(int(dx + 50 + Position.x), int(dy + 12.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + Position.y)));
    rect(dx + 62.5+ Position.x, dy + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75+ Position.x), int(dy + Position.y)));
    rect(dx + 75+ Position.x, dy + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75+ Position.x), int(dy + 12.5 + Position.y)));
    rect(dx + 75+ Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + 12.5 + Position.y)));
    rect(dx + 62.5+ Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + 37.5 + Position.y)));
    rect(dx + 62.5+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50+ Position.x), int(dy + 37.5 + Position.y)));
    rect(dx + 50+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75+ Position.x), int(dy + 37.5 + Position.y)));
    rect(dx + 75+ Position.x, dy + 37.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 25 + Position.y)));
    rect(dx + 75 + Position.x, dy + 25 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 12.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 12.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5+ Position.x), int(dy + 25 + Position.y)));
    rect(dx + 87.5+ Position.x, dy + 25 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75+ Position.x), int(dy + 50 + Position.y)));
    rect(dx + 75+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + 50 + Position.y)));
    rect(dx + 62.5+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50+ Position.x), int(dy + 50 + Position.y)));
    rect(dx + 50+ Position.x, dy + 50 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + 62.5 + Position.y)));
    rect(dx + 62.5+ Position.x, dy + 62.5 + Position.y, 12.5, 12.5);

    //Body
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 75 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 75 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 87.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 87.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 87.5 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5+ Position.x), int(dy + 87.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 87.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 87.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 75 + Position.x, dy + 100 + Position.y, 12.5, 12.5);

    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 50 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 100 + Position.y)));
    rect(dx + 25 + Position.x, dy + 100 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 125 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 137.5 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 150 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 162.5 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 25 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 125 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 137.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 150 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 112.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 112.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 125 + Position.y)));
    rect(dx + 25 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 125 + Position.y)));
    rect(dx + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 137.5 + Position.y)));
    rect(dx + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 150 + Position.y)));
    rect(dx + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 162.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 162.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 162.5 + Position.y))); 
    rect(dx + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 175 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 175 + Position.y)));
    rect(dx + 50 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 175 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 175 + Position.y)));
    rect(dx + 25 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 175 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 175 + Position.y)));
    rect(dx + Position.x, dy + 175 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 125 + Position.y)));
    rect(dx + 75 + Position.x, dy + 125 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 137.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 137.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 150 + Position.y)));
    rect(dx + 75 + Position.x, dy + 150 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 162.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 162.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 187.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 187.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 187.5 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 187.5 + Position.y)));
    rect(dx + 25 + Position.x, dy + 187.5 + Position.y, 12.5, 12.5);

    //Tail
    fill(img.get(int(dx + 50 + Position.x), int(dy + 200 + Position.y)));
    rect(dx + 50 + Position.x, dy + 200 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 212.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 212.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 212.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 212.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 225 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 87.5 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 87.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 75 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 75 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 62.5 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 62.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 50 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 50 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 37.5 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 37.5 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 237.5 + Position.y)));
    rect(dx + 25 + Position.x, dy + 237.5 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 25 + Position.x), int(dy + 225 + Position.y)));
    rect(dx + 25 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + 12.5 + Position.x), int(dy + 225 + Position.y)));
    rect(dx + 12.5 + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 225 + Position.y)));
    rect(dx + Position.x, dy + 225 + Position.y, 12.5, 12.5);
    fill(img.get(int(dx + Position.x), int(dy + 212.5 + Position.y)));
    rect(dx + Position.x, dy + 212.5 + Position.y, 12.5, 12.5);
  }

  void dragoncolornorm()
  {
    //Color
    fill(r, g, b);
    strokeWeight(1);
    stroke(r, g, b);
  }

  void dragoncolorcamo()
  {
    //Color
    noStroke();
    //    strokeWeight(1);
  }

  void dragonbounce()
  {
    if (mousePressed == true)
    {
      Speed.y += 5;
      Position.x += Speed.x;
      Position.y += Speed.y;

      if (Position.x >= width-250 || Position.x <= 0)
      {
        Speed.x = -Speed.x;
        r = random(0, 255);
        g = random(0, 255);
        b = random (0, 255);
      }
      if (Position.y >= height-250)
      {
        Speed.y = -Speed.y;
        r = random(0, 255);
        g = random(0, 255);
        b = random (0, 255);
      }
    }
  }


  void dragonmove()
  {
    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == UP)
        {
          Position.y -= 10;
        }

        if (keyCode == DOWN)
        {
          Position.y += 10;
        }

        if (keyCode == LEFT)
        {
          Position.x -= 10;
        }

        if (keyCode == RIGHT)
        {
          Position.x += 10;
        }
      }
    }
  }

  void fireball()
  {
    PVector fireball = new PVector(dx + Position.x, dy + 37.5 + Position.y);
    fireball.x = dx + Position.x;
    noStroke();
    fill(255, 255, 0);
    ellipse(fireball.x - moveSpeed, fireball.y, 30, 30);
    fill(255, 0, 0);
    ellipse(fireball.x - moveSpeed, fireball.y, 20, 20);
    moveSpeed += 50;
  }
}

