///scr_move_state
scr_get_input();

// RİGHT
if (right_key) {
    phy_position_x += spd
    sprite_index = spr_player_r
    image_speed = .28
    }
    
//LEFT    
if (left_key) {
    phy_position_x -= spd
    sprite_index = spr_player_l
    image_speed = .28
    }
        

//UP    
if (up_key) {
    phy_position_y -= spd
    sprite_index = spr_player_u
    image_speed = .28
        }

//DOWM    
if (down_key) {
    phy_position_y += spd
    sprite_index = spr_player_d
    image_speed = .28
        }
        
//STOP ANIMATE
if (!down_key and !up_key and !left_key and !right_key)  {
    image_speed = 0
    image_index = 0

}

                
