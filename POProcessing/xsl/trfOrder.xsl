<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../Fulfillment.wsdl"/>
      <rootElement name="FulFillmentRequest" namespace="http://www.example.org/ns/fulfillment"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../insertOrder.wsdl"/>
      <rootElement name="OrdersCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertOrder"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [THU DEC 14 07:19:23 PST 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertOrder"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:client="http://xmlns.oracle.com/POApp/POProcessing/Fulfillment"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://www.example.org/ns/intorder"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/POApp/POProcessing/insertOrder"
                xmlns:ns1="http://www.example.org/ns/fulfillment"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl wsdl plnk client ns0 xsd ns1 top plt tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <top:OrdersCollection>
      <top:Orders>
        <top:ordId>
          <xsl:value-of select="/ns1:FulFillmentRequest/ns0:orderId"/>
        </top:ordId>
        <top:custId>
          <xsl:value-of select="/ns1:FulFillmentRequest/ns0:customerId"/>
        </top:custId>
        <top:totalPrice>
          <xsl:value-of select="/ns1:FulFillmentRequest/ns0:orderTotal"/>
        </top:totalPrice>
        <top:dateOrdered>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </top:dateOrdered>
        <top:dateShipped>
          <xsl:text disable-output-escaping="no"></xsl:text>
        </top:dateShipped>
        <top:itemsCollection>
          <xsl:for-each select="/ns1:FulFillmentRequest/ns0:items/ns0:item">
            <top:Items>
              <top:itemId>
                <xsl:value-of select="position()"/>
              </top:itemId>
              <top:prodId>
                <xsl:value-of select="ns0:prodId"/>
              </top:prodId>
              <top:price>
                <xsl:value-of select="ns0:price"/>
              </top:price>
              <top:quantity>
                <xsl:value-of select="ns0:qty"/>
              </top:quantity>
            </top:Items>
          </xsl:for-each>
        </top:itemsCollection>
      </top:Orders>
    </top:OrdersCollection>
  </xsl:template>
</xsl:stylesheet>
