Dragon D1;
Absol A1;
Timer T1;

boolean cshift = false;
boolean fireball = false;
boolean random = false;
PImage img;
int number = 20;

Absol[] absol = new Absol[number];

void setup() {
  frameRate(30);
  img = loadImage("Loreal.png");
  D1 = new Dragon();
  A1 = new Absol();
  T1 = new Timer();
  size(img.width, img.height);

  for (int i = 0; i < number; i++)
  {
    absol[i] = new Absol();
  }
}


void draw()
{
  imageMode(CORNER);
  image(img, 0, 0);

  if (cshift == true)  
  {
    D1.dragoncolorcamo();
    D1.dragonshowcamo();
  }


  if (cshift == false) 
  {
    D1.dragoncolornorm();
    D1.dragonshownorm();
  }


  D1.dragonbounce();

  D1.dragonmove();
  if (random == true)
  {
  T1.action(D1);
  }
  
  for (int i = 0; i < number; i++)
  {
    absol[i].show();
    absol[i].move();
    absol[i].eat(D1);
  }

  if (fireball == true)
  {
    D1.fireball();
  }
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == CONTROL)
    {
      cshift = !cshift;
    }
    if (keyCode == SHIFT)
    {
      fireball = !fireball;
    }
    if (keyCode == ALT);
    {
     random = !random; 
    }
  }
}

void mousePressed()
{
 number++; 
}

//Dragon is now camouflaged. Very mysterious. Invisible, like. Indeed.
//Press alt for movement
