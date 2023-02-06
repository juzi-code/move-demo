script {

    use std::utils;
    // use std::vector;

    fun main() {
        let a = b"hello world";
        utils::show<vector<u8>>(a);
    }

}