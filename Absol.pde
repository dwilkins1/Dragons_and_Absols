class Absol
{
  PVector show = new PVector(random(0, width), random(0, width));

  PVector move = new PVector(random(-5, 5), random(-5, 5));

  PImage Absol;
  PImage Ampharos;

  boolean movement = false;
  boolean Poke = false;
  boolean eaten = false;


  Absol()
  {
    Absol = loadImage("Absol.png");
    Ampharos = loadImage("ampharos.png");
  }

  void show()
  {
    imageMode(CENTER);
    if (Poke == true)
    {
      image(Absol, show.x, show.y);
    }
    else
    {
      image (Ampharos, show.x, show.y);
    }
  }

  void move()
  {
    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == ALT)
        {
          movement = !movement;
        }
      }
    }

    if (movement == true)
    {
      show.add(move);

      if (show.x >= width) 
      {
        Poke = !Poke;
        move.x = -abs(move.x);
      }

      if (show.x <= 0)
      {
        Poke = !Poke;
        move.x = abs(move.x);
      }

      if (show.y >= height)
      {
        Poke = !Poke;
        move.y = -abs(move.y);
      }
      if (show.y <=0)
      {
        move.y = abs(move.y);
        Poke = !Poke;
      }
    }
  }

  void eat(Dragon x)
  {
    if (dist(show.x, show.y, x.jawx1 + x.Position.x, x.jawy1 + x.Position.y) < 25 || dist(show.x, show.y, x.jawx2 + x.Position.x, x.jawy2 + x.Position.y) < 25 || dist(show.x, show.y, x.jawx3 + x.Position.x, x.bjawy3 + x.Position.y) < 25 || dist(show.x, show.y, x.jawx4 + x.Position.x, x.bjawy4 + x.Position.y) < 25)
    {
      Poke = !Poke;
    }
  }
}
