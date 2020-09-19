class AddPostalCodeToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :postal_code, :string
  end
end
