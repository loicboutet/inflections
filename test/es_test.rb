# encoding: utf-8

require 'test_helper'
require 'inflections/es'

class TestSpanishInflections < Minitest::Test
  def test_plurales_regulares
    assert_equal 'libros', 'libro'.pluralize(:es)
    assert_equal 'libro', 'libros'.singularize(:es)

    assert_equal 'radios', 'radio'.pluralize(:es)
    assert_equal 'radio', 'radios'.singularize(:es)

    assert_equal 'señores', 'señor'.pluralize(:es)
    assert_equal 'señor', 'señores'.singularize(:es)

    assert_equal 'leyes', 'ley'.pluralize(:es)
    assert_equal 'ley', 'leyes'.singularize(:es)
  end

  def test_plurales_que_terminan_en_z
    assert_equal 'meces', 'mez'.pluralize(:es)
    assert_equal 'luces', 'luz'.pluralize(:es)
  end

  def test_plurales_que_terminan_en_n_o_s_con_acentos
    assert_equal 'aviones', 'avión'.pluralize(:es)
    assert_equal 'intereses', 'interés'.pluralize(:es)
  end

  def test_plurales_irregulares
    assert_equal 'los', 'el'.pluralize(:es)
    assert_equal 'el', 'los'.singularize(:es)
  end

  def test_singulares_regulares
    assert_equal 'casa', 'casas'.singularize(:es)
    assert_equal 'perro', 'perros'.singularize(:es)

    assert_equal 'árbol', 'árboles'.singularize(:es)
    assert_equal 'álbum', 'álbumes'.singularize(:es)
    assert_equal 'mujer', 'mujeres'.singularize(:es)
  end

  def test_singulares_especiales
    assert_equal 'mequetrefe', 'mequetrefes'.singularize(:es)
    assert_equal 'pasaje', 'pasajes'.singularize(:es)
    assert_equal 'fase', 'fases'.singularize(:es)
    assert_equal 'pez', 'peces'.singularize(:es)
  end
end
