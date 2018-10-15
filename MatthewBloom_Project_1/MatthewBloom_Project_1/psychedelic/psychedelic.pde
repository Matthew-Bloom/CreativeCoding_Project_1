int xLoc;
int yLoc;
Psycho p1; //bottom right
Psycho p1b;
Psycho p2; //midleft
Psycho p3; //midright
Psycho p4; //midtop
Psycho p5; //midbottom
Psycho p6; //top right
Psycho p6b;
Psycho p7; //bottom left
Psycho p7b;
Psycho p8; //top left
Psycho p8b; 
Psycho p9; //center
Psycho pB; //solo
Psycho pGrid;
Psycho[] psychos = new Psycho[15]; //A comprehensive array of all Psycho objects.
void setup()
{
  size(1000, 1000); //Setting up the canvas.
  background(0);
  p1 = new Psycho(300, width, height); //Initializing all of the Psycho objects.
  p1b = new Psycho(300, 4*width/5, 4*height/5); //Initializing all of the Psycho objects.
  p2 = new Psycho(500, width/5, height/2);
  p3 = new Psycho(500, 4*width/5, height/2);
  p4 = new Psycho(500, width/2, height/5);
  p5 = new Psycho(500, width/2, 4*height/5);
  p6 = new Psycho(300, 0, height);
  p6b = new Psycho(300, width/5, 4*height/5);
  p7 = new Psycho(300, width, 0);
  p7b = new Psycho(300, 4*width/5, height/5);
  p8 = new Psycho(300, 0, 0);
  p8b = new Psycho(300, width/5, height/5);
  p9 = new Psycho(800, width/2, height/2);
  pB = new Psycho(1500, width/2, height/2);
  pGrid = new Psycho(50, xLoc, yLoc);

  psychos[0] = p1; //Adding all the Psycho objects to the array, in order.
  psychos[1] = p2;
  psychos[2] = p3;
  psychos[3] = p4;
  psychos[4] = p5;
  psychos[5] = p6;
  psychos[6] = p7;
  psychos[7] = p8;
  psychos[8] = p9;
  psychos[9] = pB;
  psychos[10] = p1b; //[0]
  psychos[11] = p6b; //[5]
  psychos[12] = p7b; //[6]
  psychos[13] = p8b; //[7]
  psychos[14] = pGrid;
}
void draw()
{
  stroke(2);
  fill(255);
  beginShape();
  vertex(0, height/2);

  for (int j = 0 - 50; j < height + 50; j = j + 30)
  {
    for (int i = 0 - 50; i < width + 50; i = i + 30)
    {
      bezierVertex(i, j, i + 500, j + 50, i, j);
    }
  }
  endShape();
  noFill();
  psychos[0].drawPsy(); //Draws the default pattern. This can be changed with user inputs.
  psychos[1].drawPsy();
  psychos[2].drawPsy();
  psychos[3].drawPsy();
  psychos[4].drawPsy();
  psychos[5].drawPsy();
  psychos[6].drawPsy();
  psychos[7].drawPsy();
  psychos[8].drawPsy();

  if (keyPressed)
  {
    if (key == 's' || key == 'S') //Hold down the S key for this effect.
    {
      fill(random(255), random(255), random(255)); //It's a big ol' monster circle!
      rect(0, 0, width, height); //These three lines of code essentially "reset" the background, removing the existing graphic and adding something new in its place.
      noFill();
      psychos[9].drawPsy();
    }
    if (key == 'd' || key == 'D') //Hold down the D key for this effect.
    {
      fill(random(255), random(255), random(255)); //The four corner circles are highlighted.
      rect(0, 0, width/2, height/2);
      fill(random(255), random(255), random(255));
      rect(width/2, height/2, width, height);
      fill(random(255), random(255), random(255));
      rect(width/2, 0, width, height/2);
      fill(random(255), random(255), random(255));
      rect(0, height/2, width/2, height);
      noFill();
      psychos[0].drawPsy();
      psychos[5].drawPsy();
      psychos[6].drawPsy();
      psychos[7].drawPsy();
      psychos[10].drawPsy();
      psychos[11].drawPsy();
      psychos[12].drawPsy();
      psychos[13].drawPsy();
    }
    if (key == 'f' || key == 'F') //Hold down the F key for this effect.
    {
      fill(random(255), random(255), random(255)); //The top right and bottom left circles are highlighted.
      rect(width/2, 0, width, height/2);
      fill(random(255), random(255), random(255));
      rect(0, height/2, width/2, height);
      noFill();
      psychos[5].drawPsy();
      psychos[6].drawPsy();
      psychos[11].drawPsy();
      psychos[12].drawPsy();
    }
    if (key == 'g' || key == 'G') //Hold down the G key for this effect.
    {
      fill(random(255), random(255), random(255)); //The top left and bottom right circles are highlighted.
      rect(0, 0, width/2, height/2);
      fill(random(255), random(255), random(255));
      rect(width/2, height/2, width, height);
      noFill();
      psychos[0].drawPsy();
      psychos[7].drawPsy();
      psychos[10].drawPsy();
      psychos[13].drawPsy();
    }
    if (key == 'r' || key == 'R') //Hold down the R key for this effect.
    {
      fill(random(255), random(255), random(255));
      rect(0, 0, width, height);
      noFill();
      psychos[8].drawPsy(); //The order is reversed.
      psychos[7].drawPsy();
      psychos[6].drawPsy();
      psychos[5].drawPsy();
      psychos[0].drawPsy();
      psychos[1].drawPsy();
      psychos[2].drawPsy();
      psychos[3].drawPsy();
      psychos[4].drawPsy();
    }
    if (key == 'x' || key == 'X') //Hold down the X key for this effect.
    {
      fill(random(255), random(255), random(255));
      rect(0, 0, width, height);
      noFill();
      for (int y = yLoc; y < height + 50; y = y + 50)
      {
        for (int x = xLoc; x < width + 50; x = x + 50)
        {
          for (int i = 50; i >= 0; i = i - 5)
          {
            if (i % 2 == 0)
            {
              fill(random(255), random(255), random(255));
              ellipse(x, y, i, i);
            } else if (i % 2 != 0)
            {
              fill(0);
              ellipse(x, y, i, i);
            }
          }
        }
      }
      for (int y = yLoc + 25; y < height + 50; y = y + 50)
      {
        for (int x = xLoc + 25; x < width + 50; x = x + 50)
        {
          for (int i = 25; i >= 0; i = i - 5)
          {
            if (i % 2 == 0)
            {
              fill(random(255), random(255), random(255));
              ellipse(x, y, i, i);
            } else if (i % 2 != 0)
            {
              fill(0);
              ellipse(x, y, i, i);
            }
          }
        }
      }
    }
    if (key == 'w' || key == 'W') //Hold down the W key for this effect.
    {
      stroke(2);
      fill(255);
      beginShape();
      vertex(0, height/2);
      for (int j = 0 - 50; j < height + 50; j = j + 30)
      {
        for (int i = 0 - 50; i < width + 50; i = i + 30)
        {
          bezierVertex(i, j, i + 50, j + 50, i, j);
        }
      }
      endShape();
      noFill();
    }
    if (key == CODED) //Hold down the Up Arrow key for this effect.
    {
      if (keyCode == UP)
      {
        fill(random(255), random(255), random(255));
        rect(0, 0, width, height/2); //The top three circles are highlighted.
        fill(0);
        rect(0, height/2, width, height);
        noFill();   
        psychos[3].drawPsy();
        psychos[6].drawPsy();
        psychos[7].drawPsy();
      }
    }
    if (key == CODED) //Hold down the Down Arrow key for this effect.
    {
      if (keyCode == DOWN)
      {
        fill(0);
        rect(0, 0, width, height/2); //The bottom three circles are highlighted.
        fill(random(255), random(255), random(255));
        rect(0, height/2, width, height);
        noFill();   
        psychos[0].drawPsy();
        psychos[4].drawPsy();
        psychos[5].drawPsy();
      }
    }
    if (key == CODED) //Hold down the Left Arrow key for this effect.
    {
      if (keyCode == LEFT)
      {
        fill(random(255), random(255), random(255));
        rect(0, 0, width/2, height); //The left three circles are highlighted.
        fill(0);
        rect(width/2, 0, width, height);
        noFill();    
        psychos[1].drawPsy();
        psychos[5].drawPsy();
        psychos[7].drawPsy();
      }
    }
    if (key == CODED) //Hold down the Right Arrow key for this effect.
    {
      if (keyCode == RIGHT)
      {
        fill(0);
        rect(0, 0, width/2, height); //The right three circles are illuminated.
        fill(random(255), random(255), random(255));
        rect(width/2, 0, width, height);
        noFill();   
        psychos[0].drawPsy();
        psychos[2].drawPsy();
        psychos[6].drawPsy();
      }
    }
  }
}
