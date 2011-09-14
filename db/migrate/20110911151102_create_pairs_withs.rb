require 'foreigner'

class CreatePairsWiths < ActiveRecord::Migration
  def change
    create_table :pairs_withs do |t|
      t.integer :programmer_id
      t.integer :pair_id
      t.integer :number_of_times_paired

      t.timestamps
    end

    #add_foreign_key(:pairs_withs, :programmer,
    #                   :column=>"programmer_id", :dependent => :delete)
    #add_foreign_key(:pairs_withs, :programmer,
    #                    :column=>"pair_id", :dependent => :delete)


  end


end
