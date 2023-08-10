const std = @import("std");
const print = std.debug.print;

const Vec2 = struct { x: f64, y: f64 };

const Vec3 = struct { x: f64 = 0.0, y: f64, z: f64 };

pub fn main() void {
    var v2 = Vec2{ .x = 1.0, .y = 2.0 };
    print("v: {}\n", .{v2});

    var v3 = Vec3{ .y = 0.1, .z = 0.2 };
    _ = v3;
    // var v4: Vec3 = .{ .y = 0.1 };
    // _ = v4;

    var obj = LikeAnObject{ .value = 47 };
    obj.printf();

    print("{} {}\n", .{ 1, 2.2 });
}

const LikeAnObject = struct {
    value: i32,

    fn printf(self: *LikeAnObject) void {
        print("value: {}\n", .{self.value});
    }
};
