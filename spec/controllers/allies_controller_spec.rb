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

describe AlliesController do

  # This should return the minimal set of attributes required to create a valid
  # Ally. As you add validations to Ally, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AlliesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all allies as @allies" do
      ally = Ally.create! valid_attributes
      get :index, {}, valid_session
      assigns(:allies).should eq([ally])
    end
  end

  describe "GET show" do
    it "assigns the requested ally as @ally" do
      ally = Ally.create! valid_attributes
      get :show, {:id => ally.to_param}, valid_session
      assigns(:ally).should eq(ally)
    end
  end

  describe "GET new" do
    it "assigns a new ally as @ally" do
      get :new, {}, valid_session
      assigns(:ally).should be_a_new(Ally)
    end
  end

  describe "GET edit" do
    it "assigns the requested ally as @ally" do
      ally = Ally.create! valid_attributes
      get :edit, {:id => ally.to_param}, valid_session
      assigns(:ally).should eq(ally)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ally" do
        expect {
          post :create, {:ally => valid_attributes}, valid_session
        }.to change(Ally, :count).by(1)
      end

      it "assigns a newly created ally as @ally" do
        post :create, {:ally => valid_attributes}, valid_session
        assigns(:ally).should be_a(Ally)
        assigns(:ally).should be_persisted
      end

      it "redirects to the created ally" do
        post :create, {:ally => valid_attributes}, valid_session
        response.should redirect_to(Ally.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ally as @ally" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ally.any_instance.stub(:save).and_return(false)
        post :create, {:ally => { "name" => "invalid value" }}, valid_session
        assigns(:ally).should be_a_new(Ally)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ally.any_instance.stub(:save).and_return(false)
        post :create, {:ally => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ally" do
        ally = Ally.create! valid_attributes
        # Assuming there are no other allies in the database, this
        # specifies that the Ally created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ally.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => ally.to_param, :ally => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested ally as @ally" do
        ally = Ally.create! valid_attributes
        put :update, {:id => ally.to_param, :ally => valid_attributes}, valid_session
        assigns(:ally).should eq(ally)
      end

      it "redirects to the ally" do
        ally = Ally.create! valid_attributes
        put :update, {:id => ally.to_param, :ally => valid_attributes}, valid_session
        response.should redirect_to(ally)
      end
    end

    describe "with invalid params" do
      it "assigns the ally as @ally" do
        ally = Ally.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ally.any_instance.stub(:save).and_return(false)
        put :update, {:id => ally.to_param, :ally => { "name" => "invalid value" }}, valid_session
        assigns(:ally).should eq(ally)
      end

      it "re-renders the 'edit' template" do
        ally = Ally.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ally.any_instance.stub(:save).and_return(false)
        put :update, {:id => ally.to_param, :ally => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ally" do
      ally = Ally.create! valid_attributes
      expect {
        delete :destroy, {:id => ally.to_param}, valid_session
      }.to change(Ally, :count).by(-1)
    end

    it "redirects to the allies list" do
      ally = Ally.create! valid_attributes
      delete :destroy, {:id => ally.to_param}, valid_session
      response.should redirect_to(allies_url)
    end
  end

end
