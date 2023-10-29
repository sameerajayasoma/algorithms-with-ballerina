import ballerina/test;

@test:Config {
    dataProvider: data
}
function runningSumTest(int[] input, int[] expected) returns error? {
    test:assertEquals(runningSum(input), expected);
}

function data() returns int[][][]|error {
    return [
        [[1, 2, 3, 4, 5], [1, 3, 6, 10, 15]],
        [[5, 15, 2, 8], [5, 20, 22, 30]],
        [[1], [1]]
    ];
}
