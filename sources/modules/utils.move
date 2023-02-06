module std::utils{

    use std::debug;

    public fun show<T:drop>(a: T){
        debug::print(&a);
    }

}