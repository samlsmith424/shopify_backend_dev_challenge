require 'rails_helper'

RSpec.describe ItemWarehouse, type: :model do

  describe 'relationships' do
    it { should belong_to(:item) }
    it { should belong_to(:warehouse) }
  end
end
