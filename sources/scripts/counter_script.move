script {

    use std::counter;

    // fun init(account: signer){
    //     counter::init_counter(account);
    // }

    fun incr(account: signer){
        counter::incr_counter(account);
    }
}