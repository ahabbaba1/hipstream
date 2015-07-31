require 'pry'

def calculate_hipsterness(params)
  @score=0
  params.each do |k, v|
    @value=v.to_i
    @score+=@value
  end
  select_playlist(@score)
end

def select_playlist(score)
  #list arrays go [pop, rap]
  popular_list=[
    "https://www.youtube.com/embed/videoseries?list=PLMJW0Jkiv2rSd_NPla-rR3h9HuAlmqXpr",
    "https://www.youtube.com/embed/videoseries?list=PLMJW0Jkiv2rTboYL2WWykklV0fPHm29ah"
    ]
  alternative_list=[
    "https://www.youtube.com/embed/videoseries?list=PLMJW0Jkiv2rTGiNPPHTOcWPlwr6jEVBPz",
    "https://www.youtube.com/embed/videoseries?list=PLMJW0Jkiv2rTIiPcc3yhMkztTechjr_4e"
    ]
  
  hipster_characters=[
    "images/results-page/hip_bearded.png",
    "images/results-page/hip_camera.png",
    "images/results-page/hip_headphones.png",
    "images/results-page/hip_hoodie.png"
    ]
  mainstream_characters=[
    "images/results-page/ms_flat_tv.png",
    "images/results-page/ms_laptop.png",
    "images/results-page/ms_retro_tv.png"
    ]
  
  if score<4
    @pop_link=popular_list[0]
    @rap_link=popular_list[1]
    @message= "Mainstream"
    @character_url= mainstream_characters.sample
  else
    @pop_link=alternative_list[0]
    @rap_link=alternative_list[1]
    @message= "Hipster"
    @character_url= hipster_characters.sample
  end
  return @pop_link, @rap_link, @message, @character_url
end

# binding.pry