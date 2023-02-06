script {
    use std::student;
    use std::debug;

    fun main() {
        let _student = student::getStudent(1, 18, true);
        debug::print(&_student);
    }
}