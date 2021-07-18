@echo off
title City Builder Beta 0.1
color 0A
:boot
cls
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
set /a mieszkancy=mieszkancy-0
set /p dom=<CityBuilder/DOM.TXT
set /p wiezowiec=<CityBuilder/WIEZOWIEC.TXT
set /p sklep=<CityBuilder/SKLEP.TXT
set /p blok=<CityBuilder/BLOK.TXT
set /p apteka=<CityBuilder/APTEKA.TXT
set /p szkola=<CityBuilder/SZKOLA.TXT
set /p szpital=<CityBuilder/SZPITAL.TXT
goto menu

:menu
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

