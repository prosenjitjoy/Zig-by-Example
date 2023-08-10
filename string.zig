const std = @import("std");
const print = std.debug.print;

const string = "Hello 世界";
const world = "world";

pub fn main() void {
    var slice: []const u8 = string[0..5];

    print("string {s}\n", .{string});
    print("length: {}\n", .{world.len});
    print("null: {}\n", .{world[5]});
    print("slice: {s}\n", .{slice});
    print("huh? {s}\n", .{string[0..7]});

    print("foo: {s}\n", .{foo()});
}

fn foo() []const u8 {
    return "foo";
}
