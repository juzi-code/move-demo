script {

    use std::utils;
    use std::signer;

    fun main(account: signer){
        let _sender: address = signer::address_of(&account);
        utils::show(_sender);
    }
}