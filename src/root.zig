const std = @import("std");
const testing = std.testing;
const Node = @import("node.zig").Node;
const meta = @import("meta.zig");

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}

test "basic isNumberType functionality" {
    try testing.expect(meta.isNumberType(u8));
    try testing.expect(meta.isNumberType(f32));
    try testing.expect(meta.isNumberType(?u8));
    try testing.expect(meta.isNumberType(*u8));
    try testing.expect(meta.isNumberType(*?u8));
    try testing.expect(!meta.isNumberType(void));
}
