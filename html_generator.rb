require "json"
require "open-uri"

class HtmlGenerator
  
  def show(id)
    print_header
    puts "Action: Show"

    product = retrieve_data("http://lcboapi.com/products/#{id}.json")

    print_footer
  end

  def index
    print_header
    puts "Action: Index"

    products = retrieve_data("http://lcboapi.com/products.json")

    products.each do |product|
      display_product(product)
    end

    print_footer
  end

  private

  def display_detailed_product(product)
    # generate show page content here
  end

  def display_product(product)
    puts "<h2>#{product['name']}</h2>"
    puts "<img src='#{product['image_thumb_url']}'>"
  end

  def print_header
    puts "<html>"
    puts "  <head>"
    puts "    <title>Connoisseur</title>"
    puts "  </head>"
    puts "  <body>"
  end

  def print_footer
    puts "  </body>"
    puts "</html>"
  end

  def retrieve_data(url)
    response = open(url).read
    data = JSON.parse(response)
    return data["result"]
  end






end
