const std = @import("std");
const print = std.debug.print;

const MyError = error{ GenericError, OtherError };

fn foo(v: i32) !i32 {
    if (v == 42) return MyError.GenericError;
    return v;
}

fn wrap_foo(v: i32) void {
    if (foo(v)) |value| {
        print("value: {}\n", .{value});
    } else |err| {
        print("error: {}\n", .{err});
    }
}

pub fn main() !void {
    // return MyError.GenericError;

    // _ = foo(42);

    _ = foo(42) catch |err| {
        print("error: {}\n", .{err});
    };

    // try won't get activated here.
    print("foo: {}\n", .{try foo(47)});

    // _ = try foo(42);

    wrap_foo(42);
    wrap_foo(47);
}
