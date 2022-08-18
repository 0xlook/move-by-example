script {
    fun main() {
        /* ===== Integer types ==== */ 

        // define empty variable, set value later
        let a: u8;
        a = 10;

        // define variable, set type
        let a: u64 = 10;

        // finally simple assignment
        let a = 10;

        // simple assignment with defined value type
        let a = 10u128;

        // in function calls or expressions you can use ints as constant values
        if (a < 10) {};

        // or like this, with type
        if (a < 10u128) {}; // usually you don't need to specify type

        /* ===== Operator as ==== */ 

        let a: u8 = 10;
        let b: u64 = 100;

        // we can only compare same size integers
        if (a == (b as u8)) abort 11;
        if ((a as u64) == b) abort 11;

        /* ===== Boolean ==== */ 

        // these are all the ways to do it
        let b : bool; b = true;
        let b : bool = true;
        let b = true;
        let b = false; // here's an example with false

        /* ===== Address ==== */ 

        let addr: address; // type identifier

        // in Diem's Move VM and Starcoin - 16-byte address in HEX
        // addr = 0x...;

        // in dfinance's DVM - bech32 encoded address with `wallet1` prefix
        // addr = wallet1....;
    }
}