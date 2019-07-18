require 'calculator'

describe Calculator do
    describe ".calculate" do
        it "if given 1+1 will return 2" do
            calculator = Calculator.new
            answer = calculator.calculate("1+1")
            expect(answer).to eql(2)
        end

        it "if given 1+1*3 will return 4" do
            calculator = Calculator.new
            answer = calculator.calculate("1+1*3")
            expect(answer).to eql(4)
        end

        it "if given 1*3+2 will return 5" do
            calculator = Calculator.new
            answer = calculator.calculate("1*3+2")
            expect(answer).to eql(5)
        end

        it "if given 5/5+5*5 will return 30" do
            calculator = Calculator.new
            answer = calculator.calculate("5/1+5*5")
            expect(answer).to eql(30)
        end
    end
end
