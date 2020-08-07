package me.Treidex.RayTracing;

public class Main
{

	public static void main(String[] args)
	{
		Window window = new Window("Ray Tracing - Treidex");
		window.create();
		for (int y = 0; y < window.getFrame().getHeight(); y++)
			for (int x = 0; x < window.getFrame().getWidth(); x++)
			{
				window.getFrame().setRGB(x, y, 0x00FF00);
			}
	}
}
