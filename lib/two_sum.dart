
List<int> twoSum(List<int> nums, int target) {
  for (int index1 = 0; index1 < nums.length; index1++) {
    var completeNumber = target - nums[index1];
    for (int index2 = 0; index2 < nums.length; index2++) {
      var newNum = nums[index2];
      if (newNum == completeNumber && index2 != index1) {
        return [index1, index2];
      }
    }
  }
  return [];
}