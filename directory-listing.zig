const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const dir = try std.fs.cwd().openIterableDir(".", .{});
    var iterator = dir.iterate();

    while (try iterator.next()) |path| {
        print("{s}\n", .{path.name});
    }
}
