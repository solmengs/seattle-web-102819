require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

# def num_points_scored(players_names)
#   game_hash.each do |team_location, team_info|
#     team_info[:players].each do |player_info|
#       if player_info[0] === players_names
#         return player_info[1][:points]
#       end
#     end
#   end
# end 

def get_all_players
  temp = game_hash[:home][:players].merge(game_hash[:away][:players])
end

def num_points_scored(player_name)
  get_all_players[player_name][:points]

end

def shoe_size(player_name)
  get_all_players[player_name][:shoe]
end 

def get_team(team)
  game_hash.find do | key, hash |
    if hash[:team_name] === team
      return hash
    end
  end 
end 

def team_colors(team)
  get_team(team)[:colors]
end 

def team_names
  teams = game_hash.values
  temp = teams.map do |team|
    team.fetch(:team_name)
  end 
end 

def player_numbers(team)
  get_team(team)[:players].map do |bannana, cat|
    cat[:number]
  end 
end

def player_stats(player_name)
  get_all_players[player_name]
end 

# Make this better!
def big_shoe_rebounds
  bigShoe = 0
  bigShoePlayer = ''
  get_all_players.each do |key, item|
    if item[:shoe] > bigShoe
      bigShoe = item[:shoe]
      bigShoePlayer = get_all_players[key]
    end 
  end 
  bigShoePlayer[:rebounds]
end 
##