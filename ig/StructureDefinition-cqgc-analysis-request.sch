<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/request-status-reason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/request-status-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.cqgc.ferlab.bio/StructureDefinition/resident-supervisor']) &lt;= 1">extension with URL = 'http://fhir.cqgc.ferlab.bio/StructureDefinition/resident-supervisor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/procedure-directed-by']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/procedure-directed-by': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 0">basedOn: maximum cardinality of 'basedOn' is 0</sch:assert>
      <sch:assert test="count(f:supportingInfo) &gt;= 1">supportingInfo: minimum cardinality of 'supportingInfo' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 0">specimen: maximum cardinality of 'specimen' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
