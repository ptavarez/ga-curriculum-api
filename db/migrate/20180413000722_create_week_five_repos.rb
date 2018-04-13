class CreateWeekFiveRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :week_five_repos do |t|
      t.integer :week
      t.string :day
      t.string :repo_url
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
