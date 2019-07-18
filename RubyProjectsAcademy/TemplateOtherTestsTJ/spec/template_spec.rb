require 'template-class'

describe Template do
    let (:template){Template.new}
   
    context "add a template" do
        it "we can add a template" do
            expect(template.generator("this is Moby Dick")).to eql([])
        end
    end
    context "recognizes brackets" do
        it "seperates contents from brackets" do
            expect(template.generator("this is [Moby Dick]")).to be(["Moby Dick"])
        end 
        it "recognizes multiple brackets" do
            expect(template.generator("This is [Moby Dick] by [Herman Melville]")).to be(["Moby Dick", "Herman Melville"])
        end
    end
    context "replace values" do
        it "replaces the value of the brackets" do 
            template.generator("This is [Title]")           
            template.sub_stuff("Title", "Moby Dick") 
            expect(template.final).to be("This is Moby Dick")
        end
        it "replaces more than one value" do
            template.generator("This is [Title] written by [Author]")
            template.sub_stuff("Title", "Moby Dick") 
            template.sub_stuff("Author", "Herman Melville") 
            expect(template.final).to be("This is Moby Dick written by Herman Melville")  
        end 
    end  

end
