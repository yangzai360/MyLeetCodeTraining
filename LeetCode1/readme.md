<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=default"></script>

<link rel="stylesheet" href="http://yandex.st/highlightjs/8.0/styles/xcode.min.css"> <script src="http://yandex.st/highlightjs/8.0/highlight.min.js"></script> <script>hljs.initHighlightingOnLoad();</script>


##Question

[Question is here](https://leetcode.com/articles/two-sum/)

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution.

####Example:

		Given nums = [2, 7, 11, 15], target = 9,
		Because nums[0] + nums[1] = 2 + 7 = 9,
		return [0, 1].
		
####UPDATE (2016/2/13)

The return format had been changed to zero-based indices. Please rea the above updated description carefully.

Subscribe to see which companies asked this question

---

Just judge the double for-in approach witch is easily to write, and time complexity is \\(O(n^2)\\), and space complexity is \\(O(1)\\).


Use a hashmap to imporve time complexity, reduce time from \\(O(n)\\) to \\(O(1)\\).

Firt declear a dictionary. The keys array in NSDictionary has already conforms `Hashable` protocol.

My final ac code is:

    static func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int:Int]()
        for i in 0 ..< nums.count {
            let value = nums[i]
            if (dictionary[value] != nil){
                return [dictionary[value]! , i]
            }
            dictionary[target - value] = i;
        }
        return [0,0]
    }

