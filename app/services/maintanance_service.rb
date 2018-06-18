class MaintenanceService
  attr_reader :contents
  def initialize(contents)
    @contents = contents
  end

  def call
    created_order
  end

  private

  def created_order
    contents.each do |content|
      customer = customer(content.first)
      provider = provider(content.last, content.fifth)
      product = product(content.second, content.third, provider)
      order(content.fourth.to_i, product, customer)
    end
  end

  def customer(name)
    Customer.find_or_create_by(name: name)
  end

  def provider(name, address)
    Provider.find_or_create_by(
      name: name.delete("\n"),
      address: address
    )
  end

  def product(description, price, provider)
    Product.create(
      description: description,
      price: price,
      provider: provider
    )
  end

  def order(quantity, product, customer)
    Order.create(
      quantity: quantity,
      total: quantity * product.price,
      product: product,
      customer: customer
    )
  end

  def order_created?
    Order.all.present?
  end
end
