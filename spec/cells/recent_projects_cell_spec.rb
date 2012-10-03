require 'spec_helper'

describe RecentProjectsCell do
  context "cell rendering" do 
    
    context "rendering sidebar" do
      subject { render_cell(:recent_projects, :sidebar) }
  
      it { should have_selector("h1", :content => "RecentProjects#sidebar") }
      it { should have_selector("p", :content => "Find me in app/cells/recent_projects/sidebar.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:recent_projects) } 
    
    it { should respond_to(:sidebar) }
    
  end
end
