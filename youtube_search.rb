require "dotenv/load"
require "google/apis/youtube_v3"

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["GOOGLE_API_KEY"]