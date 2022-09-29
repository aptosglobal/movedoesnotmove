script{
    use std::debug;
    use 0x001::hello_module as M;

    const ETEST_NUMBER: u64 = 1;

    fun caller(){
        M::speak();
        debug::print(&ETEST_NUMBER)
    }
}