pub fn isNumberType(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .Int, .ComptimeInt, .Float, .ComptimeFloat => true,
        .Optional => |opt| isNumberType(opt.child),
        .Pointer => |ptr| if (ptr.size == .One) isNumberType(ptr.child) else false,
        else => false,
    };
}
