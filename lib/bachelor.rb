require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |details|
    if details["status"] == "Winner"
      return details["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, arr_details|
    arr_details.each do |contestant_detail|
    if contestant_detail["occupation"] == occupation
      return contestant_detail["name"]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, arr_details|
    arr_details.each do |contestant_detail|
    if contestant_detail["hometown"] == hometown
      hometown_count += 1
    end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, arr_details|
    arr_details.each do |contestant_detail|
    if contestant_detail["hometown"] == hometown
      return contestant_detail["occupation"]
    end
  end
end
end

def get_average_age_for_season(data, season)
  season_age = 0
  contestants_total = 0
  data[season].each do |contestant_detail|
    season_age += contestant_detail["age"].to_f
    contestants_total += 1
    end
  (season_age/contestants_total).round
end

#season_age += contestant_detail["age"].to_f
#contestants_total += 1
