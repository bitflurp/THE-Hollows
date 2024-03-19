//hurtbox
with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}

//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    }
}

