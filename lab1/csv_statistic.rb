require 'csv'
print %(
	This program provides information on the number
	of Russian population in the period from 1917 to 2018
    1 maximum
    2 minimum
    3 average value
    4 corrected sample variance
Enter: )
stat = gets.chomp
case stat
when '1'
  max = 0
  data = ''
  CSV.foreach('data.csv', col_sep: ',') do |row|
    if (max < row[1].to_f)
      max = row[1].to_f
      data = row[0]
    end
  end
  p 'The maximum number of people reached in ', data,
        ' and is ', max, ' million people.'
when '2'
  min = 9999999
  data = ''
  CSV.foreach('data.csv', col_sep: ',') do |row|
    if min > row[1].to_f
      min = row[1].to_f
      data = row[0]
    end
  end
  p 'The minimum number of people reached in ', data,
        ' and is ', min, ' million people.'
when '3'
  count = 0
  sum = 0
  CSV.foreach('data.csv', col_sep: ',') do |row|
    sum += row[1].to_f
    count += 1
  end
  average = sum / count
  p 'The average population of Russia in the period from 1917 to 2018 ', average, ' million people.'
when '4'
  array = []
  CSV.foreach('data.csv', col_sep: ',') do |row|
    array << row[1].to_f
  end
  average = array.inject(0){ |result, elem| result + elem } / array.count
  variance = 0
  array.each { |i| variance += (i - average) ** 2 }
  variance /= (array.count - 1)
  p 'The corrected sample variance is ', variance
else
  p 'Error data!!!'
end
