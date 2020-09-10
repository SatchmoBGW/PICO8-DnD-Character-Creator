pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
function die_roll()
	d = flr(rnd(6)) + 1
	return d
end

dice = {}
low = 6
total = 0

for i=1,4 do
	die_roll()
	add (dice,d)
	if d < low then
		low = d
	end
end

del(dice,low)

for d in all(dice) do
		print(d)
		total += d
end

print(low,8)
print("total: "..total,6)
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
