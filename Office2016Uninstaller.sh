#!/bin/bash

rm -R /Applications/Microsoft\ Excel.app
rm -R /Applications/Microsoft\ Word.app
rm -R /Applications/Microsoft\ OneNote.app
rm -R /Applications/Microsoft\ Outloo.app
rm -R /Applications/Microsoft\ Powerpoint.app

rm -R com.microsoft.errorreporting
rm -R com.micosoft.netlib.shipassertprocess
rm -R com.micosoft.Excel
rm -R com.micosoft.Office365ServiceV2
rm -R com.micosoft.Powerpoint
rm -R com.micosoft.RMS-XPCService
rm -R com.micosoft.Word
rm -R com.micosoft.onenote.mac

rm -R UBF8T346G9.ms
rm -R UBF8T346G9.Office
rm -R UBF8T3469.OfficeOsfWebHost

for i in `pkgutil --pkgs=com.microsoft.office*`;
do
	pkgutil --forget $i
done










