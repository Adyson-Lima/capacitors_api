puts 'Gerando capacitors...'

5.times do |i|
  Capacitor.create(
    description: ["tantalo", "ceramico", "poliester"].sample ,
    price: ["1,00","3,00","0,25"].sample
    )
end

puts 'capacitors gerados com sucesso!'
