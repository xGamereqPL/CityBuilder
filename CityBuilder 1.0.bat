md CityBuilder
@echo off
title City Builder 1.0
color 0A
:boot
cls
echo 1 - NOWA GRA
echo 2 - WCZYTAJ ZAPIS GRY
set /p"menu=>"
if %menu%==1 goto new
if %menu%==2 goto load
goto boot

:new
set mieszkancy=0
set dom=0
set wiezowiec=0
set sklep=0
set blok=0
set apteka=0
set szkola=0
set szpital=0
cls
echo 1. Konfiguracja burmistrza:
echo Wpisz swoje imie:
set /p"imie=>"
echo Wpisz swoje nazwisko:
set /p"nazwisko=>"
echo.
echo 2. Konfiguracja miasta:
echo Jak chcesz nazwac swoje miasto:
set /p"miasto=>"
set kasa=1000
goto menu

:load
set /p kasa=<CityBuilder/KASA.TXT
set /p imie=<CityBuilder/IMIE.TXT
set /p nazwisko=<CityBuilder/NAZWISKO.TXT
set /p miasto=<CityBuilder/MIASTO.TXT
set /p mieszkancy=<CityBuilder/MIESZKANCY.TXT
set /p dom=<CityBuilder/DOM.TXT
set /p wiezowiec=<CityBuilder/WIEZOWIEC.TXT
set /p sklep=<CityBuilder/SKLEP.TXT
set /p blok=<CityBuilder/BLOK.TXT
set /p apteka=<CityBuilder/APTEKA.TXT
set /p szkola=<CityBuilder/SZKOLA.TXT
set /p szpital=<CityBuilder/SZPITAL.TXT
if %mieszkancy%==00 set mieszkancy=0
if %mieszkancy%==01 set mieszkancy=1
if %mieszkancy%==02 set mieszkancy=2
if %mieszkancy%==03 set mieszkancy=3
if %mieszkancy%==04 set mieszkancy=4
if %mieszkancy%==05 set mieszkancy=5
if %mieszkancy%==06 set mieszkancy=6
if %mieszkancy%==07 set mieszkancy=7
if %mieszkancy%==08 set mieszkancy=8
if %mieszkancy%==09 set mieszkancy=9
if %dom%==00 set dom=0
if %dom%==01 set dom=1
if %dom%==02 set dom=2
if %dom%==03 set dom=3
if %dom%==04 set dom=4
if %dom%==05 set dom=5
if %dom%==06 set dom=6
if %dom%==07 set dom=7
if %dom%==08 set dom=8
if %dom%==09 set dom=9
if %wiezowiec%==00 set wiezowiec=0
if %wiezowiec%==01 set wiezowiec=1
if %wiezowiec%==02 set wiezowiec=2
if %wiezowiec%==03 set wiezowiec=3
if %wiezowiec%==04 set wiezowiec=4
if %wiezowiec%==05 set wiezowiec=5
if %wiezowiec%==06 set wiezowiec=6
if %wiezowiec%==07 set wiezowiec=7
if %wiezowiec%==08 set wiezowiec=8
if %wiezowiec%==09 set wiezowiec=9
if %sklep%==00 set sklep=0
if %sklep%==01 set sklep=1
if %sklep%==02 set sklep=2
if %sklep%==03 set sklep=3
if %sklep%==04 set sklep=4
if %sklep%==05 set sklep=5
if %sklep%==06 set sklep=6
if %sklep%==07 set sklep=7
if %sklep%==08 set sklep=8
if %sklep%==09 set sklep=9
if %blok%==00 set blok=0
if %blok%==01 set blok=1
if %blok%==02 set blok=2
if %blok%==03 set blok=3
if %blok%==04 set blok=4
if %blok%==05 set blok=5
if %blok%==06 set blok=6
if %blok%==07 set blok=7
if %blok%==08 set blok=8
if %blok%==09 set blok=9
if %apteka%==00 set apteka=0
if %apteka%==01 set apteka=1
if %apteka%==02 set apteka=2
if %apteka%==03 set apteka=3
if %apteka%==04 set apteka=4
if %apteka%==05 set apteka=5
if %apteka%==06 set apteka=6
if %apteka%==07 set apteka=7
if %apteka%==08 set apteka=8
if %apteka%==09 set apteka=9
if %szkola%==00 set szkola=0
if %szkola%==01 set szkola=1
if %szkola%==02 set szkola=2
if %szkola%==03 set szkola=3
if %szkola%==04 set szkola=4
if %szkola%==05 set szkola=5
if %szkola%==06 set szkola=6
if %szkola%==07 set szkola=7
if %szkola%==08 set szkola=8
if %szkola%==09 set szkola=9
if %szpital%==00 set szpital=0
if %szpital%==01 set szpital=1
if %szpital%==02 set szpital=2
if %szpital%==03 set szpital=3
if %szpital%==04 set szpital=4
if %szpital%==05 set szpital=5
if %szpital%==06 set szpital=6
if %szpital%==07 set szpital=7
if %szpital%==08 set szpital=8
if %szpital%==09 set szpital=9
goto menu

:menu
if %kasa% LSS 1 goto koniec
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo MENU BUDOWY:
echo 1 - Wybuduj dom (200$)
echo 2 - Wybuduj wiezowiec (900$)
echo 3 - Wybuduj sklep (400$)
echo 4 - Wybuduj blok (800$)
echo 5 - Wybuduj apteke (600$)
echo 6 - Wybuduj szkole (700$)
echo 7 - Wybuduj szpital (750$)
echo.
echo MENU ZARABIANIA:
echo 8 - Pracuj 6 godzin
echo 9 - Zagraj w lotto (100$ za gre)
echo.
echo MENU DODATKOW:
echo 0 - Zapisz stan gry
set /p"menu=>"
if %menu%==1 goto dom
if %menu%==2 goto wiezowiec
if %menu%==3 goto sklep
if %menu%==4 goto blok
if %menu%==5 goto apteka
if %menu%==6 goto szkola
if %menu%==7 goto szpital
if %menu%==8 goto praca
if %menu%==9 goto lotto
if %menu%==0 goto save
goto menu

:dom
cls
if %kasa% LSS 200 goto zamalo
set /a dom=dom+1
set /a kasa=kasa-200
set /a mieszkancy=mieszkancy+5
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO DOM.
echo.
echo     ###
echo   ##   ##
echo  #       #
echo ###########
echo #         #
echo #         #
echo #         #
echo ###########
echo.
pause
goto menu

:wiezowiec
cls
if %kasa% LSS 900 goto zamalo
set /a wiezowiec=wiezowiec+1
set /a mieszkancy=mieszkancy+20
set /a kasa=kasa-900
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO WIEZOWIEC.
echo.
echo     ###
echo   ##   ##
echo  #       #
echo ###########
echo #         #
echo #         #
echo #         #
echo #         #
echo #         #
echo #         #
echo ###########
echo.
pause
goto menu

:sklep
cls
if %kasa% LSS 400 goto zamalo
set /a sklep=sklep+1
set /a kasa=kasa-400
set /a mieszkancy=mieszkancy+6
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO SKLEP.
echo.
echo     ###
echo   ##   ##
echo  #       #
echo ###########
echo #         #
echo #         #
echo ###########
echo.
pause
goto menu

:blok
cls
if %kasa% LSS 800 goto zamalo
set /a blok=blok+1
set /a kasa=kasa-800
set /a mieszkancy=mieszkancy+20
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO BLOK.
echo.
echo     ###
echo   ##   ##
echo  #       #
echo ###########
echo #         #
echo #         #
echo #         #
echo #         #
echo #         #
echo ###########
echo.
pause
goto menu

:apteka
cls
if %kasa% LSS 600 goto zamalo
set /a apteka=apteka+1
set /a kasa=kasa-600
set /a mieszkancy=mieszkancy+8
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO APTEKE.
echo.
echo   #######
echo  ##     ##
echo ###########
echo #         #
echo #         #
echo ###########
echo.
pause
goto menu

:szkola
cls
if %kasa% LSS 700 goto zamalo
set /a mieszkancy=mieszkancy+10
set /a szkola=szkola+1
set /a kasa=kasa-700
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO SZKOLE.
echo.
echo    ########
echo  ##        ##
echo ##############
echo #            #
echo #            #
echo #            #
echo ##############
echo.
pause
goto menu

:szpital
cls
if %kasa% LSS 750 goto zamalo
set /a mieszkancy=mieszkancy+15
set /a szpital=szpital+1
set /a kasa=kasa-750
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo WYBUDOWANO SZPITAL.
echo.
echo    ########
echo  ###      ###
echo ##############
echo #            #
echo #            #
echo #            #
echo #            #
echo ##############
echo.
pause
goto menu

:praca
cls
echo Zostalo: 6 godzin
ping localhost -n 3 >nul
echo Zostalo: 5 godzin
ping localhost -n 3 >nul
echo Zostalo: 4 godziny
ping localhost -n 3 >nul
echo Zostalo: 3 godziny
ping localhost -n 3 >nul
echo Zostalo: 2 godziny
ping localhost -n 3 >nul
echo Zostalo: 1 godzina
ping localhost -n 3 >nul
echo Zarabiasz 800$!
pause
set /a kasa=kasa+800
goto menu

:zamalo
goto menu

:lotto
if %kasa% LSS 100 goto zamalo
set /a kasa=kasa-100
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
set /a lot1=(%random% %%20)
set /a lot2=(%random% %%20)
set /a lot3=(%random% %%20)
set /a lot4=(%random% %%20)
echo Podaj liczbe od 0 do 20:
set /p"liczba=>"
if %liczba%==%lot1% goto lot1
if %liczba%==%lot2% goto lot2
if %liczba%==%lot3% goto lot3
if %liczba%==%lot4% goto lot4
echo WYGRANA: 0$
pause
goto menu

:lot1
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo Podaj liczbe od 0 do 20: %liczba%
echo WYGRANA: 100$
set /a kasa=kasa+100
pause
goto menu

:lot2
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo Podaj liczbe od 0 do 20: %liczba%
echo WYGRANA: 500$
set /a kasa=kasa+500
pause
goto menu

:lot3
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo Podaj liczbe od 0 do 20: %liczba%
echo WYGRANA: 1200$
set /a kasa=kasa+1200
pause
goto menu

:lot4
cls
echo STATYSTYKI:
echo Burmistrz: %imie% %nazwisko%
echo Miasto: %miasto%
echo Stan konta: %kasa%$
echo Mieszkancy: %mieszkancy%
echo Domy: %dom%
echo Wiezowce: %wiezowiec%
echo Sklepy: %sklep%
echo Bloki: %blok%
echo Apteki: %apteka%
echo Szkoly: %szkola%
echo Szpitale: %szpital%
echo.
echo.
echo Podaj liczbe od 0 do 20: %liczba%
echo WYGRANA: 2500$
set /a kasa=kasa+2500
pause
goto menu

:save
cls
if %mieszkancy%==0 set mieszkancy=00
if %mieszkancy%==1 set mieszkancy=01
if %mieszkancy%==2 set mieszkancy=02
if %mieszkancy%==3 set mieszkancy=03
if %mieszkancy%==4 set mieszkancy=04
if %mieszkancy%==5 set mieszkancy=05
if %mieszkancy%==6 set mieszkancy=06
if %mieszkancy%==7 set mieszkancy=07
if %mieszkancy%==8 set mieszkancy=08
if %mieszkancy%==9 set mieszkancy=09
if %dom%==0 set dom=00
if %dom%==1 set dom=01
if %dom%==2 set dom=02
if %dom%==3 set dom=03
if %dom%==4 set dom=04
if %dom%==5 set dom=05
if %dom%==6 set dom=06
if %dom%==7 set dom=07
if %dom%==8 set dom=08
if %dom%==9 set dom=09
if %wiezowiec%==0 set wiezowiec=00
if %wiezowiec%==1 set wiezowiec=01
if %wiezowiec%==2 set wiezowiec=02
if %wiezowiec%==3 set wiezowiec=03
if %wiezowiec%==4 set wiezowiec=04
if %wiezowiec%==5 set wiezowiec=05
if %wiezowiec%==6 set wiezowiec=06
if %wiezowiec%==7 set wiezowiec=07
if %wiezowiec%==8 set wiezowiec=08
if %wiezowiec%==9 set wiezowiec=09
if %sklep%==0 set sklep=00
if %sklep%==1 set sklep=01
if %sklep%==2 set sklep=02
if %sklep%==3 set sklep=03
if %sklep%==4 set sklep=04
if %sklep%==5 set sklep=05
if %sklep%==6 set sklep=06
if %sklep%==7 set sklep=07
if %sklep%==8 set sklep=08
if %sklep%==9 set sklep=09
if %blok%==0 set blok=00
if %blok%==1 set blok=01
if %blok%==2 set blok=02
if %blok%==3 set blok=03
if %blok%==4 set blok=04
if %blok%==5 set blok=05
if %blok%==6 set blok=06
if %blok%==7 set blok=07
if %blok%==8 set blok=08
if %blok%==9 set blok=09
if %apteka%==0 set apteka=00
if %apteka%==1 set apteka=01
if %apteka%==2 set apteka=02
if %apteka%==3 set apteka=03
if %apteka%==4 set apteka=04
if %apteka%==5 set apteka=05
if %apteka%==6 set apteka=06
if %apteka%==7 set apteka=07
if %apteka%==8 set apteka=08
if %apteka%==9 set apteka=09
if %szkola%==0 set szkola=00
if %szkola%==1 set szkola=01
if %szkola%==2 set szkola=02
if %szkola%==3 set szkola=03
if %szkola%==4 set szkola=04
if %szkola%==5 set szkola=05
if %szkola%==6 set szkola=06
if %szkola%==7 set szkola=07
if %szkola%==8 set szkola=08
if %szkola%==9 set szkola=09
if %szpital%==0 set szpital=00
if %szpital%==1 set szpital=01
if %szpital%==2 set szpital=02
if %szpital%==3 set szpital=03
if %szpital%==4 set szpital=04
if %szpital%==5 set szpital=05
if %szpital%==6 set szpital=06
if %szpital%==7 set szpital=07
if %szpital%==8 set szpital=08
if %szpital%==9 set szpital=09
echo %kasa%>CityBuilder/KASA.TXT
echo %imie%>CityBuilder/IMIE.TXT
echo %nazwisko%>CityBuilder/NAZWISKO.TXT
echo %miasto%>CityBuilder/MIASTO.TXT
echo %mieszkancy%>CityBuilder/MIESZKANCY.TXT
echo %dom%>CityBuilder/DOM.TXT
echo %wiezowiec%>CityBuilder/WIEZOWIEC.TXT
echo %sklep%>CityBuilder/SKLEP.TXT
echo %blok%>CityBuilder/BLOK.TXT
echo %apteka%>CityBuilder/APTEKA.TXT
echo %szkola%>CityBuilder/SZKOLA.TXT
echo %szpital%>CityBuilder/SZPITAL.TXT
cls
echo Stan gry zostal zapisany.
pause
goto load

:koniec
cls
echo Przegrywasz! Stan konta wynosi 0$.
pause
del CityBuilder
exit