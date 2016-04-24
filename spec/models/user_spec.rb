require 'rails_helper'

RSpec.describe User, type: :model do
	let(:user){ User.create(email: 'a@a.com') }
	subject { user }

	it { is_expected.to validate_presence_of(:email) }
	# it { is_expected.to validate_presence_of(:uuid) }
	it { is_expected.to callback(:generate_uuid).before(:create) }
	it { is_expected.to callback(:generate_subscriber).before(:create) }
	it { is_expected.to respond_to(:subscriber) }

	it 'uuid should be a string' do
		expect(user.uuid).to be_a_kind_of(String)
	end

end
