// NOTE: as there's only one function in script, you can call it any way you want. Though you may want to follow general programming concepts and call it main

// script {
//     use 0x1::Account;

//     fun main(addr: address) {
//         assert(Account::exists(addr), 1);
//     }
// }


module 0x2::Math {

    fun zero(): u8 { // The default visibility is private
        0
    }

    public fun is_zero(a: u8): bool {
        a == zero() // Use local function
    }

    // Function arguments
    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    // Multiple return values
    public fun max(a: u8, b: u8): (u8, bool) {
        if (a > b) {
            (a, false)
        } else if (a < b) {
            (b, false)
        } else {
            (a, true)
        }
    }
}