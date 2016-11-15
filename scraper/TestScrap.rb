load 'scraping_test.rb'


mat = ObterMaterias.new
materias = []
materias = mat.listarMaterias('ga')

puts materias[0]
puts materias[1]
puts

#+7
puts materias[8]
puts materias[9]
puts

#+7
puts materias[16]
puts materias[17]
puts

#+7
puts materias[24]
puts materias[25]
puts

#+7
puts materias[32]
puts materias[33]
puts

#-7
puts materias[-40]
puts materias[-39]
puts

#-7
puts materias[-32]
puts materias[-31]
puts

#-7
puts materias[-24]
puts materias[-23]
puts


#-7
puts materias[-16]
puts materias[-15]
puts

#-7
puts materias[-8]
puts materias[-7]
puts


