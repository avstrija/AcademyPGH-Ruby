require 'roman'

# special things from rspec:
# describe - for organization
# it       - this is a test
# expect   - this part must be true for the test to pass

describe "How testing works." do
    describe "How that first test might look" do
        it "Will pass if I ask it to" do
            expect(20).to eql(20)
        end
    end
end

describe RomanConverter do
    describe ".convert" do
        it "if given 1 will return I" do
            converter = RomanConverter.new
            answer = converter.convert(1)
            expect(answer).to eql("I")
        end

        it "if given 2 will return II" do
            converter = RomanConverter.new
            answer = converter.convert(2)
            expect(answer).to eql("II")
        end

        it "if given 5 will return V" do
            converter = RomanConverter.new
            answer = converter.convert(5)
            expect(answer).to eql("V")
        end

        it "if given 4 will return IV" do
            converter = RomanConverter.new
            answer = converter.convert(4)
            expect(answer).to eql("IV")
        end

        it "if given 7 will return VII" do
            converter = RomanConverter.new
            answer = converter.convert(7)
            expect(answer).to eql("VII")
        end

        it "if given 9 will return IX" do
            converter = RomanConverter.new
            answer = converter.convert(9)
            expect(answer).to eql("IX")
        end

        it "if given 10 will return X" do
            converter = RomanConverter.new
            answer = converter.convert(10)
            expect(answer).to eql("X")
        end

        it "if given 15 will return XV" do
            converter = RomanConverter.new
            answer = converter.convert(15)
            expect(answer).to eql("XV")
        end

        it "if given 20 will return XX" do
            converter = RomanConverter.new
            answer = converter.convert(20)
            expect(answer).to eql("XX")
        end
    end
end