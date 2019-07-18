require "converter"

describe RomanConverter do

    context "given the number 1" do
        it "returns I" do
            rn = RomanConverter.new
            expect(rn.convert(1)).to eql("I")
        end
    end

    context "given the number 2" do
        it "returns II" do
            rn = RomanConverter.new
            expect(rn.convert(2)).to eql("II")
        end
    end

    context "given the number 3" do
        it "returns III" do
            rn = RomanConverter.new
            expect(rn.convert(3)).to eql("III")
        end
    end

    context "given the number 4" do
        it "returns IV" do
            rn = RomanConverter.new
            expect(rn.convert(4)).to eql("IV")
        end
    end

    context "given the number 5" do
        it "returns V" do
            rn = RomanConverter.new
            expect(rn.convert(5)).to eql("V")
        end
    end

    context "given the number 6" do
        it "returns VI" do
            rn = RomanConverter.new
            expect(rn.convert(6)).to eql("VI")
        end
    end

    context "given the number 7" do
        it "returns VII" do
            rn = RomanConverter.new
            expect(rn.convert(7)).to eql("VII")
        end
    end

    context "given the number 8" do
        it "returns VIII" do
            rn = RomanConverter.new
            expect(rn.convert(8)).to eql("VIII")
        end
    end

    context "given the number 9" do
        it "returns IX" do
            rn = RomanConverter.new
            expect(rn.convert(9)).to eql("IX")
        end
    end
end