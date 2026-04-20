require 'pry-byebug'

def bubble_sort(nums)
  nums.each do
    n_swaps = 0

    (0...nums.length - 1).each do |idx|
      if nums[idx] > nums[idx + 1]
        nums[idx], nums[idx+1] = nums[idx + 1], nums[idx]
        n_swaps += 1
      end
    end

    break if n_swaps == 0
  end
  nums
end


sorted_nums = bubble_sort([4,3,78,2,0,2])
puts sorted_nums
