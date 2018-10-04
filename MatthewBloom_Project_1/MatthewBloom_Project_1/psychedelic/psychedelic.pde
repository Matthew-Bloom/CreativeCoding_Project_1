
Psycho p1; //bottom right
Psycho p2; //midleft
Psycho p3; //midright
Psycho p4; //midtop
Psycho p5; //midbottom
Psycho p6; //top right
Psycho p7; //bottom left
Psycho p8; //top left
Psycho p9; //center


void setup()
{
  size(1200, 1200); //Setting up the canvas.
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
}
