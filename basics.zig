const std = @import("std");
const print = std.debug.print;

const a: i32 = 47;
const b = -47;

pub fn main() void {
    print("Hello world!\n", .{});

    var x: i32 = 47;
    print("x: {}\n", .{x});

    const y: i32 = 47;
    _ = y;
    // y = 48;

    var p: i32 = b;
    _ = p;
    var q: i64 = b;
    _ = q;
    // var r: u32 = b;
    // _ = r;

    var ud: i32 = undefined;
    print("undefined: {}\n", .{ud});

    var i: i32 = 47;
    var j: i32 = 47;
    var k = i + j;
    print("z: {}\n", .{k});
    // var z = 47;
    // _ = z;
}
