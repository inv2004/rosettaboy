const std = @import("std");
const Args = @import("args.zig").Args;
const GameBoy = @import("gameboy.zig").GameBoy;
const errors = @import("errors.zig");

pub fn main() anyerror!void {
    var args = Args.parse_args();
    std.log.info("All your codebase are belong to us.", .{});

    // TODO: catch errors
    var gameboy = try GameBoy.new(args);
    try gameboy.run();

    // FIXME: SDL_Quit();
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}