Psycho p1; //center
Psycho p2; //midleft
Psycho p3; //midright
Psycho p4; //midtop
Psycho p5; //midbottom
Psycho p6; //top right
Psycho p7; //bottom left
Psycho p8; //top left
Psycho p9; //bottom right
Psycho pB; //solo

Psycho[] psychos;


void setup()
{
  size(1000, 1000); //Setting up the canvas.
  background(0);

  p1 = new Psycho(300, 4*width/5, 4*height/5);
  p2 = new Psycho(500, width/5, height/2);
  p3 = new Psycho(500, 4*width/5, height/2);
  p4 = new Psycho(500, width/2, height/5);
  p5 = new Psycho(500, width/2, 4*height/5);
  p6 = new Psycho(300, width/5, 4*height/5);
  p7 = new Psycho(300, 4*width/5, height/5);
  p8 = new Psycho(300, width/5, height/5);
  p9 = new Psycho(800, width/2, height/2);
  
  pB = new Psycho(900, width/2, height/2);
  
  
}

void draw()
{
  p1.drawPsy();
  p2.drawPsy();
  p3.drawPsy();
  p4.drawPsy();
  p5.drawPsy();
  p6.drawPsy();
  p7.drawPsy();
  p8.drawPsy();
  p9.drawPsy();
  
  if(keyPressed)
  {
    if(key == 's' || key == 'S')
    {
      fill(0);
      rect(0, width, 0, height); //These three lines of code essentially "reset" the background, removing the existing graphic and adding something new in its place.
      noFill();
      
      pB.drawPsy();
    }
    if(key == 'm' || key == 'M')
    {
      fill(0);
      rect(0, width, 0, height);
      noFill();
      
      //[monster code?]
    }
    if(key == 'r' || key == 'R') //Hold down the R key for this effect.
    {
      fill(0);
      rect(0, width, 0, height);
      noFill();
      
      p9.drawPsy();
      p8.drawPsy();
      p7.drawPsy();
      p6.drawPsy();
      p5.drawPsy();
      p4.drawPsy();
      p3.drawPsy();
      p2.drawPsy();
      p1.drawPsy();
    }
  }
}

void mousePressed()
{
  if(mousePressed)
  {
    if(mouseX > width/2 && mouseY > height/2)
    {
      fill(random(255));
      ellipse(mouseX, mouseY, 10, 10);
      noFill();
    }
    else if(mouseX > width/2 && mouseY < height/2)
    {
      fill(255, 255, 255);
      ellipse(mouseX, mouseY, 10, 10);
      noFill();
    }
    else if(mouseX < width/2 && mouseY < height/2)
    {
      fill(255);
      stroke(1);
      fill(0);
      ellipse(mouseX, mouseY, 20, 10);
      ellipse(mouseX, mouseY, 10, 20);
      noFill();
      noStroke();
    }
    else if(mouseX < width/2 && mouseY > height/2)
    {
      fill(random(255), random(250), 77);
      ellipse(mouseX, mouseY, 30, 30);
      noFill();
    }
  }
}


