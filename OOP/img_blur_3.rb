class Image

  def initialize(input_array)
    @input_array = input_array
  end

  def output_image
    @input_array.each do |row|
      puts row.join
    end
  end

  def blur(distance)
		## Find a 1 ##
    @copy_array = Marshal.load(Marshal.dump(@input_array))
    @input_array.each_with_index do |row, row_index|
      row.each_with_index do |pixel, pixel_index|
        if pixel == 1
          counter = 0

          # ## After finding a 1, blur each pixel in a perimeter of distance ##
					(distance+1).times do |vertical_index|
            (distance+1).times do |horizontal_index|

              # Definitions of excessive cases (refactor code)

              # puts pixel_index + horizontal_index -counter

              # # Quadrant 1
              if (pixel_index + horizontal_index - counter >= pixel_index) && (pixel_index + horizontal_index < @input_array[row_index].length) && (row_index - vertical_index >= 0)
                @copy_array[row_index - vertical_index][pixel_index + horizontal_index - counter] = 1
              end
              #
              # # Quadrant 2
              if (pixel_index - horizontal_index + counter <= pixel_index) && (pixel_index - horizontal_index >= 0) && (row_index - vertical_index >= 0)
                @copy_array[row_index - vertical_index][pixel_index - horizontal_index + counter] = 1
              end
              #
              # # Quadrant 3
              if (pixel_index + horizontal_index - counter >= pixel_index) && (pixel_index - horizontal_index >= 0) && (row_index + vertical_index < @input_array.length)
                @copy_array[row_index + vertical_index][pixel_index - horizontal_index + counter] = 1
              end
              #
              # # Quadrant 4
              if (pixel_index + horizontal_index - counter >= pixel_index) && (pixel_index + horizontal_index < @input_array[row_index].length) && (row_index + vertical_index < @input_array.length)
                @copy_array[row_index + vertical_index][pixel_index + horizontal_index - counter] = 1
              end

            end
            counter += 1
          end
        end
      end
    end
    return Image.new(@copy_array)
  end
end

image = Image.new([
	[1, 0, 0, 0, 0, 0, 0, 0, 1],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 1, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[1, 0, 0, 0, 0, 0, 0, 0, 1]
	])

image.blur(2).output_image





















###
