const std = @import("std");
const print = std.debug.print;
const Blake3 = std.crypto.hash.Blake3;

test {
    const input = "hello";
    var output: [Blake3.digest_length]u8 = undefined;

    Blake3.hash(input, &output, .{});
    print("{s}\n", .{std.fmt.fmtSliceHexLower(&output)});
}
