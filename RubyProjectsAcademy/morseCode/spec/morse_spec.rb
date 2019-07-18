require 'morsecode'

describe "does this test work?" do
    it "can pass a basic test" do
        expect(true).to eql(true)
    end
end

describe MorseCode do
    describe ".convert" do
        it "if given Hello will return .... . .-.. .-.. ---" do
            converter = MorseCode.new
            answer = converter.convert("Hello")
            expect(answer).to eql(".... . .-.. .-.. --- ")
        end

        it "if given 23 43 will return ..--- ...--   ....- ...--" do
            converter = MorseCode.new
            answer = converter.convert("23 43")
            expect(answer).to eql("..--- ...--   ....- ...-- ")
        end

        it "if given HeLLo will return .... . .-.. .-.. ---" do
            converter = MorseCode.new
            answer = converter.convert("HeLLo")
            expect(answer).to eql(".... . .-.. .-.. --- ")
        end

        it "if given Hello World5 will return .... . .-.. .-.. ---   .-- --- .-. .-.. -.. ..... " do
            converter = MorseCode.new
            answer = converter.convert("Hello World5")
            expect(answer).to eql(".... . .-.. .-.. ---   .-- --- .-. .-.. -.. ..... ")
        end

        it "if given &^%^& will return empty string" do
            converter = MorseCode.new
            answer = converter.convert("&^%^&")
            expect(answer).to eql("")
        end
    end
end