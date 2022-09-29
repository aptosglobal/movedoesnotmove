module 0x001::hello_module{

    use std::string;
    use std::debug;

    friend 0x001::friend_module;

    struct Coin{
        amount: u64
    }

    const ENOT_MATCH: u64 = 20001;

    public fun speak(){
        debug::print(&string::utf8(b"hello, world!"))
    }

    public(friend) fun friend_speak(){
        debug::print(&string::utf8(b"hello, friend!"))
    }
}

