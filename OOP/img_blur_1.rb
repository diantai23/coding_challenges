class Image

  def initialize(input_array)
    @input_array = input_array
  end

  def output_image
    current_row = 0
    @input_array.each do |row|
      puts "#{@input_array[current_row].join}"
      current_row += 1
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image.inspect
