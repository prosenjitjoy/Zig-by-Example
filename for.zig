const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var array = [_]u32{ 1, 2, 3 };

    // here we can't modify elem
    for (array) |elem| {
        print("by val: {}\n", .{elem});
    }

    // here we can modify elem
    for (&array) |*elem| {
        elem.* += 100;
        print("by ref: {}\n", .{elem.*});
    }

    // if they have the same length
    for (array, &array) |val, *ref| {
        _ = ref;
        _ = val;
    }

    for (array, 1..) |elem, i| {
        print("{}: {}\n", .{ i, elem });
    }

    // this will ignore
    for (array) |_| {}
}
