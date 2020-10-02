function pause() {
	instance_deactivate_all(true); layer_set_visible("Tiles", false); instance_activate_layer("Pause");
	part_system_automatic_draw(global.ps_above, false); part_system_automatic_update(global.ps_above, false);
	part_system_automatic_draw(global.ps_below, false); part_system_automatic_update(global.ps_below, false);
	part_system_automatic_draw(0, false); part_system_automatic_update(0, false);
	part_system_automatic_draw(1, false); part_system_automatic_update(1, false);

	if(global.loaded)
	{
		button1 = instance_create_layer(vx()+1120, vy()+480, "Pause", oButton);
		button1.text = "Back to Game"; button1.group = state.game;
		//button2 = instance_create_layer(vx()+1120, vy()+9999, "Pause", oButton);
		//button2.text = "Restart Level"; button2.sprite_index = bGreen; button2.group = state.game;
		button3 = instance_create_layer(vx()+1120, vy()+640, "Pause", oButton);
		button3.text = "Main Menu"; button3.sprite_index = bRed; button3.group = state.game;
	}
	else
	{
		button1 = instance_create_layer(vx()+1120, vy()+480, "Pause", oButton);
		button1.text = "Back to Game"; button1.group = state.game;
		button2 = instance_create_layer(vx()+1120, vy()+640, "Pause", oButton);
		button2.text = "Restart Level"; button2.sprite_index = bGreen; button2.group = state.game;
		button3 = instance_create_layer(vx()+1120, vy()+800, "Pause", oButton);
		button3.text = "Main Menu"; button3.sprite_index = bRed; button3.group = state.game;
	}


}
