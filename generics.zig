const std = @import("std");
const print = std.debug.print;

fn foo(x: anytype) @TypeOf(x) {
    // note that this if statement happens at compile-time, not runtime
    if (@TypeOf(x) == i64) {
        return x + 2;
    } else {
        return 2 * x;
    }
}

fn Vec20f(comptime T: type) type {
    return struct { x: T, y: T };
}

const V2i64 = Vec20f(i64);
const V2f64 = Vec20f(f64);

pub fn main() void {
    var x: i64 = 47;
    var y: i32 = 47;

    print("i64-foo: {}\n", .{foo(x)});
    print("i32-foo: {}\n", .{foo(y)});

    var vi = V2i64{ .x = 47, .y = 47 };
    var vf = V2f64{ .x = 47.0, .y = 47.0 };

    print("i64 vector: {}\n", .{vi});
    print("f64 vector: {}\n", .{vf});
}
