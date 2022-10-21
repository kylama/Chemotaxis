Bee[] bees;

void setup()
{
  size(500,500);
  noStroke();
  bees = new Bee[15];
  for(int i = 0; i < bees.length; i++)
    bees[i] = new Bee();
}

void draw()
{
  background(#A0D2E1);
  fill(#5A9650);
  rect(0,450,500,50);
  
  fill(#CDAFD7);
  ellipse(mouseX,mouseY-15,20,20);
  ellipse(mouseX-15,mouseY-5,20,20);
  ellipse(mouseX-9,mouseY+10,20,20);
  ellipse(mouseX+9,mouseY+10,20,20);
  ellipse(mouseX+15,mouseY-5,20,20);
  fill(#E1E1A0);
  ellipse(mouseX,mouseY-2,15,15);
  
  for(int i = 0; i < bees.length; i++)
  {
    bees[i].move();
    bees[i].show();
  }
}

class Bee
{
  int myX, myY, myColor1, myColor2;
  Bee()
  {
    myX = myY = 250;
    myColor1 = color(#F0E605);
    myColor2 = color(#DCF0FA);
  }
  void move()
  {
    if((myX - mouseX > 0) && (myX - mouseX < 250)) //bee is to the right of mouse
    {
      myX = myX + (int)(Math.random()*7)-4;
    }
    else
    {
      myX = myX + (int)(Math.random()*7)-3;
    }
    
    if((myX - mouseX < 0) && (myX - mouseX > -250)) //bee is to the left of mouse
    {
      myX = myX + (int)(Math.random()*7)-2;
    }
    else
    {
      myY = myY + (int)(Math.random()*7)-3;
    }
    
    if((myY - mouseY > 0) && (myY - mouseY < 250)) //bee is below mouse
    {
      myY = myY + (int)(Math.random()*7)-4;
    }
    else
    {
      myY = myY + (int)(Math.random()*7)-3;
    }
    
    if((myY - mouseY < 0) && (myY - mouseY > -250)) //bee is above mouse
    {
      myY = myY + (int)(Math.random()*7)-2;
    }
    else
    {
      myY = myY + (int)(Math.random()*7)-3;
    }
  }
  void show()
  {
    fill(myColor2);
    ellipse(myX+2,myY-3,15,15);
    ellipse(myX+14,myY-3,15,15);
    fill(myColor1);
    rect(myX,myY,15,15);
    ellipse(myX,myY+7,15,15);
    ellipse(myX+15,myY+7,15,15);
    fill(0);
    rect(myX,myY,5,15);
    rect(myX+10,myY,5,15);
  }
}

