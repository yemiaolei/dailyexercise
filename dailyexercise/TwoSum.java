package dailyexercise;

public class TwoSum {
/**
 * 
 * 
	Given an array of integers, return indices of the two numbers such that they add up to a specific target.

	You may assume that each input would have exactly one solution, and you may not use the same element twice.

	Example:
	Given nums = [2, 7, 11, 15], target = 9,
	
	Because nums[0] + nums[1] = 2 + 7 = 9,
	return [0, 1].
 */
	 public int[] twoSum(int[] nums, int target) {
	        
	        int length=nums.length;
	        int[]result={0,0};
	        for(int index1=0;index1<length;index1++){
	            for(int i=index1+1;i<length;i++){
	                if((nums[index1]+nums[i])==target){
	                    result[0]=index1;
	                    result[1]=i;
	                    break;
	                }
	            }
	        }
	        
	        return result;
	    }
	
}
