class User < ApplicationRecord

  has_and_belongs_to_many :skills
  has_and_belongs_to_many :expertises
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :types

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['nickname']
      user.image = auth['info']['image']
      user.fullname = ""
      user.contact = ""
      user.bio = ""
      user.affiliation = ""
      user.trainings = ""
    end
  end


  # def self.search(search)
  #   if search
  #     where(["fullname ILIKE ? OR affiliation ILIKE ?", "%#{search}%", "%#{search}%"])
  #     # use ILIKE for psql instead of LIKE. also needed for heroku
  #   else
  #     all
  #   end
  # end


end
