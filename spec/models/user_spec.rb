require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    build(:user)
  end

  context 'validations' do
    context 'is valid' do
      it 'with a valid email and password' do
        expect(user).to be_valid
      end
    end

    context 'is invalid' do
      it 'without an email' do
        user.email = ''

        expect(user).to be_invalid
      end

      it 'with incorrect email format' do
        user.email = 'valid'

        expect(user).to be_invalid
      end

      it 'without an password_digest' do
        user.password_digest = ''

        expect(user).to be_invalid
      end

      it 'with less than 8 characters for password_digest' do
        user.password_digest = 1

        expect(user).to be_invalid
      end

      it 'with more than 255 characters for password_digest' do
        user.password_digest = 'pvjewsmrjgbkexlziquamhvrdcqzfcrlkqkhlyvgqhxzjjryyfjevafcrfehowhvzzhprgvshiwonkzgussfhlmkhvpyejcfercfujiaypxfpqdlwmskxcmudpahnucsuznoevpnnjknsvnmbyfexhsykyazouiwvgfewquaofkavxwwperfgnjjyksdwnpfyeagimglqrqvzhrbadugzcwnywiliybhsbvhbxexnjmovvvggkdpsjwfjrffpnnn'

        expect(user).to be_invalid
      end

      it 'without number or numeric for role' do
        user.role = 'a'

        expect(user).to be_invalid
      end

      it 'without string for first name' do
        user.first_name = 1

        expect(user).to be_invalid
      end

      it 'without string for last name' do
        user.last_name = 1

        expect(user).to be_invalid
      end
    end
  end
end
