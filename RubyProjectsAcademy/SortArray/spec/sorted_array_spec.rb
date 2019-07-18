require "sorted_array"

describe Sort do

    describe ".sort_array" do
        context "Turns 3,2,1" do
            it "returns 1,2,3" do
                sa = Sort.new
                expect(sa.sort_array([3,2,1])).to eql([1,2,3])
            end
        end
        context "Turns a,c,b" do
            it "returns a,b,c" do
                sa = Sort.new
                expect(sa.sort_array(["a","c","b"])).to eql(["a","b","c"])
            end
        end

        context "Turns 3,2,a" do
            it "returns 2,3,a" do
                sa = Sort.new
                expect(sa.sort_array([3,2,"a"])).to eql([2,3,"a"])
            end
        end
        context "Turns 3,a,horse,2,h" do
            it "returns 2,3,a,horse,h" do
                sa = Sort.new
                expect(sa.sort_array([3,"a","horse",2,"h"])).to eql([2,3,"a","horse","h"])
            end
        end
        context "Turns 777,a" do
            it "returns a,777" do
                sa = Sort.new
                expect(sa.sort_array(["a", "777"])).to eql(["777","a"])
            end
        end
    end
end