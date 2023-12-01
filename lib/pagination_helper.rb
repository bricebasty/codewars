# frozen_string_literal: true

# Provides information on pages and items passed as arguments
class PaginationHelper
  attr_reader :collection, :items_per_page

  # Initializes an instance with a collection and items per page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # Returns the number of items in the collection
  def item_count
    collection.size
  end

  # Returns the total number of pages required
  def page_count
    (item_count.to_f / items_per_page).ceil
  end

  # Returns the number of items on a given page
  def page_item_count(page_index)
    return -1 if page_index >= page_count || page_index.negative?

    if page_index == page_count - 1
      item_count % items_per_page
    else
      items_per_page
    end
  end

  # Determines which page an item resides on
  def page_index(item_index)
    return -1 if item_index >= item_count || item_index.negative? || item_count.zero?

    item_index / items_per_page
  end
end


helper = PaginationHelper.new(%w[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14], 4)
# page_index takes an item index and returns the page that it belongs on
p helper.page_index(3) # == 0
p helper.page_index(4) # == 1
p helper.page_index(6) # == 1
p helper.page_index(8) # == 2
p helper.page_index(9) # == 2
p helper.page_index(10) # == 2
p helper.page_index(11) # == 3
p helper.page_index(12) # == 3
p helper.page_index(13) # == 3
p helper.page_index(14) # == 3
p helper.page_index(15) # == 3 page 4
p helper.page_index(16) # == -1
