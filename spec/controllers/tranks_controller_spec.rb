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

describe TrunksController do

  # This should return the minimal set of attributes required to create a valid
  # Trunk. As you add validations to Trunk, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TrunksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all trunks as @trunks" do
      trunk = Trunk.create! valid_attributes
      get :index, {}, valid_session
      assigns(:trunks).should eq([trunk])
    end
  end

  describe "GET show" do
    it "assigns the requested trunk as @trunk" do
      trunk = Trunk.create! valid_attributes
      get :show, {:id => trunk.to_param}, valid_session
      assigns(:trunk).should eq(trunk)
    end
  end

  describe "GET new" do
    it "assigns a new trunk as @trunk" do
      get :new, {}, valid_session
      assigns(:trunk).should be_a_new(Trunk)
    end
  end

  describe "GET edit" do
    it "assigns the requested trunk as @trunk" do
      trunk = Trunk.create! valid_attributes
      get :edit, {:id => trunk.to_param}, valid_session
      assigns(:trunk).should eq(trunk)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trunk" do
        expect {
          post :create, {:trunk => valid_attributes}, valid_session
        }.to change(Trunk, :count).by(1)
      end

      it "assigns a newly created trunk as @trunk" do
        post :create, {:trunk => valid_attributes}, valid_session
        assigns(:trunk).should be_a(Trunk)
        assigns(:trunk).should be_persisted
      end

      it "redirects to the created trunk" do
        post :create, {:trunk => valid_attributes}, valid_session
        response.should redirect_to(Trunk.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved trunk as @trunk" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trunk.any_instance.stub(:save).and_return(false)
        post :create, {:trunk => {}}, valid_session
        assigns(:trunk).should be_a_new(Trunk)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trunk.any_instance.stub(:save).and_return(false)
        post :create, {:trunk => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested trunk" do
        trunk = Trunk.create! valid_attributes
        # Assuming there are no other trunks in the database, this
        # specifies that the Trunk created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Trunk.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => trunk.to_param, :trunk => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested trunk as @trunk" do
        trunk = Trunk.create! valid_attributes
        put :update, {:id => trunk.to_param, :trunk => valid_attributes}, valid_session
        assigns(:trunk).should eq(trunk)
      end

      it "redirects to the trunk" do
        trunk = Trunk.create! valid_attributes
        put :update, {:id => trunk.to_param, :trunk => valid_attributes}, valid_session
        response.should redirect_to(trunk)
      end
    end

    describe "with invalid params" do
      it "assigns the trunk as @trunk" do
        trunk = Trunk.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trunk.any_instance.stub(:save).and_return(false)
        put :update, {:id => trunk.to_param, :trunk => {}}, valid_session
        assigns(:trunk).should eq(trunk)
      end

      it "re-renders the 'edit' template" do
        trunk = Trunk.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trunk.any_instance.stub(:save).and_return(false)
        put :update, {:id => trunk.to_param, :trunk => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested trunk" do
      trunk = Trunk.create! valid_attributes
      expect {
        delete :destroy, {:id => trunk.to_param}, valid_session
      }.to change(Trunk, :count).by(-1)
    end

    it "redirects to the trunks list" do
      trunk = Trunk.create! valid_attributes
      delete :destroy, {:id => trunk.to_param}, valid_session
      response.should redirect_to(trunks_url)
    end
  end

end