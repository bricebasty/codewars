# frozen_string_literal: true

# TODO: complete this class

require 'pry'

# Gives informations on pages and items passed as arg
class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end

  # returns the number of pages
  def page_count
    (item_count.to_f / @items_per_page).ceil.to_i
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index + 1 <= page_count && page_index >= 0
      item_count % @items_per_page
    else
      -1
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index); end
end

helper = PaginationHelper.new(%w[a b c d e f], 4)
helper.page_item_count(0)
helper.page_item_count(1)
helper.page_item_count(2)
