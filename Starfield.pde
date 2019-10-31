Particle[] bob = new Particle[1000];
boolean change = false;

void setup()
{
	size(400, 400);
	frameRate(30);

	for(int i = 0; i < bob.length; i++)
	{
		if(i % 2 == 0)
		{
			bob[i] = new Particle();
		}
		else
		{
			bob[i] = new OddballParticle();
		}
	}

}

void draw()
{
	background(0);
	for(int i = 0; i < bob.length; i++)
	{
		bob[i].show();

		if(dist((float) bob[i].myX, (float) bob[i].myY, 200, 200) > 50) 
		{
			bob[i].mySize += 0.05;
		}

	}

}

void mousePressed()
{
	for(int i = 0; i < bob.length; i++)
	{
		if(i % 2 == 0)
		{
			bob[i] = new Particle();
		}
		else
		{
			bob[i] = new OddballParticle();
		}
	}

	if(change == false)
	{
		change = true;
	}
	else 
	{
		change = false;	
	}
}

class Particle
{
	double myX, myY, myAngle, mySpeed;
	float mySize;

	Particle()
	{
		myX = myY = 200;
		myAngle = Math.random() * (2 * PI);
		mySpeed = Math.random() * 8 + 0.5;
		mySize = 1;
	}

	void show()
	{

		if(change == false)
		{
			noStroke();
			fill(255);
			ellipse((float) myX, (float) myY, mySize, mySize);
			move();
		}
		else 
		{
			stroke(255);
			line((float) myX, (float) myY, (float) (myX + Math.cos(myAngle) * 10), (float) (myY + Math.sin(myAngle) * 10));
			move();
		}
		
	}

	void move()
	{
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}

}

class OddballParticle extends Particle
{
	int speed;

	OddballParticle()
	{
		speed = (int)(Math.random() * 8) + 1;
	}

	void show()
	{
		if(change == false)
		{
			stroke(130, 200, 200);
			line((float) myX, (float) myY, (float) (myX + Math.cos(myAngle) * 10), (float) (myY + Math.sin(myAngle) * 10));
			move();
		}
		else 
		{
			noStroke();
			fill(130, 200, 200);
			ellipse((float) myX, (float) myY, mySize, mySize);
			move();
		}
		
	}

	void move()
	{
		myX += Math.cos(myAngle) * speed;
		myY += Math.sin(myAngle) * speed;
	}

}


