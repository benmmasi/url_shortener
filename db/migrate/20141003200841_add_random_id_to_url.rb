class AddRandomIdToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :random_id, :string
    add_column :urls, :((0...3).map { (65 + rand(26)).chr } + (0...3).map {(rand(0...9))}).join, :string
  end
end
