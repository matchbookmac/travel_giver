class Country < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  validates :c_name, :presence => true
  validates :continent, :presence => true
  validates :c_description, :presence => true

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/

  def sortByContinentAsia(country)
    asia_countries = []
    if country.continent === "Asia"
      asia_countries.push(country)
    end
    return asia_countries
  end

  def sortByContinentAfrica country
    africa_countries = []
    if country.continent === "Africa"
      africa_countries.push(country)
    end
    return africa_countries
  end

  def sortByContinentEurope country
    europe_countries = []
    if country.continent === "Europe"
      europe_countries.push(country)
    end
    return europe_countries
  end

  def sortByContinentAustralia country
    australia_countries = []
    if country.continent === "Asia"
      australia_countries.push(country)
    end
    return australia_countries
  end

  def sortByContinentNorthAmerica country
    nAmerica_countries = []
    if country.continent === "North-America"
      nAmerica_countries.push(country)
    end
    return nAmerica_countries
  end

  def sortByContinentSouthAmerica country
    sAmerica_countries = []
    if country.continent === "South-America"
      sAmerica_countries.push(country)
    end
    return sAmerica_countries
  end

end
