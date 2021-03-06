# frozen_string_literal: true
require "date"

class Date
  class << self

    ##
    # Restituisce la data di domani.
    def domani
      oggi + 1
    end
  
    ##
    # Restituisce la data di ieri.
    def ieri
      oggi - 1
    end

  end

  ##
  # Restituisce la data di oggi a due anni fa.
  def due_anni_fa
    self.prev_year.prev_year
  end

  ##
  # Formatta la data secondo la rappresentazione passata.
  def formatta_locale(format)
    formattazione = strftime format
    formattazione
      .gsub(/January/i,     "Gennaio")
      .gsub(/February/i,    "Febbraio")
      .gsub(/March/i,       "Marzo")
      .gsub(/April/i,       "Aprile")
      .gsub(/May/i,         "Maggio")
      .gsub(/June/i,        "Giugno")
      .gsub(/July/i,        "Luglio")
      .gsub(/August/i,      "Agosto")
      .gsub(/September/i,   "Settembre")
      .gsub(/October/i,     "Ottobre")
      .gsub(/November/i,    "Novembre")
      .gsub(/December/i,    "Dicembre")
  end

end
