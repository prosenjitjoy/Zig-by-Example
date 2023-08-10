const std = @import("std");
const print = std.debug.print;

fn printer(value: *i32) void {
    print("pointer: {}\n", .{value});
    print("value: {}\n", .{value.*});
}

const MyStruct = struct { value: i32 };

fn printerstruct(s: *MyStruct) void {
    print("value: {}\n", .{s.value});
}

fn nullChoice(value: ?*i32) void {
    if (value) |v| {
        print("value: {}\n", .{v.*});
    } else {
        print("null!\n", .{});
    }
}

pub fn main() void {
    var value: i32 = 47;
    printer(&value);

    var valuestruct = MyStruct{ .value = 47 };
    printerstruct(&valuestruct);

    var vptr: ?*i32 = &value;
    var throwaway1: ?*i32 = null;
    _ = throwaway1;
    // var throwaway2: *i32 = null;
    // _ = throwaway2;

    // print("value: {}\n", .{vptr.*});
    print("value: {}\n", .{vptr.?.*});

    var vptr1: ?*i32 = null;
    nullChoice(vptr);
    nullChoice(vptr1);
}
