class CreateLikedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :liked_jobs do |t|
      t.integer :user_id
      t.integer :job_id
      t.boolean :is_liked

      t.timestamps
    end
  end
end
