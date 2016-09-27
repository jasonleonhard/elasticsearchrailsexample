require 'ffaker'

def make_articles(n=5)
  @n = n
  n.times do
    article = Article.new
    article.title = FFaker::HipsterIpsum.sentence
    article.text  = FFaker::HipsterIpsum.paragraph #=> "Wayfarers mustache thundercats pitchfork messenger bag high
    article.save!
  end
end
p make_articles(11)
