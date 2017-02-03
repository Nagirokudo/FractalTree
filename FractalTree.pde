private double fractionLength = 1.4; 
private int smallestBranch = 3; 
private double branchAngle = 0.50;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke((int)(Math.random()*255)+30, (int)(Math.random()*255)+100, (int)(Math.random()*255)+50);   
	line(320,480,320,380);   
	drawBranches(320,380,90,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
	//double angle1, angle2;
	//int endX1, endY1, endX2, endY2;
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	branchLength = branchLength*fractionLength;

	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);

	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);

	stroke((int)(Math.random()*255)+30, (int)(Math.random()*255)+100, (int)(Math.random()*255)+50);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);

	if(branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength/2, 3*Math.PI/2);
		drawBranches(endX2,endY2,branchLength/2, 3*Math.PI/2);
	}
} 

