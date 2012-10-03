require 'spec_helper'

describe ProjectCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:project, :display) }
  
      it { should have_selector("h1", :content => "Project#display") }
      it { should have_selector("p", :content => "Find me in app/cells/project/display.html") }
    end
    
    context "rendering link" do
      subject { render_cell(:project, :link) }
  
      it { should have_selector("h1", :content => "Project#link") }
      it { should have_selector("p", :content => "Find me in app/cells/project/link.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:project) } 
    
    it { should respond_to(:display) }
    
    it { should respond_to(:link) }
    
  end
end
