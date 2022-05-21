  require "csv"  
 
  puts "1(新規でメモを作成)2(既存のメモを編集する)"
  memo_type = gets.to_s
  input_number = memo_type.chomp
 
  
  if input_number == "1"
    puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    puts "メモの内容を記入して下さい。Ctrl+Dで保存します。"
    imput_memo = STDIN.read
    memo = imput_memo.chomp
    CSV.open("#{file_name}.csv","w") do |csv|
    csv<<[memo]
    puts "作成しました。"
  end
    
  elsif input_number == "2"
    puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
    file_name = gets.chomp
    puts "編集内容を記入してください。Ctrl+Dで保存します。"
    imput_memo = STDIN.read
    memo = imput_memo.chomp
    CSV.open("#{file_name}.csv","a") do |csv|
    csv<<[memo]
    puts "編集しました。"
  end 
  
  else
    puts "1か2を選択してください"
  end