const std = @import("std");
const print = std.debug.print;

fn foo(v: i32) []const u8 {
    if (v < 0) {
        return "negative";
    } else {
        return "non-negative";
    }
}

fn fooswitch(v: i32) []const u8 {
    switch (v) {
        0 => return "zero",
        else => return "nonzero",
    }
}

pub fn main() void {
    print("positive: {s}\n", .{foo(47)});
    print("negative: {s}\n", .{foo(-47)});

    var array = [_]i32{ 47, 48, 49 };
    var index: u32 = 0;

    while (index < 3) {
        print("value: {}\n", .{array[index]});
        index += 1;
    }

    for (array) |value| {
        print("array {}\n", .{value});
    }

    for (array, 1..) |value, i| {
        print("array {}: {}\n", .{ i, value });
    }

    var slices = array[0..2];
    for (slices) |value| {
        print("slice {}\n", .{value});
    }
    for (slices, 0..) |value, i| {
        print("slice {}: {}\n", .{ i, value });
    }
}
