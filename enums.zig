const std = @import("std");
const print = std.debug.print;

const EnumType = enum(u32) { EnumOne, EnumTwo, EnumThree = 3 };

pub fn main() void {
    print("One: {}\n", .{EnumType.EnumOne});
    print("Two?: {}\n", .{EnumType.EnumTwo == .EnumTwo});
    print("Three?: {}\n", .{@intFromEnum(EnumType.EnumThree) == 3});
}
