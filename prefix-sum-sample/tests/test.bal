import ballerina/test;

@test:Config {
    dataProvider: data
}
function maximumWealthTest(int[] nums, int[][] queries, int 'limit, boolean[] expected) returns error? {
    test:assertEquals(answerQueries(nums, queries, 'limit), expected);
}

function data() returns [int[], int[][], int, boolean[]][]|error {
    return [
        [[1, 5, 10],[[0, 1], [1, 2], [0, 2]], 9, [true, false, false]]
    ];
}