class AddEndDateToEvents < ActiveRecord::Migration
  def change
  	change_table :events do |t|
      t.datetime :end_date
    end
    Event.update_all ["end_date = ?", Time.now]
  end
end
