require "test_helper"

RSpec.describe User, type: :model do
  it "verifica se o nome do usuário é 'Exemplo' " do
    user = create(:user, name: "Exemplo")
    expect(user.name).to eq("exemplo")
  end
end
