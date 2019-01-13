# Write your code here.

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "at" => "@",
    "you" => "u",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dict = dictionary
  tweet.split(' ').map do |word|
    dict.keys.include?(word.downcase) ? dictionary[word.downcase] : word
  end.join(' ')
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? word_substituter(tweet)[0..139] : tweet
end
