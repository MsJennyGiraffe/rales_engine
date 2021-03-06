class CreateInvoice < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.references :customer, foreign_key: true
      t.references :merchant, foreign_key: true
      t.string :status
      t.timestamps
    end
  end
end
