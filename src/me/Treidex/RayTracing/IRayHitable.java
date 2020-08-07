package me.Treidex.RayTracing;

import org.joml.Vector3f;

public interface IRayHitable
{
	public int getColor(Vector3f hitPosition);
	public boolean isColliding(Vector3f checkPosition);
}
