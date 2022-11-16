script{
    use 0x1::debug;
    use demo::item;

    fun main() {
        let i:u8 = 8;
        debug::print(&i);
        let stu1 = item::new_studnet(b"apple", 8);
        // debug::print(&stu1);
        let stu2 = item::new_studnet(b"orange", 9);
        // let stu3 = item::new_studnet(b"lemon", 10);
        
        let c = item::new_class(b"three", 1);
        item::add_student(&mut c, stu1);
        item::add_student(&mut c, stu2);
        let school = item::new_school(b"center", c);

        debug::print(&school);
        item::delete(school);
    }
}