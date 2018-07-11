require 'rails_helper'

RSpec.describe Broadcast, type: :model do
  it { should have_many(:subscriptions).dependent(:destroy) }
end
