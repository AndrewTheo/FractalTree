private double Length = .8; 
private int FirstBranch = 10; 
private double branchAngle = .3; 
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(255);   
   stroke(139,69,19);
   strokeWeight(5);
  line(320, 480, 320, 380);  
  drawBranches(320, 380, 100, 3*Math.PI/2, 5);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, float branchWidth) 
{   
  if(branchLength <= FirstBranch)
  {

  }
  else
  {
    if(branchLength <= 50)
    {
     
      stroke(34,139,34);
    }
    else
    {
      stroke(139,69,19);
    }
    strokeWeight(branchWidth);
    double angle1 = angle + branchAngle;
    double angle2 = angle - branchAngle;
    int endX1 = (int)(Length*branchLength*Math.cos(angle1) + x);
    int endY1 = (int)(Length*branchLength*Math.sin(angle1) + y);
    int endX2 = (int)(Length*branchLength*Math.cos(angle2) + x);
    int endY2 = (int)(Length*branchLength*Math.sin(angle2) + y);
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    drawBranches(endX1, endY1, branchLength*Length, angle1, branchWidth-.5);
    drawBranches(endX2, endY2, branchLength*Length, angle2, branchWidth-.5);
  }
}
