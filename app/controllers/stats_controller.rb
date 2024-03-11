class StatsController < ApplicationController
  def index
    # ヴィンテージキューブの優勝者
    sql = 'SELECT player_name, COUNT(player_name) FROM winners WHERE tournament_type = 1 GROUP BY player_name ORDER BY COUNT(player_name) DESC LIMIT 3'
    @vintage_top_winners = Winner.find_by_sql(sql)

    # パウパーキューブの優勝者
    sql = 'SELECT player_name, COUNT(player_name) FROM winners WHERE tournament_type = 2 GROUP BY player_name ORDER BY COUNT(player_name) DESC LIMIT 3'
    @pauper_top_winners = Winner.find_by_sql(sql)

    # カスレアキューブの優勝者
    sql = 'SELECT player_name, COUNT(player_name) FROM winners WHERE tournament_type = 3 GROUP BY player_name ORDER BY COUNT(player_name) DESC LIMIT 3'
    @cheap_top_winners = Winner.find_by_sql(sql)

    # ヴィンテージキューブ頻出カード
    sql = "SELECT cardname, count(cardname) FROM cards INNER JOIN winners ON cards.winner_id = winners.id WHERE tournament_type = 1 and cardname NOT IN('沼','島','山','平地','森') GROUP BY cardname ORDER BY COUNT(cardname) DESC LIMIT 5"
    @vintage_frequent_cards = Card.find_by_sql(sql)

    # パウパーキューブ頻出カード
    sql = "SELECT cardname, count(cardname) FROM cards INNER JOIN winners ON cards.winner_id = winners.id WHERE tournament_type = 2 and cardname NOT IN('沼','島','山','平地','森') GROUP BY cardname ORDER BY COUNT(cardname) DESC LIMIT 5"
    @pauper_frequent_cards = Card.find_by_sql(sql)

    # カスレアキューブ頻出カード
    sql = "SELECT cardname, count(cardname) FROM cards INNER JOIN winners ON cards.winner_id = winners.id WHERE tournament_type = 3 and cardname NOT IN('沼','島','山','平地','森') GROUP BY cardname ORDER BY COUNT(cardname) DESC LIMIT 5"
    @cheap_frequent_cards = Card.find_by_sql(sql)
  end
end
