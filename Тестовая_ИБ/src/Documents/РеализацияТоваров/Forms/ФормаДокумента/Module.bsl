
&НаКлиенте
Процедура ТоварыЗакупочнаяЦенаПриИзменении(Элемент)
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;  
  	ТекущиеДанные.Сумма = ТекущиеДанные.Количество *  ТекущиеДанные.ЗакупочнаяЦена;
КонецПроцедуры

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;  
  	ТекущиеДанные.Сумма = ТекущиеДанные.Количество *  ТекущиеДанные.ЗакупочнаяЦена;
КонецПроцедуры



&НаСервереБезКонтекста
Функция ТоварыНоменклатураПриИзмененииНаСервере(Знач Номенклатура)
	Возврат Номенклатура.Цена;
КонецФункции

&НаКлиенте
Процедура ТоварыНоменклатураПриИзменении(Элемент)
	Строка=Элементы.Товары.ТекущиеДанные;
	Строка.ЗакупочнаяЦена=ТоварыНоменклатураПриИзмененииНаСервере(строка.Номенклатура);
КонецПроцедуры



