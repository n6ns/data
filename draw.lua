	

local drawing_settings = {
		Line = {
			Thickness = 1;
			Color = Color3fromRGB(255, 255, 255);
		},
		Text = {
			Size = 13;
			Center = true;
			OutlineColor = Color3fromRGB(0, 0, 0);
			Outline = true;
			Font = 1;
			Color = Color3fromRGB(255, 255, 255);
		},
		Square = {
			Thickness = 1,
			Color = Color3fromRGB(255, 255, 255);
			Filled = false;
		},
		Triangle = {
			Color = Color3fromRGB(255, 255, 255);
			Filled = true;
			Visible = false;
			Thickness = 1;
		}
	}

	local function draw(type)
		local drawing = Drawing.new(type)

		for i, v in drawing_settings[type] do
			drawing[i] = v
		end

		return drawing
	end


return draw
