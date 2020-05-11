require './lib/validation'

describe Validation do
  let (:validation) {Validation.new}

  describe 'validate input' do
    it 'should return true if a valid option is inputted' do
      expect(validation.valid_input('3')).to eq(true)
    end

    it 'should return false if an alphabet is inputted' do
      expect(validation.valid_input('A')).to eq(false)
    end

    it 'should return false if the number is out of range' do
      expect(validation.valid_input('57')).to eq(false)
    end

    it 'should return false the position selected has been selected earlier' do
      validation.update_selected_position('3')
      expect(validation.valid_input('3')).to eq(false)
    end
  end

  describe 'updated_selected' do
    it 'should update the board when option is inputed' do
      validation.update_selected_position('3')
      expect(validation.selected_positions[0]).to eq('3')
    end
  end
end