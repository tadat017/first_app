class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|#実際にpostsテーブルを作成するという仕様記載
      t.text :content #memoカラムを追加　t.の後に続くのがカラム（列）の型
              #シンボルで記載されるものがカラム名
      t.timestamps
    end
  end
end
