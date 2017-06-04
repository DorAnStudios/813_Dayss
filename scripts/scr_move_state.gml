///scr_move_state
scr_get_input();

// Get the axis

var xaxis = (right_key - left_key)
var yaxis = (down_key - up_key)

// Get direction

var dir = point_direction(0,0, xaxis,yaxis)

//Get lenght

if (xaxis == 0 and yaxis == 0) {
    len = 0
}
    else {
        len = spd
    }

// getting h and v spd

hspd = xaxis * spd
vspd = lengthdir_y(len,dir) //üsttekiyle aynı

// Move

phy_position_x += hspd
phy_position_y += vspd

//Control the sprite

image_speed = sign(len) * .2 //sign 1 ya da -1 verir

if(len == 0) image_index = 0

// Vertical sprite

if (vspd > 0) {
    sprite_index = spr_player_d
}

else if (vspd < 0) {
    sprite_index = spr_player_u
}

// Horizanal sprites

if (hspd > 0) {
    sprite_index = spr_player_r
}

if (hspd < 0) {
    sprite_index = spr_player_l
}

