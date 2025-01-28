class Mathch < ApplicationRecord
  extend FriendlyId

  # Configura cómo se generará el slug
  friendly_id :slug_candidates, use: :slugged

  # Valida la presencia de los equipos
  validates :teamAway, :teamHome,:date, presence: true

  # Define los candidatos para el slug
  def slug_candidates
    [
      "#{teamAway}-vs-#{teamHome}-on-#{date}", # equipo_a vs equipo_b
    ]
  end

  # slug generation by data change
  def should_generate_new_friendly_id?
    equipo_a_changed? || equipo_b_changed? || date_changed?|| super
  end
  
end