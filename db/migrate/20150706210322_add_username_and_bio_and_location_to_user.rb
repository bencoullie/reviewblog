class AddUsernameAndBioAndLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text, default: "This user has yet to write a bio. Sigh."
    add_column :users, :location, :string, default: "This user has yet to provide their location. Lame."
  end
end
