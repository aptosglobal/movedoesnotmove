module 0x001::friend_module{
    
    public fun friend_speak(){
        0x001::friend_module::friend_speak();
    }
}