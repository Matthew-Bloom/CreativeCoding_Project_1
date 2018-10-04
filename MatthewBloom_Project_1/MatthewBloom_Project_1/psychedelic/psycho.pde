class Psycho
{
  int xLoc;
  int yLoc;  //Global variables.
  int diameter;

  Psycho(int d_, int x_, int y_) //Constructor functions.
  {
    xLoc = x_;    //Setting the variables of the class with values.
    yLoc = y_;
    diameter = d_;
  }

  void drawPsy()
  {
    //This is the basic building block which the pattern will be made from.
    for (int i = diameter; i >= 0; i = i - 5)
    {
      if (i % 2 == 0)
      {
        fill(random(255), random(255), random(255));
        ellipse(xLoc, yLoc, i, i);
      } else if (i % 2 != 0)
      {
        fill(0);
        ellipse(xLoc, yLoc, i, i);
      }
    }
  }
}
