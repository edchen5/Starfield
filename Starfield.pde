Particle[] bob = new Particle[1000];

void setup()
{
	size(400, 400);
	//frameRate(10);

	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new Particle();
	}

}

void draw()
{
	background(0);
	for(int i = 0; i < bob.length; i++)
	{
		bob[i].show();
		if(dist((float)bob[i].myX, (float)bob[i].myY, 200, 200) > 50) 
		{
			bob[i].mySize += 0.1;
		}
	}

}

void mousePressed()
{
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new Particle();
	}

}

class Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	float mySize;

	Particle()
	{
		myX = myY = 200;
		myAngle = Math.random() * (2 * PI);
		mySpeed = Math.random() * 20 + 0.1;
		//myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		myColor = 255;
		mySize = 1;
	}

	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((int) myX, (int) myY, mySize, mySize);
		move();
	}

	void move()
	{
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
		//mySize += 0.1;
	}

}

class OddballParticle extends Particle
{
	//your code here
}


