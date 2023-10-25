# spec/policies/topic_policy_spec.rb
require 'rails_helper'

RSpec.describe TopicPolicy do
     let(:user) { create(:user) }
     let(:topic) { create(:topic, user: user) }

     subject { described_class.new(user, topic) }

     it "permite que qualquer usuário crie um tópico" do 
          expect(subject.create?).to be true
     end

     it "permite que apenas o criador do tópico o atualize" do
          expect(subject.update?).to be true
     end

     it "não permite que outros usuários atualizem o tópico" do
          another_user = create(:user) # Crie outro usuário para o teste
          expect(described_class.new(another_user, topic).update?).to be false
     end
end
