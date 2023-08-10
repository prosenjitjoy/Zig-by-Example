const std = @import("std");
const print = std.debug.print;

const a: u8 = 1;
const b: i32 = 10;
const c: i64 = 100;
const d: isize = 1_000;

const e: u21 = 10_100;
const f: i42 = 100_100;

const g: comptime_int = 1_000_000;
const h = 10_000_100;
const i = '💯';

pub fn main() !void {
    print("integer: {}\n", .{i});
    print("unicode: {u}\n", .{i});
}
