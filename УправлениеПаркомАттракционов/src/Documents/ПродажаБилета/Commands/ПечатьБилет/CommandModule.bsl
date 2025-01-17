#Область ОбработчикиСобытий
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Печать)
	ТабДок = Новый ТабличныйДокумент;
	ПечатьБилет(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Ложь;
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.Показать();
	//}}
КонецПроцедуры
#КонецОбласти

#Область СлужебныеПроцедурыИФункции
// Обработчик команды печати на сервере.
//
// Параметры:
//	ТабДок - ТабличныйДокумент - табличный документ для заполнения и печати.
//	ПараметрКоманды - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
&НаСервере
Процедура ПечатьБилет(ТабДок, ПараметрКоманды)
	Документы.ПродажаБилета.ПечатьБилет(ТабДок, ПараметрКоманды);
КонецПроцедуры
#КонецОбласти



