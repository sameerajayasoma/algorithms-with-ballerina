public function maximumWealth(int[][] accounts) returns int {
    int m = accounts.length();
    int n = accounts[0].length();
    int maxW = 0;
    int i = 0;
    while (i < m) {
        int w = 0;
        int j = 0;
        while (j < n) {
            w += accounts[i][j];
            j += 1;
        }
        maxW = w > maxW ? w : maxW;
        i += 1;
    }
    return maxW;
}
