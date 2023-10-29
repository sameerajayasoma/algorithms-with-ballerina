
public function runningSum(int[] nums) returns int[] {
    int[] runningSum = [nums[0]];
    int i = 1;
    while (i < nums.length()) {
        runningSum.push(runningSum[i - 1] + nums[i]);
        i += 1;
    }
    return runningSum;
}
