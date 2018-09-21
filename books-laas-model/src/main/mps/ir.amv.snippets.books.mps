<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b84a3c96-47bd-49f1-abc8-1c9eaefe42bf(ir.amv.snippets.books)">
  <persistence version="9" />
  <languages>
    <devkit ref="c2dbc78b-c532-4953-9c74-444a870e0f08(ir.amv.enterprise.laas.langs.sdk)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="43fcf607-3c14-4adf-8942-7497f6eb68dc" name="ir.amv.enterprise.laas.langs.jpa">
      <concept id="7276840454486701884" name="ir.amv.enterprise.laas.langs.jpa.structure.JpaModelLayerExtension" flags="ng" index="2G8V3E" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="89340bfb-333d-475d-828c-2c0f0174e018" name="ir.amv.enterprise.laas.langs.model">
      <concept id="1667077761026060477" name="ir.amv.enterprise.laas.langs.model.structure.Relationship" flags="ng" index="9MXrp">
        <reference id="1667077761026293384" name="model" index="9N_zG" />
      </concept>
      <concept id="1667077761026060473" name="ir.amv.enterprise.laas.langs.model.structure.NormalProperty" flags="ng" index="9MXrt">
        <child id="1667077761026060474" name="type" index="9MXru" />
      </concept>
      <concept id="7276840454486956691" name="ir.amv.enterprise.laas.langs.model.structure.IModelExtension" flags="ng" index="2G7TP5" />
      <concept id="7276840454486309095" name="ir.amv.enterprise.laas.langs.model.structure.MicroService" flags="ng" index="2G9rWL">
        <child id="7276840454486626771" name="extensions" index="2G8Do5" />
      </concept>
      <concept id="5406111308297552514" name="ir.amv.enterprise.laas.langs.model.structure.BaseLayersExtension" flags="ng" index="3oixWl" />
      <concept id="5942382170648243427" name="ir.amv.enterprise.laas.langs.model.structure.Model" flags="ng" index="3NrvBU">
        <reference id="7276840454486721107" name="idType" index="2G8Km5" />
        <reference id="7276840454486318176" name="microService" index="2G9tIQ" />
        <child id="1667077761025888687" name="properties" index="9L7vb" />
      </concept>
    </language>
    <language id="17aa157c-8162-4c3e-b5b7-cbe578840329" name="ir.amv.enterprise.laas.langs.spring">
      <concept id="5406111308302903432" name="ir.amv.enterprise.laas.langs.spring.structure.SpringLayersImpl" flags="ng" index="3oAVkv" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2G9rWL" id="6q0O3ok2Scs">
    <property role="TrG5h" value="DahanetService" />
    <node concept="3oixWl" id="6q0O3ok2VE8" role="2G8Do5" />
    <node concept="2G7TP5" id="6q0O3ok2VEb" role="2G8Do5" />
    <node concept="2G8V3E" id="6q0O3ok2VEe" role="2G8Do5" />
    <node concept="3oAVkv" id="6q0O3ok2VEh" role="2G8Do5" />
  </node>
  <node concept="3NrvBU" id="6q0O3ok2Sdi">
    <property role="TrG5h" value="MyModel" />
    <ref role="2G9tIQ" node="6q0O3ok2Scs" resolve="DahanetService" />
    <ref role="2G8Km5" to="wyt6:~Long" resolve="Long" />
    <node concept="9MXrt" id="6q0O3ok2VEk" role="9L7vb">
      <property role="TrG5h" value="firstName" />
      <node concept="3uibUv" id="6q0O3ok2VEo" role="9MXru">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="9MXrp" id="6q0O3ok2VEr" role="9L7vb">
      <property role="TrG5h" value="rel" />
      <ref role="9N_zG" node="6q0O3ok2Sdi" resolve="MyModel" />
    </node>
  </node>
</model>

