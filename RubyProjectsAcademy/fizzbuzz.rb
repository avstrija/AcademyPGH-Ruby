puts "Enter a number to start."
start = gets.to_i
puts "Enter a number to end."
finish = gets.to_i

# for num in start..finish
#     output = num
#     if num%15==0
#     output="fizzbuzz"
#     elsif num%3==0
#         output = "fizz"
#     elsif num%5==0
#         output="buzz"
#     end
#     puts output
# end
#Array.new(3)
#Array.new(3,new)
#Array.new(3, [1,2,3]) -> [[1,2,3][1,2,3][1,2,3]]

#Array.new(3, Array.new(3))
#a = [1,2,3,4,5]
#a.slice(2)
#a.slice!(0,2) --- index,length // changes the original one, slices it out

puts (start..finish).map { |i| (fb = [["Fizz"][i % 3],  ["Buzz"][i % 5]].compact.join).empty?  ? i : fb }


# Console.WriteLine("Enter a number to start.");
#             string s = Console.ReadLine();
#             int num_1 = Convert.ToInt16(s);
#             Console.WriteLine("Enter a number to end.");
#             string e = Console.ReadLine();
#             int num_2 = Convert.ToInt16(e);
#             while (num_1 <= num_2) {
#                 string output = Convert.ToString(num_1); ;
#                 if (num_1%3 == 0) {
#                     output = "fizz";
#                 }
#                 if (num_1 % 5 == 0) {
#                     output = "buzz";
#                 }
#                 if (num_1 % 15 == 0)
#                 {
#                     output = "fizzbuzz";
#                 }
#                 Console.WriteLine(output);
#                 ++num_1;
            
#             }