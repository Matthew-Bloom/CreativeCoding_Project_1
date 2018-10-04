void setup()
{
  size(1200, 1200); //Setting up the canvas.
}

void psych(color b_1, color b_2, color b_3, int iVal, color f_1, color f_2, color f_3, color f_4, int x, int y)
//This is the basic building block which the pattern will be made from.
{
  background(b_1, b_2, b_3);
  
  for (int i = iVal; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(f_1, f_2, f_3);
      ellipse(x, y, i, i);
    } else if (i % 2 != 0)
    {
      fill(f_4);
      ellipse(x, y, i, i);
    }
  }
}

void draw() //This is the pattern that I want to form. I hope to make it rotate as well, though that feature is regrettably not in this build.
{
  background(random(0), random(0), random(0));
  
  for (int i = 300; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(4*width/5, 4*height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(4*width/5, 4*height/5, i, i);
    }
  }

  for (int i = 300; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/5, height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/5, height/5, i, i);
    }
  }

  for (int i = 300; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(4*width/5, height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(4*width/5, height/5, i, i);
    }
  }

  for (int i = 300; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/5, 4*height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/5, 4*height/5, i, i);
    }
  }
  
  for (int i = 500; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/2, 4*height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/2, 4*height/5, i, i);
    }
  }
  
  for (int i = 500; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/2, height/5, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/2, height/5, i, i);
    }
  }
  
  for (int i = 500; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(4*width/5, height/2, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(4*width/5, height/2, i, i);
    }
  }
  
  for (int i = 500; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/5, height/2, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/5, height/2, i, i);
    }
  }


  for (int i = 800; i >= 0; i = i - 5)
  {
    if (i % 2 == 0)
    {
      fill(random(255), random(255), random(255));
      ellipse(width/2, height/2, i, i);
    } else if (i % 2 != 0)
    {
      fill(0);
      ellipse(width/2, height/2, i, i);
    }
  }
}
