require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_i
    #続きを書いていきましょう！！(ifで条件分岐)
    if memo_type == 1
      puts "拡張子を除いたファイルを入力してください"
      file = gets.chomp
      CSV.open("#{file}.csv","w") do |csv| 
      puts "メモしたい内容を記入してください"
      puts "完了したらCtrl+Dを押します"
      memo_contents = STDIN.readlines
      csv << ["#{memo_contents}"]
    end
    elsif memo_type == 2
      puts "編集したいファイルを入力してください"
      file = gets.chomp
      CSV.open("#{file}.csv", "a") do |csv|
      puts "メモしたい内容を記入してください"
      puts "完了したらCtrl+Dを押します"
      memo_contents = STDIN.readlines
      csv << ["#{memo_contents}"] 
    end
    else
      puts "1か2を選択してください"
    end