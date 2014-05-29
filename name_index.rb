# encoding: utf-8

class NameIndex
  def self.create_index(names)
    %w(ア カ サ タ ナ ハ マ ヤ ラ ワ).zip(%w(オ ゴ ゾ ド ノ ポ モ ヨ ロ ン))
    .map{|s| [s.first, names.select{|name| (s.first.ord..s.last.ord).include? name.ord}.sort]}
    .delete_if{|result| result.last.empty?}
  end
end