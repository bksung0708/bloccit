require 'rails_helper'

RSpec.describe Answer, type: :model do
    let(:question) { question.create!(title: "new QUestion Title", body: "New Question Body", resolved: true) }
    let(:answer) { Post.create!(body: "Answer Body", question: question) }
    
    describe "attributes" do
        it "has a body attributes" do
            expect(answer).to have_attributes(body: "Answer Body")
        end
    end
end
