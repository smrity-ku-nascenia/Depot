# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
Product.delete_all

LineItem.delete_all
Cart.delete_all
=end
Product.create(:title => 'Programming Ruby 1.9',
               :description =>
                   %{<p>
Ruby is the fastest growing and most exciting dynamic language
out there. If you need to get working programs delivered fast,
you should add Ruby to your toolbox.
</p>},
               :image_url => '/assets/ruby.jpg',
               :price => 449.50)

Product.create(:title => 'Programming Rails',
               :description =>
                   %{<p>
Rails is the fastest growing and most exciting dynamic framework
out there. If you need to get working programs delivered fast,
you should add Rails to your toolbox.
</p>},
               :image_url => '/assets/rails.png',
               :price => 550.50)
