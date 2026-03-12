moveh = -keyboard_check(vk_left)+keyboard_check(vk_right)
movev = -keyboard_check(vk_up)+keyboard_check(vk_down)
hsp = moveh*spd
vsp = movev*spd
if (place_meeting(x + hsp, y, obj_cenario_esq) || place_meeting(x + hsp, y, obj_cenario_dir)) 
{
    while (!place_meeting(x + sign(hsp), y, obj_cenario_esq) && !place_meeting(x + sign(hsp), y, obj_cenario_dir)) 
    {
        x += sign(hsp)
    }
    hsp = 0
}
x += hsp
y += vsp
