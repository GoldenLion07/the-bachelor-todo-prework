data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |k,v|
      if v == "Winner"
        full_name = contestants["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, arr|
    arr.each do |contestants|
      contestants.each do |k,v|
        if v == occupation
          return contestants["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0 
  data.each do |season, arr|
    arr.each do |hash|
      hash.each do |k,v|
        if v == hometown 
          i += 1
        end
      end
    end
  end
  i
    
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |hash|
      hash.each do |k,v|
        if v == hometown
          return hash["occupation"]
        end
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age = 0
  i = 0 
  data[season].each do |hash|
    
    
end
