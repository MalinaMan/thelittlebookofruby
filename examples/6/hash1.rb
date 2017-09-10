# Приклад програми від www.sapphiresteel.com

h1 = {
  'room1' => 'Скарбниця',
  'room2' => 'Тронний зал',
  'loc1' => 'Лісова поляна',
  'loc2' => 'Гірський потік'
}

class X
  def initialize( aName )
    @name = aName
  end
end

x1 = X.new('мій Xobject')

h2 = Hash.new("Якесь кільце")
h2['treasure1'] = 'Срібне кільце'
h2['treasure2'] = 'Золоте кільце'
h2['treasure3'] = 'Рубінове кільце'
h2['treasure4'] = 'Сапфірове кільце'
h2[x1] = 'Діамантове кільце'

h3 = {
  'treasure3' => 'Рубінове кільце',
  'treasure1' => 'Срібне кільце',
  'treasure4' => 'Сапфірове кільце',
  'treasure2' => 'Золоте кільце'
}

p(h2)                     # інспектуємо хеш
puts(h1['room2'])         # отримуємо значення використовуючи ключ ('Тронний зал')
p(h2['treasure1'])        # отримуємо значення використовуючи ключ ('Срібне кільце')
p(h1['unknown_room'])     # повертає значення за замовчування (nil)
p(h2['unknown_treasure']) # повертає значення за замовчування ('Якесь кільце')
p(h1.default) #=> nil
p(h2.default) #=> 'Якесь кільце'
h1.default = 'Дивовижне місце'
puts(h1.default) #=> 'Дивовижне місце'
p(h2[x1])        # тут ключем є об’єкт x1; значенням є 'Діамантове кільце'