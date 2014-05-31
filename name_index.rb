# encoding: utf-8

class NameIndex
  def self.create_index(names)
    %w(ア カ サ タ ナ ハ マ ヤ ラ ワ).zip(%w(オ ゴ ゾ ド ノ ポ モ ヨ ロ ン))
    .map{|first, last| 
      results = names.select{|name| (first.ord..last.ord).include? name.ord}.sort
      [first, results] unless results.empty?
    }.compact
  end
end