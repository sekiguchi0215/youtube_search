require "dotenv/load"
require "google/apis/youtube_v3"

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["GOOGLE_API_KEY"]
youtube_search_list = youtube.list_searches('id,snippet', type: 'video', q: 'プログラミング', max_results: 10)
puts youtube_search_list