const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var array: [3]u32 = [3]u32{ 47, 47, 47 };
    // also valid:
    // var array = [_]u32{47,47,47}

    // var invalid = array[4];
    // _ = invalid;
    print("array[0]: {}\n", .{array[0]});
    print("length: {}\n", .{array.len});

    var slice: []u32 = array[0..2];
    // var invalid = slice[3];
    // _ = invalid;

    print("slice[0]: {}\n", .{slice[0]});
    print("length: {}\n", .{slice.len});
}
