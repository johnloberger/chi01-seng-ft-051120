class TweetsApp



  def call
    puts 'Welcome to Twitter'

    get_new_tweet

    tweets = Tweet.all
    render(tweets)

    edit_a_tweet
  end

  private

  def get_new_tweet
    puts 'Enter a username:'
    username = gets.chomp

    puts 'Enter a message:'
    message = gets.chomp

    tweet = Tweet.new({'username' => username, 'message' => message})
    tweet.save
    p tweet
  end

  def edit_a_tweet
    puts 'Please select a tweet id to edit:'
    id_of_tweet = gets.chomp.to_i

    found_tweet = Tweet.find(id_of_tweet)
    puts "Found your tweet!"
    puts found_tweet

    puts "What's the new message?"
    new_message = gets.chomp
    found_tweet.message = new_message

    found_tweet.save

    puts "THANKS! Tweets updated!"
    tweets = Tweet.all
    render(tweets)
  end

  def render(tweets)
    tweets.each.with_index(1) do |tweet|
      puts tweet
    end
  end
end
