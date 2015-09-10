require 'rails_helper'

 describe Post do

  it "is valid with title description category and image" do
    #post = Post.new( title: 'Goku', description: 'DragonBall Z hero', category: 'Anime')
    expect(FactoryGirl.build(:post)).to be_valid
  end
  it "is invalid without a title" do
    title = Post.new(title: nil)
    title.valid?
    expect(title.errors[:title]).to include("can't be blank")
  end
  it "is invalid without a description" do
    title = Post.new(description: nil)
    title.valid?
    expect(title.errors[:description]).to include("can't be blank")
  end
  it "is invalid without a category" do
    title = Post.new(category: nil)
    title.valid?
    expect(title.errors[:category]).to include("can't be blank")
  end
  #it "is invalid without a image"
 end
