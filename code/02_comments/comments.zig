const assert = @import("std").debug.assert;

test "comments" {
    // Comments in Zig start with "//" and end at the next LF byte (end of line).
    // The below line is a comment, and won't be executed.

    //assert(false);
    const x = true; // another comment
    assert(x);
}
