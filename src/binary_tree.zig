const std = @import("std");

pub fn Node(comptime T: type) type {
    return struct {
        value: T,
        lesser_node: ?*Node(T) = null,
        greater_node: ?*Node(T) = null,

        pub fn init(value: T) Node(T) {
            return Node(T){ .value = value, };
        }
    };
}
