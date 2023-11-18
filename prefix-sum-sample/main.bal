
function answerQueries(int[] nums, int[][] queries, int 'limit) returns boolean[] {
    // Validate input
    boolean[] answers = [];
    if nums.length() == 0 || queries.length() == 0 {
        return answers;
    }

    // Step 1: Build a prefix sum
    int[] prefixSum = [];
    prefixSum[0] = nums[0];
    int index = 1;
    while index < nums.length() {
        prefixSum.push(prefixSum[index - 1] + nums[index]);
        index += 1;
    }

    foreach var query in queries {
        int sum = prefixSum[query[1]] - prefixSum[query[0]] + nums[query[0]];
        answers.push(sum < 'limit);
    }

    return answers;
}
