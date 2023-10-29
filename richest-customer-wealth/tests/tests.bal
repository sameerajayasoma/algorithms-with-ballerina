import ballerina/test;

@test:Config {
    dataProvider: data
}
function maximumWealthTest(int[][] input, int expected) returns error? {
    test:assertEquals(maximumWealth(input), expected);
}

function data() returns [int[][], int][]|error {
    return [
        [[[1, 2, 3], [3, 2, 1], [4, 3, 2]], 9],
        [[[2, 2], [2, 2], [2, 2]], 4],
        [[[5, 10, 15]], 30]
    ];
}
