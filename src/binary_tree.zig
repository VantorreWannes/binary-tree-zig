const std = @import("std");
const meta = @import("meta.zig");

pub fn Node(comptime K: type, comptime V: type) type {
    if (!meta.isNumberType(K)) @compileError("T must be a number type");
    return struct {
        key: K,
        value: V,
        lesser_node: ?*Node(K, V) = null,
        greater_node: ?*Node(K, V) = null,

        pub fn init(key: K, value: V) Node(K, V) {
            return Node(K, V){
                .key = key,
                .value = value,
            };
        }
    };
}
