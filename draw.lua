local draw = {}	

draw.settings = {
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

function draw.new(type)
	local drawing = Drawing.new(type)
	
	if draw.settings[type] then
		for i, v in draw.settings[type] do
			drawing[i] = v
		end
	end
	
	return drawing
end


return draw
