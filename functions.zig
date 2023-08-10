const std = @import("std");
const print = std.debug.print;

fn foo() void {
    print("foo!\n", .{});
    return;
}

fn foo1() i32 {
    return 47;
}

fn foo2(x: i32) void {
    print("foo param: {}\n", .{x});
}

pub fn main() void {
    foo();

    var result = foo1();
    print("foo: {}\n", .{result});

    // foo1();
    _ = foo1();

    foo2(47);
}
