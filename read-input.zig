const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const stdin = std.io.getStdIn();

    print("input: ", .{});
    const input = try stdin.reader().readUntilDelimiterAlloc(allocator, '\n', 1024);
    defer allocator.free(input);

    print("value: {s}\n", .{input});
}
