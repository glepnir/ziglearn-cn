// Top-level declarations are order-independent
const warn = std.debug.warn;
const std = @import("std");
const os = std.os;
const assert = std.debug.assert;

pub fn main() void {
    // integers
    const one_plus_one: i32 = 1 + 1;
    warn("1 + 1 = {}\n", one_plus_one);

    // floats
    const seven_div_three: f32 = 7.0 / 3.0;
    warn("7.0 / 3.0 = {}\n", seven_div_three);

    // boolean
    warn("{}\n{}\n{}\n", true and false, true or false, !true);

    // optional
    var optional_value: ?[]const u8 = null;
    assert(optional_value == null);

    warn("\noptional 1\ntype: {}\nvalue: {}\n", @typeName(@typeOf(optional_value)), optional_value);

    optional_value = "hi";
    assert(optional_value != null);

    warn("\noptional 2\ntype: {}\nvalue: {}\n", @typeName(@typeOf(optional_value)), optional_value);

    // error union
    var number_or_error: anyerror!i32 = error.ArgNotFound;

    warn("\nerror union 1\ntype: {}\nvalue: {}\n", @typeName(@typeOf(number_or_error)), number_or_error);

    number_or_error = 1234;

    warn("\nerror union 2\ntype: {}\nvalue: {}\n", @typeName(@typeOf(number_or_error)), number_or_error);
}
