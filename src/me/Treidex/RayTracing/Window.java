package me.Treidex.RayTracing;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import javax.swing.JFrame;

public class Window extends JFrame
{	
	private static final long serialVersionUID = 1L;
	
	public static final int WIDTH = 1000, HEIGHT = 800;
	
	private BufferedImage frame;
	
	public void paint(Graphics g)
	{
		g.drawImage(getFrame(), 0, 0, getWidth(), getHeight(), null);
	}
	
	public Window(String name, BufferedImage frame)
	{
		this.frame = frame;
		
		setName(name);
		setTitle(name);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setResizable(false);
	}
	
	public Window(String name)
	{
		this(name, new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB));
	}
	
	public void create()
	{
		setSize(1000, 800);
		setLocationRelativeTo(null);
		setVisible(true);
	}
	
	public BufferedImage getFrame()
	{
		return frame;
	}
	
	public void setFrame(BufferedImage newFrame)
	{
		frame = newFrame;
	}
}
