const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var i: usize = 0;
    var j: usize = 0;
    var k: usize = 0;

    while (i < 2) {
        print("i: {}\n", .{i});
        i += 1;
    }

    while (j < 2) : (j += 1) {
        print("j: {}\n", .{j});
    }

    while (true) {
        break;
    }

    while (true) : (k += 1) {
        if (k < 2) {
            print("k: {}\n", .{k});
            continue;
        }

        break;
    }
}
