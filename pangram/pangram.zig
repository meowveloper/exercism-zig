pub fn isPangram(str: []const u8) bool {
    if(str.len < 26) return false;
    var holder: [26]u8 = undefined;
    @memset(&holder, 0);
    for (str) |c| {
        const ca = if(c < 97) c + 32 else c;
        if(ca > 122 or ca < 97) continue;
        const index = ca - 97;
        if(index >= 0 and index <= 25) {
            holder[@as(usize, index)] = ca;
        }
    }
    for (holder) |c| {
        if (c == 0) return false;
    }
    return true;
}


