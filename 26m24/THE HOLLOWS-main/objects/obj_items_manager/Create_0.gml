depth = -9999;

//item constructor
function create_item(_name,_desc,_spr) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
}

// create items
global.item_list = {
key : new create_item(
"key",
"a key found in the hollow, what it unlock is a mystery",
spr_key
),

sword : new create_item(
"sword", 
"an unsharped sword with no tip, purly decorational and unweidable by a 10 year old",
spr_sword
) ,

}

// create inventory

inv = array_create(0);

selected_item = -1;
	
// drawing & mouse positioning

sep = 16;
screen_bord = 16;

	