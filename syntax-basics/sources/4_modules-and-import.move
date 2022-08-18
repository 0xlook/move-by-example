address 0x2 { // specify your address
module Test {
    // single member import
    use 0x1::signer::address_of;

    // multi member import (mind braces)
    use 0x1::vector::{
        Self, // Self == Imported module
        empty,
    };

    fun main(acc: &signer) {
        // use functions without module access
        let vec = empty<u8>();
        vector::push_back(&mut vec, 10);

        // same here
        let _ = address_of(acc);
    }
}
}