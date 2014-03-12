
family= ["Matt", "Dana", "Lucy", "Bode"]

def meet_us(fam)
	puts "Meet our family of #{fam.length}."
	yield
end

meet_us(family) {family.each {|f| puts f}}

