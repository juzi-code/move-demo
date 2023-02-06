module std::counter{

    use std::signer;
    use std::vector;

    
    const ERROR_CODE_RESOURCE_EXISTS: u64 = 101;
    const ERROR_CODE_RESOURCE_NO_EXISTS: u64 = 102;

    struct Counter has key{
        val: vector<u8>,
    }

    public fun init_counter(account: signer) {
        assert!(!exists<Counter>(signer::address_of(&account)), ERROR_CODE_RESOURCE_EXISTS);
        move_to<Counter>(&account, Counter{val: vector::singleton(0)});
    }

    public fun incr_counter(account: signer) acquires Counter{
        let account_address: address = signer::address_of(&account);
        assert!(exists<Counter>(account_address), ERROR_CODE_RESOURCE_NO_EXISTS);
        let counter_mut: &mut Counter = borrow_global_mut<Counter>(account_address);
        let vector_val: &mut u8 = vector::borrow_mut(&mut counter_mut.val, 0);
        *vector_val = *vector_val + 1;
    }


}