class AddBreastfeedingToBaby < ActiveRecord::Migration[5.2]
  def change
    add_reference :babies, :breastfeedings, foreign_key: true
  end
end
