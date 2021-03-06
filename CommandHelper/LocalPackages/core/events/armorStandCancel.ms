bind(player_interact_at_entity,null,null,@e){
    if(has_permission('cancel.entityclicks')){
        cancel()
    }
}
bind(player_interact_entity,null,array('clicked':'ITEM_FRAME'),@e){
    if(has_permission('cancel.entityclicks')){
        cancel()
    }
}
bind(entity_damage,null,array('type':'/ITEM_FRAME|ARMOR_STAND|PAINTING/'),@e){
    if(array_index_exists(@e,'damager')){
        if(has_permission(@e['damager'],'cancel.entityclicks')){
            cancel()
        }
    }
}
bind(inventory_open,null,null,@e){
    if(has_permission('cancel.entityclicks') && !has_permission('is.op')){
        cancel()
    }
}
