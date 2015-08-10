#!/bin/bash

rm -R /Applications/Microsoft\ Excel.app
rm -R /Applications/Microsoft\ Word.app
rm -R /Applications/Microsoft\ OneNote.app
rm -R /Applications/Microsoft\ Outlook.app
rm -R /Applications/Microsoft\ Powerpoint.app
for u in `ls /Users`; do
	cd /Users/$u/Library/Containers
	rm -R com.microsoft.errorreporting
	rm -R com.micosoft.netlib.shipassertprocess
	rm -R com.micosoft.Excel
	rm -R com.micosoft.Office365ServiceV2
	rm -R com.micosoft.Powerpoint
	rm -R com.micosoft.RMS-XPCService
	rm -R com.micosoft.Word
	rm -R com.micosoft.onenote.mac
	
	cd /Users/$u/Library/Group\ Containers
	rm -R UBF8T346G9.ms
	rm -R UBF8T346G9.Office
	rm -R UBF8T3469.OfficeOsfWebHost
done



for i in `pkgutil --pkgs=com.microsoft.package*`;
do
	pkgutil --forget $i
done










