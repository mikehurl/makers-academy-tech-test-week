require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do

    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    it 'lowers the sell_in and quality values' do
      items = [Item.new("test item", 1, 1)]
      GildedRose.new(items).update_quality()
      expect(items[0].to_s).to eq 'test item, 0, 0'
    end

    it 'degrades the quality twice as fast once the sell by date has passed, which is when the sell_in value is zero' do
      items = [Item.new("test item", 0, 2)]
      GildedRose.new(items).update_quality()
      expect(items[0].to_s).to eq 'test item, -1, 0'
    end

  end

end
