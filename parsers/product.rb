html = Nokogiri.HTML(content)

price = html.css('[itemprop="price"]').text
price = html.css('.vi-VR-cvipPrice').text if price.strip == ''
price = html.css('.display-price').text if price.strip == ''
raise 'something happend!' if price.strip == ''

outputs << {
    _collection: "products",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}