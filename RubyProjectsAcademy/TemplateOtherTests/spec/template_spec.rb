require 'template-reader'

describe Template do
    let (:initial_template) {Template.new}
    context "passes template " do
        it "returning the template" do
        expect(initial_template.return_string("my given name is [first name]")).to eql("my given name is [first name]")
        end
    end

    context "Can identify template elements" do
        it "Can print out a string from in between one set of []" do
            expect(initial_template.between_the_braces("my given name is [first name]")).to eql("first name")
        end
    end

    context "Can identify template elements" do

      newTemplate = Template.new
        it "Can prompt user for what it wants and return result" do
            expect(newTemplate.get_variable("Enter your first name")).to eql("Tom")
        end
        
        it "Can replace template element with actual value" do
            expect(newTemplate.replace_variable("my given name is [first name]")).to eql("my given name is Tom")
        end
    end

    # context "Can identify template elements" do
    #
    # end
end
