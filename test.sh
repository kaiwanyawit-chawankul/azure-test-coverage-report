    #! /usr/bin/env bash

dotnet test --no-build --verbosity normal --collect:"XPlat Code Coverage" /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:CoverletOutput=./TestResults/Coverage/coverage.xml

coverlet srcNet/Job.Tests/bin/Debug/net6.0/Job.Tests.dll --target "dotnet" --targetargs "test srcNet/Job.Tests --no-build";

reportgenerator -reports:'**/coverage.cobertura.xml' -targetdir:'CoverageReports' -reporttypes:'Cobertura';
  