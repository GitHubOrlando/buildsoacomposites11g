<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../enrichPO.wsdl"/>
      <rootElement name="order" namespace="http://www.example.org/ns/intorder"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../Fulfillment.wsdl"/>
      <rootElement name="FulFillmentRequest" namespace="http://www.example.org/ns/fulfillment"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [THU DEC 07 03:03:12 PST 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
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
                xmlns:inp1="http://www.example.org/ns/intorder"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:tns="http://xmlns.oracle.com/POApp/POProcessing/enrichPO"
                xmlns:ns1="http://www.example.org/ns/fulfillment"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl wsdl inp1 xsd tns plnk client ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <ns1:FulFillmentRequest>
      <inp1:customerId>
        <xsl:value-of select="/inp1:order/inp1:customerId"/>
      </inp1:customerId>
      <inp1:orderId>
        <xsl:value-of select="/inp1:order/inp1:orderId"/>
      </inp1:orderId>
      <inp1:payMethod>
        <xsl:value-of select="/inp1:order/inp1:payMethod"/>
      </inp1:payMethod>
      <inp1:shipMethod>
        <xsl:value-of select="/inp1:order/inp1:shipMethod"/>
      </inp1:shipMethod>
      <inp1:orderTotal>
        <xsl:value-of select="sum(/inp1:order/inp1:items/inp1:item/inp1:itemTotal)"/>
      </inp1:orderTotal>
      <inp1:status>
        <xsl:value-of select="/inp1:order/inp1:status"/>
      </inp1:status>
      <inp1:creditCard>
        <inp1:cardType>
          <xsl:value-of select="/inp1:order/inp1:creditCard/inp1:cardType"/>
        </inp1:cardType>
        <inp1:cardNumber>
          <xsl:value-of select="/inp1:order/inp1:creditCard/inp1:cardNumber"/>
        </inp1:cardNumber>
      </inp1:creditCard>
      <inp1:items>
        <inp1:inStock>
          <xsl:value-of select="/inp1:order/inp1:items/inp1:inStock"/>
        </inp1:inStock>
        <xsl:for-each select="/inp1:order/inp1:items/inp1:item">
          <inp1:item>
            <inp1:prodId>
              <xsl:value-of select="inp1:prodId"/>
            </inp1:prodId>
            <inp1:prodName>
              <xsl:value-of select="inp1:prodName"/>
            </inp1:prodName>
            <inp1:price>
              <xsl:value-of select="inp1:price"/>
            </inp1:price>
            <inp1:qty>
              <xsl:value-of select="inp1:qty"/>
            </inp1:qty>
            <inp1:itemTotal>
              <xsl:value-of select="inp1:itemTotal"/>
            </inp1:itemTotal>
          </inp1:item>
        </xsl:for-each>
      </inp1:items>
    </ns1:FulFillmentRequest>
  </xsl:template>
</xsl:stylesheet>
