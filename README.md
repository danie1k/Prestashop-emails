1. Dla każdego sklepu trzeba ustawić opcję "Kolor maili" w Panelu Admina,
   (Preferencje > Szablony) ma to realny wpływ na wygląd wiadomości.


2. /override/classes/PaymentModule.php

   Plik /override/classes/PaymentModule.php nadpisuje moduł wysyłający e-mail 
   do klienta z podsumowaniem, po złożeniu zamówienia. Ta modyfikacja dodaje 
   do wiadomości obsługę znacznika {id_order} w szablonie e-mail order_conf.

   Po wgraniu tego pliku - lub, jeśli /override/classes/PaymentModule.php już 
   istnieje, przekopiowaniu metody validateOrder - trzeba usunąć plik 
   /cache/class_index.php, żeby Presta wyłapała tą zmianę.


3. /themes/default/...

   W tym katalogu są tłumaczenia e-maili wysyłanych przez Prestashop.
   E-maile są tylko dla języka PL, jeśli sklep ma działać też w innych językach,
   trzeba zrobić tlumaczenia.
   Katalogi "mails" i "modules" z /themes/default/ trzeba wrzucić do katalogu
   właściwego dla domyślnego szablonu sklepu.

   E-maile są przygotowane i przetestowane dla wszystkich modułów Prestashop,
   które są dostępne w instalatorze.


4. Dodatkowo dołączona jest zmodyfikowana wersja modułu płatności przelewem,
   która wyświetla komunikat o płatności dostosowany do wysyłanych e-maili.


5. Po wgraniu plików trzeba zrobić jeszcze jedną rzecz, ustawić tematy 
   wiadomości w Panelu Admina: Lokalizacja > Tłumaczenia.
   Tłumaczenia tematów dostarczone w paczce tłumaczącej są beznadziejne.
   
   Uwaga! Jeśli tematy mają być inne, to oprócz wpisania ich w Panelu, 
   takie same tematy trzeba wpisać w tagu <title> w szablonach HTML e-maili.
   
   Nie wolno edytować e-maili z poziomu Panelu Admina, rozjeżdża się struktura 
   HTML, trzeba edytować pliki przez FTP. Należy o tym informować klientów.
   
   Poniżej lista tematów do wpisania w tłumaczeniach.
   
   [E-maile systemowe]
   01. account:....................................................... Witaj w gronie klientów!
   02. backoffice_order:.............................................. Utworzyliśmy dla Ciebie nowe zamówienie!
   03. bankwire:...................................................... Zapłać przelewem za nowe zamówienie!
   04. cheque:........................................................ Zapłać czekiem za nowe zamówienie!
   05. contact (Message from contact form):........................... Wiadomość od klienta sklepu!
       contact (Your message has been correctly sent #ct%1$s #tc%2$s): Twoja wiadomość wysłana
       contact (Your message has been correctly sent):................ Twoja wiadomość wysłana
       contact (tag wykorzystany jako "tytuł"):....................... Wiadomość od klienta sklepu!
   06. contact_form:.................................................. Twoja wiadomość została wysłana!
   07. credit_slip:................................................... Procedura zwrotu zamówienia
   08. download_product:.............................................. Twoje pliki są gotowe do pobrania!
   09. employee_password:............................................. Dane dostępowe do Panelu Administracyjnego
   10. forward_msg:................................................... Obsługa Klienta - wiadomość przekazana
   11. guest_to_customer:............................................. Witaj w gronie klientów!
   12. in_transit:.................................................... Zamówienie w transporcie!
   13. log_alert:..................................................... Nowe ostrzeżenie w Panelu Administracyjnym!
   14. newsletter:.................................................... Newsletter
   15. order_canceled:................................................ Zamówienie anulowane
   16. order_changed:................................................. Zamówienie zmodyfikowane
   17. order_conf:.................................................... Potwierdzenie zamówienia!
   18. order_customer_comment:........................................ Wiadomość od klienta
   19. order_merchant_comment:........................................ Nowa wiadomość dotycząca zamówienia
   20. order_return_state:............................................ Zmiana statusu zwrotu zamówienia
   21. outofstock:.................................................... Brak towaru z zamówienia
   22. password:...................................................... Nowe hasło
   23. password_query:................................................ Potwierdź zmianę hasła
   24. payment:....................................................... Płatność przyjęta
   25. payment_error:................................................. Płatność odrzucona!
   26. preparation::.................................................. Zamówienie w realizacji
   27. refund:........................................................ Płatność zwrócona
   28. reply_msg:..................................................... Odpowiedź na Twoją wiadomość
   29. shipped:....................................................... Zamówienie wysłane
   30. test:.......................................................... Testowa wiadomość
   31. voucher:....................................................... Kupon rabatowy dla Ciebie!
   32. voucher_new:................................................... Kupon rabatowy dla Ciebie!


   [Moduł e-maili]

   # E-maile dla modułu blocknewsletter

   01. newsletter_conf:............................................... Rejestracja w newsletterze
   02. newsletter_verif:.............................................. Weryfikacja rejestracji w newsletterze
   03. newsletter_voucher:............................................ Rabat za rejestrację w newsletterze

   # E-maile dla modułu blockwishlist

   01. wishlink:...................................................... Link do Twojej listy życzeń
   02. wishlist:...................................................... Kupon rabatowy dla Ciebie!

   # E-maile dla modułu followup

   01. followup_1:.................................................... Twój koszyk i Twój kupon rabatowy!
   02. followup_2:.................................................... Dziękujemy za złożenie zamówienia!
   03. followup_3:.................................................... Dziękujemy za zaufanie!
   04. followup_4:.................................................... Tęsknimy za Tobą!
 
   # E-maile dla modułu mailalerts

   01. customer_qty:.................................................. Produkt znów dostępny
   02. new_ordery:.................................................... Nowe zamówienie w sklepie
   03. productcoverage:............................................... Produkt na wyczerpaniu!
   04. productoutofstock:............................................. Wyczerpanie zapasów

   # E-maile dla modułu referralprogram

   01. referralprogram-congratulations:............................... Kupon rabatowy dla Ciebie!
   02. referralprogram-invitation:.................................... Zaproszenie do rejestracji
   03. referralprogram-voucher:....................................... Kupon rabatowy dla Ciebie!
   
   # E-maile dla modułu sendtoafriend

   01. send_to_a_friend:.............................................. Twój znajomy poleca Ci produkt

