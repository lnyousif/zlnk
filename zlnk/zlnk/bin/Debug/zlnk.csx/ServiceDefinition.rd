<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="zlnk" generation="1" functional="0" release="0" Id="56fd506b-1f8c-4680-a7ed-f55c0a8f7f93" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="zlnkGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="zlnk_WebRole:HttpIn" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/zlnk/zlnkGroup/LB:zlnk_WebRole:HttpIn" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="zlnk_WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="zlnk_WebRole:AccountName" defaultValue="">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRole:AccountName" />
          </maps>
        </aCS>
        <aCS name="zlnk_WebRole:AccountSharedKey" defaultValue="">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRole:AccountSharedKey" />
          </maps>
        </aCS>
        <aCS name="zlnk_WebRole:TableStorageEndpoint" defaultValue="">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRole:TableStorageEndpoint" />
          </maps>
        </aCS>
        <aCS name="zlnk_WebRole:rndlength" defaultValue="">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRole:rndlength" />
          </maps>
        </aCS>
        <aCS name="zlnk_WebRole:serviceurl" defaultValue="">
          <maps>
            <mapMoniker name="/zlnk/zlnkGroup/Mapzlnk_WebRole:serviceurl" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:zlnk_WebRole:HttpIn">
          <toPorts>
            <inPortMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/HttpIn" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapzlnk_WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/zlnk/zlnkGroup/zlnk_WebRoleInstances" />
          </setting>
        </map>
        <map name="Mapzlnk_WebRole:AccountName" kind="Identity">
          <setting>
            <aCSMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/AccountName" />
          </setting>
        </map>
        <map name="Mapzlnk_WebRole:AccountSharedKey" kind="Identity">
          <setting>
            <aCSMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/AccountSharedKey" />
          </setting>
        </map>
        <map name="Mapzlnk_WebRole:TableStorageEndpoint" kind="Identity">
          <setting>
            <aCSMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/TableStorageEndpoint" />
          </setting>
        </map>
        <map name="Mapzlnk_WebRole:rndlength" kind="Identity">
          <setting>
            <aCSMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/rndlength" />
          </setting>
        </map>
        <map name="Mapzlnk_WebRole:serviceurl" kind="Identity">
          <setting>
            <aCSMoniker name="/zlnk/zlnkGroup/zlnk_WebRole/serviceurl" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="zlnk_WebRole" generation="1" functional="0" release="0" software="C:\My Code\zlnk\zlnk\zlnk\bin\Debug\zlnk.csx\roles\zlnk_WebRole" entryPoint="base\x64\WaWebHost.exe" parameters="" memIndex="1792" hostingEnvironment="frontendfulltrust" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="HttpIn" protocol="http" />
            </componentports>
            <settings>
              <aCS name="AccountName" defaultValue="" />
              <aCS name="AccountSharedKey" defaultValue="" />
              <aCS name="TableStorageEndpoint" defaultValue="" />
              <aCS name="rndlength" defaultValue="" />
              <aCS name="serviceurl" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;zlnk_WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;zlnk_WebRole&quot;&gt;&lt;e name=&quot;HttpIn&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/zlnk/zlnkGroup/zlnk_WebRoleInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="zlnk_WebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="cc1225c1-9dae-4c65-aefe-34a015bbfe9f" ref="Microsoft.RedDog.Contract\ServiceContract\zlnkContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="692dea3b-52cc-40ae-bf7c-4f4291970683" ref="Microsoft.RedDog.Contract\Interface\zlnk_WebRole:HttpIn@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/zlnk/zlnkGroup/zlnk_WebRole:HttpIn" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>