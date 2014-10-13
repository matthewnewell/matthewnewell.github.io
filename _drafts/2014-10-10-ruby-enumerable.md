---
layout: post
title: Exploring Ruby Enumerable
categories:
- blog
---

Class notes from [@kyleashipley](https://twitter.com/kyleashipley)'s enumerable presentation at Indy.rb.



class Team
  include Enumerable

end

def even(an_array)
  an_array.select { |x| x.even? }
end


Enumerable methods
each

each_with_index

%w(and bear cat).each_with_index do |a, i|
  puts a if i.even?
end
#prints ant and cat


.all?
.any?
.one?
.none?

[2,3,6,8].none? { |n| n.odd? }
=> true

.include?

.many #rails only


cool trick
(1..10).map { |n| n.even? } ==   (1..10).map(&:even?)


[3,1,2].sort { |a,b| b <=> a }  #spaceship operator


sort_by
%w(bear pig!! man).sort_by(&:length)
  => [“man”, “bear”, “pig!!!”]

people.sort_by { |p| [p.name, p.age] }
 #careful of nil

find / detect
[2,3,5,6].find { |n| n.odd? }
  #returns the first hit

select finds all

reject is the opposite of select

group_by
(1..10).group_by(&:even?)
  {
    false => [1,3,5,7,9],
    true => [2,3,4,8]

(1..10).partition(&:even?)
  returns array[0] is hits, and array[1]fails

Transformers
map
inject
flatten / flat_map

(1..10).map { |n| n*3 }
#go through list do something
people.map do |p|
  { id: p.id,
    value: p.name
}
end

(1.10).inject(0) { |sum, n| sum + n  }
#0 is initial value
# or (1..10)(:+)  #converts to proc 


springs.flat_map(&:kids)
[ “bar”, “lisa”, “mag”]


(1..Float::INFINITY)
.lazy
.map { |n| n*3 }
.first(10)

Lambdas
under_age = ->(n) { n < 21 }
(1..30).reject(&under_age)

underscore.js!(or lodash)

times3 = (n) -> n* 3

result = _.map [1,2,3], times3
result = _([1,2,3]).map times3






