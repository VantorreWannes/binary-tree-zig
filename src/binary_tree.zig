const std = @import("std");
const meta = @import("meta.zig");

pub fn Node(comptime T: type) type {
    if (!meta.isNumberType(T)) @compileError("T must be a number type");
    return struct {
        value: T,
        lesser_node: ?*Node(T) = null,
        greater_node: ?*Node(T) = null,

        pub fn init(value: T) Node(T) {
            return Node(T){
                .value = value,
            };
        }
    };
}
