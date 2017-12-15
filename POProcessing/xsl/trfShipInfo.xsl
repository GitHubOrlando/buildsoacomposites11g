<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://soabpm-vm:7001/soa-infra/services/default/customerService/customerService.wsdl"/>
      <rootElement name="CustomerResponse" namespace="http://www.example.org"/>
    </source>
    <source type="XSD">
      <schema location="../xsd/fulfillment.xsd"/>
      <rootElement name="FulFillmentRequest" namespace="http://www.example.org/ns/fulfillment"/>
      <param name="inVar" />
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../Fulfillment.wsdl"/>
      <rootElement name="ShippingRequest" namespace="http://www.example.org/ns/fulfillment"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [THU DEC 14 10:25:07 PST 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:inp1="http://www.example.org"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:tns="http://oracle.com/sca/soapservice/POApp/customerService/customerService"
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
                xmlns:ns1="http://www.example.org/ns/fulfillment"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl inp1 wsdl tns ns0 xsd ns1 plnk client xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:param name="inVar"/>
  <xsl:template match="/">
    <ns1:ShippingRequest>
      <ns1:orderId>
        <xsl:value-of select="$inVar/ns1:FulFillmentRequest/ns0:orderId"/>
      </ns1:orderId>
      <ns1:custName>
        <xsl:value-of select="concat(/inp1:CustomerResponse/inp1:customer/inp1:firstName,/inp1:CustomerResponse/inp1:customer/inp1:lastName)"/>
      </ns1:custName>
      <xsl:for-each select="/inp1:CustomerResponse/inp1:shippingAddress">
        <ns1:shippingAddress>
          <ns1:street>
            <xsl:value-of select="inp1:street"/>
          </ns1:street>
          <ns1:city>
            <xsl:value-of select="inp1:city"/>
          </ns1:city>
          <ns1:state>
            <xsl:value-of select="inp1:state"/>
          </ns1:state>
          <ns1:zip>
            <xsl:value-of select="inp1:zip"/>
          </ns1:zip>
          <ns1:country>
            <xsl:value-of select="inp1:country"/>
          </ns1:country>
        </ns1:shippingAddress>
      </xsl:for-each>
    </ns1:ShippingRequest>
  </xsl:template>
</xsl:stylesheet>
