function jumpThroughCollisions(argument0) {
	with(argument0)
	{
		if(other.vsp > 0)
		{
			if(place_meeting(x, y-other.vsp, other) && !place_meeting(x, y, other))
			{
				while(!place_meeting(x, y-1, other))
				{
					other.y++;	
				}
				if(other.vsp >= 38) other.yscale = other.landScale;
				other.vsp = 0; other.vsp_frac = 0;
			}
		}
	}
}
