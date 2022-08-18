script {
    fun main() {

        (); // this is an empty expression
    
        /* ===== Literal expressions ===== */

        10;
        10 + 5;
        true;
        true != false;
        0x1;
        1; 2; 3;

        /* ===== Variables and let keyword ===== */
        // Keyword let creates new variable inside current scope and optionally initializes this variable with value.
        // Syntax for this expression is: let <VARIABLE> : <TYPE>; or let <VARIABLE> = <EXPRESSION>.
        let a;
        let b = true;
        let c = 10;
        let d = 0x1;
        a = c;

        let _ = 1; // Underscore "_" to mark unused

        /* ===== Shadowing =====*/

        let a = 1;
        let a = a + 2; // though let here is unnecessary
        let _ = a;
    
        /* ===== Block expression ===== */

        { };
        { { }; };
        true;
        {
            true;

            { 10; };
        };
        { { { 10; }; }; };
    
        /* ===== Variable lifetime and visibility ===== */

        let a = 1; // we've defined variable A inside function scope

        {
            let b = 2; // variable B is inside block scope

            {
                // variables A and B are accessible inside
                // nested scopes
                let c = a + b;

            }; // in here C dies

            // we can't write this line
            // let d = c + b;
            // as variable C died with its scope

            // but we can define another C
            let c = b - 1;

        }; // variable C dies, so does C

        // this is impossible
        // let d = b + c;

        // we can define any variables we want
        // no name reservation happened
        let b = a + 1;
        let c = b + 1;

        /* ===== Block return values ===== */

        // since block is an expression, we can
        // assign it's value to variable with let
        let a = {

            let c = 10;

            c * 1000  // no semicolon!
        }; // scope ended, variable a got value 10000

        let b = {
            a * 1000  // no semi!
        };

        // variable b got value 10000000

        {
            10; // see semi!
        }; // this block does not return a value

        let _ = a + b; // both a and b get their values from blocks
    }
}