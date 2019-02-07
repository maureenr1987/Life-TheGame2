/// @desc Controlls/Collision/Animation

////Input or AI
if (cancontrol) event_user(1);
else {
	ResetControls(self);
}

////Movement
//Calculate movement
hsp = x_axis * walksp * (delta_time/10000);
vsp += grv * (delta_time/10000);

if (place_meeting(x, y + 1,obj_wall)) && (key_jump){
	vsp = (jmp * -1);
}

//Calculate direction player is 'facing'
if (x_axis >= 0.5) face = 0; else if (x_axis <= -0.5) face = 180; else if (image_xscale = 1) face = 0; else face = 180;
if (y_axis >= 0.5) face = 270; else if (y_axis <= -0.5) face = 90;

//Force
if (forcespd >= 0) {
	hsp += lengthdir_x(forcespd,forcedir);
	vsp += lengthdir_y(forcespd,forcedir) / 10;
	//Friction
	if place_meeting(x,y+vsp,obj_wall) forcespd -= 0.4; else forcespd -= .15;
}
else forcespd = 0;

////Items
//Use/Hit current item
if (key_use) if (instance_exists(physitem)) physitem.Use = true;
//Hit with current item
if (key_hit) if (instance_exists(physitem)) physitem.Hit = true;
//Switch currentitem
if (key_switchnext || key_switchprev){
	if (key_switchnext) currentitem++
	if (key_switchprev) currentitem--
	if (currentitem < 0) currentitem = array_length_1d(inventory) - 1;
	if (currentitem >= array_length_1d(inventory)) currentitem = 0;
	SpawnItem(self);
}


////Collision
//Horizantal Collision
if place_meeting(x + hsp, y, obj_wall){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;


////Custom step
event_user(2);


////Animation
//Die
if (current_hp <= 0) {
	if (!dead){
	var objxp = instance_create_layer(x, y, "Player", obj_xp);
	objxp.xp = lvl * 5;
	}
	dead = true
	cancontrol = false;
	ResetControls(self);
	
	instance_destroy(physitem);
	sprite_index = asset_get_index(sprite + "dead");
	image_speed = 0;
	if place_meeting(x,y+30,obj_wall) image_index = 1; else image_index = 0;
	
	
}
//Player is falling
else if(!place_meeting(x, y + 1, obj_wall)){
	sprite_index = asset_get_index(sprite + "fall");
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

//Player Idle or Run
else {
	image_speed = x_axis * image_xscale;
	if (hsp == 0) sprite_index = asset_get_index(sprite + "idle");
	else sprite_index = asset_get_index(sprite + "run");
}
//Flip sprite
if (face == 0) image_xscale = 1; else if (face == 180) image_xscale = -1;