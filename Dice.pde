int counter = 0;
void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(100);
	for(int y = 50; y <= 350; y += 100)
	{
		for(int x = 50; x <= 350; x += 100)
			{
				Die one = new Die (x,y);
				one.show();
			}
	}
	textAlign(CENTER);
	text("Total: "+counter,250,495);
}
void mousePressed()
{
	redraw();
	counter = 0;
}
class Die
{
	int myX, myY, rollValue;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		rollValue = (int)(Math.random()*5+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100,10);
		fill(0);

		if(rollValue == 1)
		{
			ellipse(myX+50,myY+50,15,15);
			counter = counter + 1;
		}
		else if(rollValue == 2)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			counter = counter + 2;
		}
		else if(rollValue == 3)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+75,myY+75,15,15);
			counter = counter + 3;
		}
		else if(rollValue == 4)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			counter = counter + 4;
		}
		else if(rollValue == 5)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			counter = counter + 5;
		}
		else
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+25,myY+50,15,15);
			ellipse(myX+75,myY+50,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			counter = counter + 6;
		}
	}
}
