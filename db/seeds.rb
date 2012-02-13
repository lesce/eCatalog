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
mygrp << Student.create(:name => "Andrei Lescenco",:email => "lescee@gmail.com",:parent_email => "lescee@gmail.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Ghinea Robert",:email => "ghini@gmail.com",:parent_email => "ghini@parinti.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Bogdan Ciambur",:email => "ciambur@gmail.com",:parent_email => "ciamburparinti@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Alex Radulescu",:email => "radu@gmail.com",:parent_email => "radu.parinti@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Bianca Dragomir",:email => "bianca@yahh.com",:parent_email => "bianca.parinti@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Luca Robert",:email => "luca@gmail.com",:parent_email => "parinti.luca@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Corina Bote",:email => "bote@gmail.com",:parent_email => "parinti.bote@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Cotfas Raluca",:email => "ctfasralu@gmail.com",:parent_email => "ctfas@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Victor Racariu",:email => "racariu@gmail.com",:parent_email => "vic_parinti@x.com" ,:password => "a",:password_confirmation => "a")
mygrp << Student.create(:name => "Tudor Tolciu",:email => "2dor@gmail.com",:parent_email => "madrii@x.com" ,:password => "a",:password_confirmation => "a")
mygrp = lesce.groups[0].courses 
mygrp << Course.create(:name => "Informatica",:profesor => "Stefanescu Iulia")
mygrp << Course.create(:name => "Matematica",:profesor => "Zidaru Vasile")
mygrp << Course.create(:name => "Fizica",:profesor => "Curceanu Luminita")
mygrp << Course.create(:name => "Chimie",:profesor => "Albu Radita")
mygrp << Course.create(:name => "Engleza",:profesor => "Arin Aristica")
mygrp << Course.create(:name => "Franceza",:profesor => "Aldescu Ana")
mygrp << Course.create(:name => "Logica",:profesor => "Prahoveanu Ion")
mygrp << Course.create(:name => "Romana",:profesor => "Iliescu Mariane")
mygrp << Course.create(:name => "Geografie",:profesor => "Raduta Vasile")
mygrp << Course.create(:name => "Istorie",:profesor => "Roman Radita")


