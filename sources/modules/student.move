module std::student{

    struct Student<T1,T2> has drop {
        name: T1,
        age: T2,
        sex: bool,
    }

    public fun getStudent<T1,T2>(name:T1, age:T2, sex:bool) : Student<T1,T2> {
        Student{name, age, sex}
    }
}