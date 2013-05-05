#!/bin/sh
. spelunking.sh

HOST='http://www.webservicex.net'
SOAP_XML='
   <soap:Envelope 
      xmlns:soap="http://www.w3.org/2003/05/soap-envelope" 
      xmlns:web="http://www.webserviceX.NET">
      <soap:Header/>
      <soap:Body>
         <web:GetInfoByZIP>
            <web:USZip>61312</web:USZip>
         </web:GetInfoByZIP>
      </soap:Body>
   </soap:Envelope>
   '

ACTUAL=$(curl -k -s \
   -X POST -d "$SOAP_XML" \
   --header 'Content-Type: application/soap+xml;charset=UTF-8;action="http://www.webserviceX.NET/GetInfoByZIP"[\r][\n]' \
   "$HOST/uszip.asmx")
#echo $ACTUAL

responseContains 'Arlington' "$ACTUAL"
