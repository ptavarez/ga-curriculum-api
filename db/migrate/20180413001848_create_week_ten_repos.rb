class CreateWeekTenRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :week_ten_repos do |t|
      t.integer :week
      t.string :day
      t.string :repo_url
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
