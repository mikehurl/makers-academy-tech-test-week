require 'gilded_rose'

describe GildedRose do

  before do
    @items = [Item.new("foo", 0, 0), Item.new("test item", 1, 1), Item.new("test item", 0, 2), Item.new("Aged Brie", 3, 3), Item.new("Aged Brie", 1, 50), Item.new("Sulfuras, Hand of Ragnaros", 5, 5), Item.new("Backstage passes to a TAFKAL80ETC concert", 12, 5)]
    GildedRose.new(@items).update_quality()
  end

  describe "#update_quality" do

    it "does not change the name" do
      expect(@items[0].name).to eq "foo"
    end

    it 'lowers the sell_in and quality values' do
      expect(@items[1].to_s).to eq 'test item, 0, 0'
    end

    it 'degrades the quality twice as fast once the sell by date has passed, which is when the sell_in value is zero' do
      expect(@items[2].to_s).to eq 'test item, -1, 0'
    end

    it 'does not allow the quality value of an item to be a negative value' do
      GildedRose.new(@items).update_quality()
      expect(@items[0].to_s).to eq 'foo, -2, 0'
    end

    it 'increases the quality of "Aged Brie" when the sell_in value decreases' do
      expect(@items[3].to_s).to eq 'Aged Brie, 2, 4'
    end

    it 'does not allow an item to have a quality value of more than 50' do
      expect(@items[4].to_s).to eq 'Aged Brie, 0, 50'
    end

    it 'does not decrease the value of the "Sulfuras" item' do
      expect(@items[5].to_s).to eq 'Sulfuras, Hand of Ragnaros, 5, 5'
    end

    it 'increases the quality of "Backstage passes" by one when the sell_in value is greater than or equal to eleven' do
      expect(@items[6].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 11, 6'
    end

  end

end
