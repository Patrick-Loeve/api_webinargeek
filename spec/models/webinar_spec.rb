require 'rails_helper'

RSpec.describe Webinar, type: :model do
  it { should have_many(:episodes).dependent(:destroy) }
end
