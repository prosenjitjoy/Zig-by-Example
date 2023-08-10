const std = @import("std");
const print = std.debug.print;

const Single = *bool;

// not preffered for new project
const Many = [*]bool;

// null pointer safety
// so we must explicitly make it optional
const NULL = ?*bool;

pub fn main() !void {
    var value = false;
    var ptr: *bool = &value;
    print("pointer: {}\n", .{ptr});

    ptr.* = true;
    print("value: {}\n", .{ptr.*});

    // immutable
    const const_ptr: *bool = &value;
    _ = const_ptr;

    const const_value = true;
    var ptr_to_const: *const bool = &const_value;
    _ = ptr_to_const;
}
