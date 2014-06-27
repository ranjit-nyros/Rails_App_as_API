require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ListCleansController do

  # This should return the minimal set of attributes required to create a valid
  # ListClean. As you add validations to ListClean, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ListCleansController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all list_cleans as @list_cleans" do
      list_clean = ListClean.create! valid_attributes
      get :index, {}, valid_session
      assigns(:list_cleans).should eq([list_clean])
    end
  end

  describe "GET show" do
    it "assigns the requested list_clean as @list_clean" do
      list_clean = ListClean.create! valid_attributes
      get :show, {:id => list_clean.to_param}, valid_session
      assigns(:list_clean).should eq(list_clean)
    end
  end

  describe "GET new" do
    it "assigns a new list_clean as @list_clean" do
      get :new, {}, valid_session
      assigns(:list_clean).should be_a_new(ListClean)
    end
  end

  describe "GET edit" do
    it "assigns the requested list_clean as @list_clean" do
      list_clean = ListClean.create! valid_attributes
      get :edit, {:id => list_clean.to_param}, valid_session
      assigns(:list_clean).should eq(list_clean)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ListClean" do
        expect {
          post :create, {:list_clean => valid_attributes}, valid_session
        }.to change(ListClean, :count).by(1)
      end

      it "assigns a newly created list_clean as @list_clean" do
        post :create, {:list_clean => valid_attributes}, valid_session
        assigns(:list_clean).should be_a(ListClean)
        assigns(:list_clean).should be_persisted
      end

      it "redirects to the created list_clean" do
        post :create, {:list_clean => valid_attributes}, valid_session
        response.should redirect_to(ListClean.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list_clean as @list_clean" do
        # Trigger the behavior that occurs when invalid params are submitted
        ListClean.any_instance.stub(:save).and_return(false)
        post :create, {:list_clean => {}}, valid_session
        assigns(:list_clean).should be_a_new(ListClean)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ListClean.any_instance.stub(:save).and_return(false)
        post :create, {:list_clean => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested list_clean" do
        list_clean = ListClean.create! valid_attributes
        # Assuming there are no other list_cleans in the database, this
        # specifies that the ListClean created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ListClean.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => list_clean.to_param, :list_clean => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested list_clean as @list_clean" do
        list_clean = ListClean.create! valid_attributes
        put :update, {:id => list_clean.to_param, :list_clean => valid_attributes}, valid_session
        assigns(:list_clean).should eq(list_clean)
      end

      it "redirects to the list_clean" do
        list_clean = ListClean.create! valid_attributes
        put :update, {:id => list_clean.to_param, :list_clean => valid_attributes}, valid_session
        response.should redirect_to(list_clean)
      end
    end

    describe "with invalid params" do
      it "assigns the list_clean as @list_clean" do
        list_clean = ListClean.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ListClean.any_instance.stub(:save).and_return(false)
        put :update, {:id => list_clean.to_param, :list_clean => {}}, valid_session
        assigns(:list_clean).should eq(list_clean)
      end

      it "re-renders the 'edit' template" do
        list_clean = ListClean.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ListClean.any_instance.stub(:save).and_return(false)
        put :update, {:id => list_clean.to_param, :list_clean => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested list_clean" do
      list_clean = ListClean.create! valid_attributes
      expect {
        delete :destroy, {:id => list_clean.to_param}, valid_session
      }.to change(ListClean, :count).by(-1)
    end

    it "redirects to the list_cleans list" do
      list_clean = ListClean.create! valid_attributes
      delete :destroy, {:id => list_clean.to_param}, valid_session
      response.should redirect_to(list_cleans_url)
    end
  end

end