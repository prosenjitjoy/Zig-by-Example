const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = try std.fs.cwd().openFile("file.tar.gz", .{});
    defer file.close();

    var gzip_stream = try std.compress.gzip.decompress(allocator, file.reader());
    defer gzip_stream.deinit();

    const result = try gzip_stream.reader().readAllAlloc(allocator, std.math.maxInt(usize));
    defer allocator.free(result);

    print("{s}\n", .{result});
}
