script {
    use std::debug;

    fun main() {

        /* ==== The if expression ===== */

        let a = true;

        if (a) {
            debug::print<u8>(&0);
        } else {
            debug::print<u8>(&99);
        };


        // try switching to false
        let a = true;
        let b = if (a) { // 1st branch
            10
        } else { // 2nd branch
            20
        };

        debug::print<u8>(&b);

        let a = true;

        // only one optional branch
        // if a = false, debug won't be called
        if (a) {
            debug::print<u8>(&10);
        };

        /* ===== Iterating with loops ===== */

        let i = 0; // define counter

        // iterate while i < 5
        // on every iteration increase i
        // when i is 5, condition fails and loop exits
        while (i < 5) {
            i = i + 1;
        };

        let i = 0;

        loop {
            i = i + 1;

            if (i / 2 == 0) continue;
            if (i == 5) break;

            // assume we do something here
         };

        0x1::debug::print<u8>(&i);

        let i = 0;

        loop {
            i = i + 1;

            if (i == 5) {
                break; // will result in compiler error. correct is `break` without semi
                       // Error: Unreachable code
            };

            // same with continue here: no semi, never;
            if (true) {
                continue
            };

            // however you can put semi like this, because continue and break here
            // are single expressions, hence they "end their own scope"
            if (true) continue;
            if (i == 5) break;
        };

        let a = 0;

        if (a != 10) {
            abort 0;
        };

        // code here won't be executed if a != 10
        // transaction aborted

        assert!(a == 10, 0);

        // code here will be executed if (a == 10)
    }
}