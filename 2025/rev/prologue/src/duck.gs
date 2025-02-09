costumes "costumes/duck/idle-left-dash-0.png", "costumes/duck/idle-left-dash-1.png", "costumes/duck/idle-left-dash-2.png", "costumes/duck/idle-left-dash-3.png", "costumes/duck/idle-left-nodash-0.png", "costumes/duck/idle-left-nodash-1.png", "costumes/duck/idle-left-nodash-2.png", "costumes/duck/idle-left-nodash-3.png", "costumes/duck/idle-right-dash-0.png", "costumes/duck/idle-right-dash-1.png", "costumes/duck/idle-right-dash-2.png", "costumes/duck/idle-right-dash-3.png", "costumes/duck/idle-right-nodash-0.png", "costumes/duck/idle-right-nodash-1.png", "costumes/duck/idle-right-nodash-2.png", "costumes/duck/idle-right-nodash-3.png";

%include std/math
%include std/string
%define SIGN(x) abs(x) / x

on "physics" {
    set_x 0;
    set_y 0;
    point_in_direction 90;
    set_rotation_style_all_around;
    switch_costume "idle-right-dash-0";
    set_size 100/4;

    x_pos = 8*2;
    y_pos = 8*7;
    x_rem = 0;
    y_rem = 0;
    x_speed = 0;
    y_speed = 0;

    physics = true;

    jump_pressed = false;
    jump_debounce = false;
    on_ground = false;

    dash_pressed = false;
    dash_debounce = false;
    has_dash = true;
    can_dash = false;
    dash_freeze = 0;
    dash_timer = 0;
    dash_x = 0;
    dash_y = 0;

    on_wall = false;
    wall_side = 0;
    kick_side = 0;
    kick_timer = 0;
    walljump_timer = 0;

    facing = "right";
    anim_timer = 7;

    forever {
        step;
    }
}

proc step {
    goto_front;

    #region input
    up = key_pressed("up arrow");
    down = key_pressed("down arrow");
    left = key_pressed("left arrow");
    right = key_pressed("right arrow");

    jump = key_pressed("c");

    if jump and not jump_debounce {
        jump_pressed = true;
        jump_debounce = true;
    }
    if not jump {
        jump_pressed = false;
        jump_debounce = false;
    }

    dash = key_pressed("x");

    if (dash and not dash_debounce) or (cutscene == 71) {
        dash_pressed = true;
        dash_debounce = true;
    }
    if not dash {
        dash_pressed = false;
        dash_debounce = false;
    }

    prev_climb = climb;
    climb = key_pressed("z");
    #endregion input

    #region physics
    if physics {
        on_ground = collide_y(y_pos - 1);

        wall_left = ((x_pos - 10) / 8 > 0.25) and collide_x(x_pos - 2);
        wall_right = ((x_pos + 10) / 8 < 238.75) and collide_x(x_pos + 2);
        if not on_wall and (((left or facing == "left") and wall_left) or ((right or facing == "right") and wall_right)) {
            on_wall = true;
            if wall_left {
                wall_side = -1;
            } else {
                wall_side = 1;
            }
        } elif not (wall_left or wall_right) {
            if prev_climb and on_wall and up {
                x_speed += 2 * wall_side;
            }
            on_wall = false;
            wall_side = 0;
        } 

        if dash_timer == 0 and on_ground {
            has_dash = true;
        }
        if has_dash and can_dash and dash_pressed {
            dash_pressed = false;
            dash_freeze = 2;
            has_dash = false;
            dash_timer = 5;
            dash_x = 0;
            dash_y = 0;
            if cutscene == 71 {
                dash_x = 8;
                dash_y = 8;
            }
        } else {
            if climb and on_wall {
                if down {
                    y_speed += -4;
                }
                if up {
                    y_speed += 2;
                }
            } elif kick_timer == 0 {
                if left and x_speed > -4 {
                    x_speed += -2;
                }
                if right and x_speed < 4 {
                    x_speed += 2;
                }
            }
            if jump_pressed {
                jump_away = (wall_side == 1 and left) or (wall_side == -1 and right);
                if ((on_ground and dash_timer == 0) or (climb and on_wall and not jump_away)) {
                    jump_pressed = false;
                    y_speed = 6.5;
                } elif on_wall {
                    jump_pressed = false;
                    x_speed = -wall_side * 2;
                    if jump_away {
                        y_speed = 6.5;
                        walljump_timer = 5;
                        on_wall = false;
                    } elif not left and not right {
                        y_speed = 4;
                        kick_side = wall_side;
                        kick_timer = 10;
                        on_wall = false;
                    }
                }
            }
        }

        if dash_freeze > 0 {
            if left and not right {
                dash_x = -8;
            }
            if right and not left {
                dash_x = 8;
            }
            if down and not up {
                dash_y = -8;
            }
            if up and not down {
                dash_y = 8;
            }
            
            dash_freeze -= 1;
        } elif dash_freeze == 0 {
            if dash_timer == 5 {
                if dash_x == 0 and dash_y == 0 {
                    dash_x = -6 * SIGN(direction());
                }
                if abs(dash_x) > 0 and abs(dash_y) > 0 {
                    dash_x /= sqrt(2);
                    dash_y /= sqrt(2);
                }
                x_speed = dash_x / 2;
                if dash_y < 0 {
                    y_speed = dash_y;
                } else {
                    y_speed = dash_y / 2;
                }
            }

            set_fisheye_effect (dash_timer * 40);

            if dash_timer == 0 {
                if climb and on_wall {
                    move_x x_speed;
                    move_y y_speed;

                    x_speed = 0;
                    y_speed = 0;
                } else {
                    move_x x_speed;
                    move_y y_speed;

                    if kick_timer == 0 {
                        x_speed *= 0.5;
                    }
                    if on_wall and y_speed <= 0 {
                        y_speed -= 0.5;
                    } elif y_speed > -9 {
                        y_speed = MAX(y_speed - 0.9, -9);
                    }
                }
            } else {
                move_x dash_x;
                move_y dash_y;
                
                if dash_timer > 0 {
                    dash_timer -= 1;
                }
            }

            if walljump_timer > 0 {
                walljump_timer -= 1;
            }

            if kick_timer > 0 {
                if not left and not right {
                    kick_timer = 0;
                } else {
                    kick_timer -= 1;
                }
            }
        }

        if y_pos < -8 {
            stop_all;
        }
    }
    #endregion physics

    #region flag
    if cutscene or (x_pos / 8 >= 220 and x_pos / 8 < 228) {
        if cutscene < 70 and not dash {
            cutscene += 1;
            kick_side = 1;
        } elif cutscene == 70 {
            if dash_timer > 0 {
                dash_timer -= 1;
                if dash_freeze == 0 {
                    set_fisheye_effect(dash_timer * 40);
                }
            }
            if dash_pressed {
                dash_pressed = false;
                if kick_side == 1 and up and right {
                    physics = true;
                    can_dash = true;
                    kick_side = 0;
                    walljump_timer = 0;
                    cutscene += 1;
                } else {
                    dash_timer = 5;
                    if kick_side == 1 {
                        walljump_timer = 0;
                    }
                    if (kick_side == 1 or kick_side - 12 == 1 or kick_side == 2 or sqrt(kick_side) == 3 or sqrt(kick_side) == 4 or sqrt(2 * kick_side) == 4) and not up and down and not left and right {
                        kick_side += 1;
                    } elif (kick_side == 3 or kick_side == 5 or kick_side / 2 == 7 or kick_side == 2 * 4 + 3 or kick_side == 15) and up and not down {
                        if ((kick_side == 3 * 5 - 1 or kick_side == 2 * 2 * 2 * 2 - 1) and ((kick_side / 2 == 7 and right and not left) or (kick_side / 3 == 5 and left and not right))) or (not (kick_side == 14 or kick_side - 1 == 14) and not left and not right) {
                            kick_side += 1;
                        } else {
                            kick_side = 1;
                        }
                    } elif (sqrt(kick_side) == 2 or kick_side / 2 == 3 or kick_side / 3 == 4 or kick_side / 2 == 5) and left and not right and not up {
                        if ((kick_side == 6 or kick_side / 5 == 2) and down) or (not (kick_side / 3 == 2 or kick_side == sqrt(size())) and not down) {
                            kick_side += 1;
                        } else {
                            kick_side = 1;
                        }
                    } elif kick_side * (kick_side + 1) == 5 * 11 + touching_color(0x050315) and down and not up and not left and not right {
                        kick_side += 1;
                    } elif kick_side > 16 and ((up and not down and not left) or (not up and not left and right) or (not up and down and not right) or (not down and left and not right)) {
                        walljump_timer &= ((left or (not up and not right)) * 2 + ((not up and right) or (not down and left))) * 2 + ((up or down) and (left or right));
                        if kick_side < 24 or (kick_side > 24 and kick_side < 40) or (kick_side > 40 and kick_side < 64) {
                            kick_side += 1;
                        } elif kick_side == 24 and walljump_timer / (backdrop_number() & length(tiles[random(1, 4)])) == ((1 - bridge[55]) & "967" & (length(bridge))[3] & backdrop_number()) {
                            walljump_timer = 0;
                            kick_side += 1;
                        } elif kick_side == 40 and reverse(walljump_timer) / ("8" & abs(direction()) & "608" & abs(direction())) == (walljump_timer[17] & "976" & (length(tiles[9]) - 7) & "87") {
                            walljump_timer = 0;
                            kick_side += 1;
                        } elif kick_side == 64 and walljump_timer[2] == 2 + 3 * touching_color(0xff73e3) {
                            # 5-10-312-625-10-505-41103-606-2
                            kick_side = "";
                            kick_timer = 0;
                            until kick_timer == 23 {
                                kick_side &= walljump_timer[kick_timer + 3] - walljump_timer[kick_timer + 2];
                                kick_timer += 1;
                            }
                            if kick_side == "5-" & (sqrt(size()) * 2) & "-" & bridge[abs(x_position()) + 1] & "2-6" & length(tiles) & "-" & (cutscene / 7) & "-" & (length(bridge) + 400) & "-4" & length(tiles[5]) & "3-" & (length(tiles[23]) * 3) & "-2" {
                                clone "brick";
                            }
                            kick_timer = 0;
                            kick_side = 1;
                        } else {
                            kick_side = 1;
                        }
                    } else {
                        kick_side = 1;
                    }
                }
            }
        } elif cutscene > 70 {
            cutscene += 1;
        }
        if cutscene == 10 {
            physics = false;
        }
    }
    #endregion flag

    #region animation
    if physics {
        if anim_timer > 0 {
            anim_timer -= 1;
        } else {
            anim_timer = 7;
        }
    }

    camera_x = -2 * x_pos;
    if camera_x > -248 {
        camera_x = -248;
    } elif x_pos / 8 < 55 and camera_x < -2*55*8 + 230 {
        camera_x = -2*55*8 + 230;
    } elif x_pos / 8 > 55 and camera_x > -2*55*8 - 250 {
        camera_x = -2*55*8 - 250;
    } elif x_pos / 8 < 113 and camera_x < -2*113*8 + 230 {
        camera_x = -2*113*8 + 230;
    } elif x_pos / 8 > 113 and camera_x > -2*113*8 - 250 {
        camera_x = -2*113*8 - 250;
    } elif camera_x < -2*238*8 + 230 {
        camera_x = -2*238*8 + 230;
    }
    camera_x += ((dash_timer > 1) * random(-2, 2));
    camera_y = MIN(-2 * y_pos, -180) + ((dash_timer > 1) * random(-2, 2));
    
    if climb and on_wall and left {
        facing = "left";
    } elif climb and on_wall and right {
        facing = "right";
    } elif x_speed < 0 {
        facing = "left";
    } elif x_speed > 0 {
        facing = "right";
    } elif left {
        facing = "left";
    } elif right {
        facing = "right";
    }

    to_set_costume = "idle-" & facing & "-";
    if not has_dash {
        to_set_costume &= "no";
    }
    to_set_costume &= "dash-";
    if (climb and on_wall) or (not on_ground and y_speed > 0) {
        to_set_costume &= 3 - floor(anim_timer / 4) * 3;
    } elif not on_ground {
        to_set_costume &= 2 - floor(anim_timer / 4);
    } else {
        to_set_costume &= (4 - floor(anim_timer / 2));
    }
    switch_costume to_set_costume;
    #endregion animation
}

%define DEFINE_MOVE(MOVE, POS, REM, COLLIDE, ON_COLLIDE, SET) \
    proc MOVE amount {                             \
        if cutscene > 0 and cutscene < 10 {        \
            REM += $amount * (10 - cutscene) / 10; \
        } else {                                   \
            REM += $amount;                        \
        }                                          \
        local to_move = round(REM);                \
        if to_move != 0 {                          \
            REM -= to_move;                        \
            local sign = SIGN(to_move);            \
            until to_move == 0 {                   \
                if not COLLIDE(POS + sign) {       \
                    POS += sign;                   \
                    to_move -= sign;               \
                } else {                           \
                    to_move = 0;                   \
                    ON_COLLIDE;                    \
                }                                  \
            }                                      \
        }                                          \
        local orig_size = size();                  \
        set_size 1000;                             \
        SET POS;                                   \
        set_size orig_size;                        \
    }

DEFINE_MOVE(move_x, x_pos, x_rem, collide_x, on_collide_x, set_x camera_x + 2 *);
DEFINE_MOVE(move_y, y_pos, y_rem, collide_y, on_collide_y, set_y camera_y + 2 *);

%define IS_TILE(X) (((length X) > 0) and (X != " "))

func collide_x(new_x_pos) {
    local left = ($new_x_pos - 8) / 8;
    local x_center = $new_x_pos / 8;
    local right = ($new_x_pos + 8) / 8;

    if left <= 0.25 or right >= 238.75 {
        return true;
    }

    local bottom = (y_pos - 8) / 8;
    local y_center = y_pos / 8;
    local top = (y_pos + 8) / 8;

    return collide(left, x_center, right, bottom, y_center, top);
}

func collide_y(new_y_pos) {
    local left = (x_pos - 8) / 8;
    local x_center = x_pos / 8;
    local right = (x_pos + 8) / 8;
    local bottom = ($new_y_pos - 8) / 8;
    local y_center = $new_y_pos / 8;
    local top = ($new_y_pos + 8) / 8;
    
    return collide(left, x_center, right, bottom, y_center, top);
}

func collide(left, x_center, right, bottom, y_center, top) {
    local a = tiles[map_height - ceil($bottom)][ceil($left)];
    local b = tiles[map_height - ceil($bottom)][round($x_center)];
    local c = tiles[map_height - ceil($bottom)][floor($right)];
    local d = tiles[map_height - round($y_center)][ceil($left)];
    local e = tiles[map_height - round($y_center)][round($x_center)];
    local f = tiles[map_height - round($y_center)][floor($right)];
    local g = tiles[map_height - floor($top)][ceil($left)];
    local h = tiles[map_height - floor($top)][round($x_center)];
    local i = tiles[map_height - floor($top)][floor($right)];
    # say g & ", " & h & ", " & i & "\n" & d & ", " & e & ", " & f & "\n" & a & ", " & b & ", " & c & "\n";
    return (IS_TILE(a) or IS_TILE(b) or IS_TILE(c) or IS_TILE(d) or IS_TILE(e) or IS_TILE(f) or IS_TILE(g) or IS_TILE(h) or IS_TILE(i))
            and ($right < 121 or $left > 227 or (bridge[$left - 122] < 30 or bridge[$x_center - 122] < 30 or bridge[$right - 122] < 30));
}

proc on_collide_x {
    x_speed = 0;
    dash_x = 0;
}

proc on_collide_y {
    y_speed = 0;
    dash_y = 0;
}
