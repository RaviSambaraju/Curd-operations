require 'spec_helper'
 
RSpec.describe PostsController, :type => :controller do
               
    def valid_attributes
    { :title => "Test", :body => "Hello World"}
  end

  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all posts as @posts" do
      post = Post.create! valid_attributes
      get :index, {}, valid_session
      assigns(:posts).should ==([post])
    end
  end
end


