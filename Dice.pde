void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
		background(0);
	for(int y = 25; y <= 475; i += 125)
	{
		for(int x = 25; x <= 475; x += 125)
			{
				Die.show();
				Die.roll();
			}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
