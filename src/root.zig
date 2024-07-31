const std = @import("std");
const testing = std.testing;
const binary_tree = @import("binary_tree.zig");
const meta = @import("meta.zig");
const Node = binary_tree.Node(u8);

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

test "basic Node init functionality" {
    const node = Node.init(42);
    try testing.expect(node.value == 42);
}
