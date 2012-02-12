# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lesce = User.create(:name => 'Lescenco Andrei',:email => "lescee@gmail.com",:password => 'a',:password_confirmation => 'a')
grp = Group.create(:name =>"default")
lesce.groups << grp
mygrp = lesce.groups[0].students
mygrp << Student.create(:name => "Andrei Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Vasile Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Bogdan Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Alex Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Lolo Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "LEsce Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Zero Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Zooool Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Uru Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "xxAndrei Lescenco",:email => "lescee@gmail.com",:parent_email => "andrei@and.com" ,:password => "a",:password_confirmation => "a")
mygrp = lesce.groups[0].courses 
mygrp << Course.create(:name => "Info")
mygrp << Course.create(:name => "Mate")
mygrp << Course.create(:name => "Fizica")
mygrp << Course.create(:name => "Zulu")
mygrp << Course.create(:name => "Sare")
mygrp << Course.create(:name => "Zulu")
mygrp << Course.create(:name => "Caaa")
mygrp << Course.create(:name => "Zzzz")
mygrp << Course.create(:name => "Reda")
mygrp << Course.create(:name => "Xppp")


