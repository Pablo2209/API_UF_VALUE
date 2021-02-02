class CreateUfValues < ActiveRecord::Migration[6.1]
  def change
    create_table :uf_values do |t|
      t.string :client
      t.date :request_date
      t.float :uf_value

      t.timestamps
    end
  end
end
