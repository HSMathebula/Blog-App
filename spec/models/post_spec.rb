require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    u = User.new(name: 'Happen', photo: 'google.com', bio: 'I was born in 1900', posts_counter: '0')
    Post.create(title: 'TestTitle1', text: 'TestText', comments_counter: '0', likes_counter: '0', author: u)
    Post.create(title: 'TestTitle2', text: 'TestText', comments_counter: '0', likes_counter: '0', author: u)
  end
  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end