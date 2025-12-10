pub fn isIsogram(str: []const u8) bool {
    var valid: bool = true;
    outer: for (str, 0..) |c, i| {
        if(c == ('-' + 0) or c == (' ' + 0)) continue;
        var j: usize = i;
        for(str[j..]) |a| {
            if(j != i) {
                const ca1 = if(c < 97) c + 32 else c;
                const ca2 = if(a < 97) a + 32 else a;
                if(ca1 == ca2) {
                    valid = false;
                    break: outer;
                }
            }
            j += 1;
        }

    }
    return valid;
}

