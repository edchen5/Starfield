Particle[] bob = new Particle[1000];

void setup()
{
	size(400, 400);
	frameRate(10);
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
	}
}

class Particle
{
	double myX, myY, angle, speed;
	int myColor, mySize;

	Particle()
	{
		myX = myY = 200;
		angle = Math.random() * (2 * PI);
		speed = Math.random() * 5 + 1;
		//myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		myColor = color(255);
		mySize = 2;
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
		myX += Math.cos(angle) * speed;
		myY += Math.sin(angle) * speed;
		mySize *= 1.3;
	}

}

class OddballParticle extends Particle
{
	//your code here
}


