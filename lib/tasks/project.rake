namespace :project do
  task :setup => :environment do
    load_classifications
    load_itineraries
  end
end

def load_classifications
  Classification.destroy_all
  %w(rio_niteroi rio_paqueta mangaratiba_ilha_grande angra_ilha_grande rio_cocota rio_charitas).each do |name|
    Factory.create("classification_#{name}")
  end
end

def load_itineraries
  Itinerary.destroy_all
  create_itineraries
  load_days
end

def create_itineraries
  @rio_niteroi = Factory.create("itinerary_business_day_rio_niteroi", :classification => classification_for("Rio - Niterói"))
  @niteroi_rio =  Factory.create("itinerary_business_day_niteroi_rio", :classification => classification_for("Rio - Niterói"))
  @rio_paqueta = Factory.create("itinerary_business_day_rio_paqueta", :classification => classification_for("Rio - Paquetá"))
  @paqueta_rio = Factory.create("itinerary_business_day_paqueta_rio", :classification => classification_for("Rio - Paquetá"))
  @mangaratiba_ilha_grande = Factory.create("itinerary_business_day_mangaratiba_ilha_grande", :classification => classification_for("Mangaratiba - Ilha Grande"))
  @ilha_grande_mangaratiba = Factory.create("itinerary_business_day_ilha_grande_mangaratiba", :classification => classification_for("Mangaratiba - Ilha Grande"))
  @angra_ilha_grande = Factory.create("itinerary_business_day_angra_ilha_grande", :classification => classification_for("Angra dos Reis - Ilha Grande"))
  @ilha_grande_angra = Factory.create("itinerary_business_day_ilha_grande_angra", :classification => classification_for("Angra dos Reis - Ilha Grande"))
  @rio_cocota = Factory.create("itinerary_business_day_rio_cocota", :classification => classification_for("Rio - Cocotá"))
  @cocota_rio = Factory.create("itinerary_business_day_cocota_rio", :classification => classification_for("Rio - Cocotá"))
  @rio_charitas = Factory.create("itinerary_business_day_rio_charitas", :classification => classification_for("Rio - Charitas"))
  @charitas_rio = Factory.create("itinerary_business_day_charitas_rio", :classification => classification_for("Rio - Charitas"))
end

def load_days
  (1..5).each { |cwday| load_days_for("business_day", cwday) }
  (6..7).each { |cwday| load_days_for("weekend_and_holidays", cwday) }
end


def load_days_for(kind_of_day, cwday)
  Factory.create("days_#{kind_of_day}_rio_niteroi", :itinerary => @rio_niteroi, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_niteroi_rio", :itinerary => @niteroi_rio, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_rio_paqueta", :itinerary => @rio_paqueta, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_paqueta_rio", :itinerary => @paqueta_rio, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_mangaratiba_ilha_grande", :itinerary => @mangaratiba_ilha_grande, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_ilha_grande_mangaratiba", :itinerary => @ilha_grande_mangaratiba, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_angra_ilha_grande", :itinerary => @angra_ilha_grande, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_ilha_grande_angra", :itinerary => @ilha_grande_angra, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_rio_cocota", :itinerary => @rio_cocota, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_cocota_rio", :itinerary => @cocota_rio, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_rio_charitas", :itinerary => @rio_charitas, :name => cwday.to_s)
  Factory.create("days_#{kind_of_day}_charitas_rio", :itinerary => @charitas_rio, :name => cwday.to_s)
end

def classification_for(name)
  Classification.find_by_name(name)
end

