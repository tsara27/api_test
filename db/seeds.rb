if Person.count == 0
	Person.create([{ name: 'Andi', birthdate: '01/01/2014'}, { name: 'Budi', birthdate: '02/02/2014'}, { name: 'Charlie', birthdate: '03/03/2014'}, { name: 'Dede', birthdate: '06/06/2014'}])
end

if Device.count == 0
	Device.create([{ os: 'apple iOS'}, { os: 'blackberry'}, { os: 'android'}, { os: 'feature phone'}])
end