# encoding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  let(:names) { ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'] }
  let(:expected) { [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ] }
  specify { expect(NameIndex.create_index(names)).to eq expected }
end