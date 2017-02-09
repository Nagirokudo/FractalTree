private double fractionLength = 1.6; 
private int smallestBranch = 5; 
private double branchAngle = 0.48;  
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
	drawBranches(320, 380, 95,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
	double angle1, angle2, angle3, angle4;
	int endX1, endY1, endX2, endY2, endX3, endY3, endX4, endY4;
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	angle3 = angle - 5*0.50 + branchAngle;
	angle4 = angle + 5*0.50 - branchAngle;
	branchLength = branchLength*fractionLength;

	endX1 = (int)((branchLength*Math.cos(angle1) + x));
	endY1 = (int)((branchLength*Math.sin(angle1) + y));

	endX2 = (int)((branchLength*Math.cos(angle2) + x));
	endY2 = (int)((branchLength*Math.sin(angle2) + y));

	endX3 = (int)((branchLength*Math.cos(angle3) + x));
	endY3 = (int)((branchLength*Math.sin(angle3) + y));

	endX4 = (int)((branchLength*Math.cos(angle4) + x));
	endY4 = (int)((branchLength*Math.sin(angle4) + y));

	stroke((int)(Math.random()*255)+30, (int)(Math.random()*255)+100, (int)(Math.random()*255)+50);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	line(x, y, endX3, endY3);
	line(x, y, endX4, endY4);

	if(branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength/3, 3*Math.PI/2); //right
		drawBranches(endX2,endY2,branchLength/3, 3*Math.PI/2); //left
		drawBranches(endX3,endY3,branchLength/4, 3*Math.PI/2); //right
		drawBranches(endX4,endY4,branchLength/4, 3*Math.PI/2); //left
	}
} 

