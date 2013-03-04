class RenameDateColumnToStartDate < ActiveRecord::Migration
	def change
	  	rename_column :events, :date, :start_date
	end
end
