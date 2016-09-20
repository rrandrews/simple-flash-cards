require 'rails_helper'

tag = Tag.new(name: 'test')

RSpec.describe Tag, type: :model do
  it "is valid with a unique name" do
    expect(tag).to be_valid
  end
  it "is invalid without a unique name" do
    duplicate_tag = tag.dup
    duplicate_tag.name = tag.name.upcase
    tag.save
    expect(duplicate_tag).not_to be_valid
  end
end
