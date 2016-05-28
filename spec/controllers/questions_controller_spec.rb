require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  let(:my_question) {Question.create!(title: RandomData.random_sentence, body:RandomData.random_paragraph, resolved:true)}

  describe "GET index" do
    it "return http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my question] to @questions" do
      get :index
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it 'instantiates @questions' do
      get :new
      expect(assigns(:question)).not_to be_nil
    end

  end

  describe "GET show" do
    it "returns http success" do
      get :show, {id: my_question.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET edit" do
    it "returns a http success" do
      get :edit, {id:my_question.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT update" do
    it "updates question with expected attributes" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph
      new_status = false
    end
  end

  describe "DELETE destroy" do
    it "deletes the question" do
      delete :destroy, {id:my_question.id}

      count = Question.where({id:my_question.id}).size
      expect(count).to eq 0
    end

    it "redirects to questions index" do
      delete :destroy, {id: my_question.id}
      expect(response).to redirect_to questions_path
    end
  end

end
