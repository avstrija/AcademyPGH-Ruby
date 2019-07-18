require 'template-reader'

describe Template do
    let (:template) { Template.new }

    context "a new, blank template" do
        it "doesn't add process words you ask it to add" do
            expect {template.fill_template(["Kyle"])}.to_not raise_error
        end

        it "doesn't add process words you ask it to add" do
            expect(template.fill_template(["Kyle", "Dasha"])).to eql ""
        end

        it "is able to assign a new template and display it" do
            template.assign_template("My favorite superhero is [superhero], their superpower is {superpower}")
            expect(template.display_template).to eql "My favorite superhero is [superhero], their superpower is {superpower}"
        end
    end

    context "an existing template" do
            it "can reassign the template to an empty string" do
                template.assign_template("")
                expect(template.display_template).to eql ""
            end

            it "can reassign the template to an empty string with brackets" do
                template.assign_template("[]")
                expect(template.display_template).to eql "[]"
            end

            it "can reassign the template to a one-word string if input has brackets" do
                template.assign_template("[a]")
                expect(template.display_template).to eql "[a]"
            end

            it "can reassign the template to a regular-size string if input has brackets" do
                template.assign_template("Text [a] text")
                expect(template.display_template).to eql "Text [a] text"
            end

            it "can reassign the template to a regular-size string if input has a variety of brackets" do
                template.assign_template("Text [a] text {b} text <c>")
                expect(template.display_template).to eql "Text [a] text {b} text <c>"
            end

            it "can reassign the template that starts with brackets" do
                template.assign_template("[a] text {b} text <c>")
                expect(template.display_template).to eql "[a] text {b} text <c>"
            end
        end
    
        context "fill out an existing template" do
            before(:each) do
                template.assign_template("<greeting>! My favorite superhero is [superhero], their superpower is {superpower}")
            end
            
        end
end