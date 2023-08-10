const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const galloc = gpa.allocator();

    var slice = try galloc.alloc(i32, 2);
    defer galloc.free(slice);
    var single = try galloc.create(i32);
    defer galloc.destroy(single);

    slice[0] = 47;
    slice[1] = 48;
    single.* = 49;

    print("slice: [{}, {}]\n", .{ slice[0], slice[1] });
    print("single: {}\n", .{single.*});
}
