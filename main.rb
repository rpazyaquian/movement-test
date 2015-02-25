require 'gosu'

class GameWindow < Gosu::Window
	def initialize
		super(640, 480, false)

		@character = Gosu::Image.new(self, './assets/img/happy.gif')
		@window_width = 640
		@window_height = 480
	end
	def update
	end
	def draw
		@window_center_x = 640/2
		@window_center_y = 480/2

		@character_x = @window_center_x - (@character.width / 2)
		@character_y = @window_center_y - (@character.height / 2)
		@character.draw(@character_x, @character_y, 0)
	end
end

window = GameWindow.new
window.show