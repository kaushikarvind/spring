#! /bin/sh

wget -nv https://agents.sealights.co/sealights-java/sealights-java-latest.zip
unzip -o sealights-java-latest.zip

echo '{
<<<<<<< HEAD
"token": "eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL1BST0QtQ1VTVE9NRVJTMi5hdXRoLnNlYWxpZ2h0cy5pby8iLCJqd3RpZCI6IlBST0QtQ1VTVE9NRVJTMixpLTA1ZDllZTY0NTc1NmU1NGVlLEFQSUdXLTFkMTcwYjc1LWM3MjAtNDEwMS05ODBlLTgwMDVmZjYwNjA0NiwxNjA2ODAzMjQ0NjQ4Iiwic3ViamVjdCI6IndpcHJvQGFnZW50IiwiYXVkaWVuY2UiOlsiYWdlbnRzIl0sIngtc2wtcm9sZSI6ImFnZW50IiwieC1zbC1zZXJ2ZXIiOiJodHRwczovL3dpcHJvLnNlYWxpZ2h0cy5jby9hcGkiLCJzbF9pbXBlcl9zdWJqZWN0IjoiIiwiaWF0IjoxNjA2ODAzMjQ0fQ.VP_mkQ9m1RPVEvBLYTn0G9kVecDLKw7XmbCFG07aGEMzPQ-myEYWFxnHpv9Ao8rhxdv5EheJVvUfiFx1kYYJAh57HFxAKZMaiywbZPxA1m5GGUV7JYulc7f7ztUftu8G0Zjl-8cSnDeOaPGNAd3qwBnNnDpPowq7nnV57pGv208ghQIARV_yRwW8GDeW81PDPVfyNRQt97Ewi0Tdz7kHTY-EGQ-2mEVDf2cisOOZAZ3U-n_sLyRZrqwPcpeotnFj6OxSpug0qTr3Hj23NuXqQS5iKlOVzeS_X9pX6xF_z2tHSzRs0vTS3YvoQTi0H9WSHnQLluYaapvMhKDr1P2VqShDVbtjSDEy9Mua8H-CI3AyBLSbQ8oqMenBtb8VLjklH0vBdzCCSDSXpBzGaToHrw7L3_ODIuSJSTdz4XHmPuO9Z7_VOpFNXqT-b9t8DVQj2rvR_Soo63UvS4oTNgODLaLrclRiFYgOR-syhu7r6CE5GTrvd1BuS1gD6gi8UqOVZ4SNXu5Z2hVVXlWun0tTTFsmTH4wvHI3LvZQWoSHFjLdHFnhFjl8b0KiYAp9Wxkz3tCd_8_AJHM0HydTrqAdmtFiwr2pPV3ULKz1RLnc-B_aJ_tfqHIIHmovQv3I_WbXJUgNiaHM3BUbCXgz3ROkM8Wb06tO3zfzqCFDUWvWMXk",
"createBuildSessionId": true,
"appName": "$(Build.DefinitionName)",
"branchName": "$(Build.SourceBranchName)",
"buildName": "$(Build.BuildNumber)",
"packagesIncluded": "*org.sp*.*",
"packagesExcluded": "",
"filesIncluded": "*.class",
"filesExcluded": "*test-classes*",
"recursive": true,
"includeResources": true,
"labId": null,
"executionType": "full",
"logEnabled": true,
"logDestination": "console",
"logLevel": "info",
"logFolder": "/tmp",
"sealightsJvmParams": {},
"enabled": true,
"filesStorage": "/tmp"
}' > sealights.json

java -jar sl-build-scanner.jar -restorePom -workspacepath .
java -jar sl-build-scanner.jar -pom -configfile sealights.json -workspacepath .
