#! /usr/bin/env bash

dotnet test

livingdoc test-assembly ./JobBDD/bin/Debug/net6.0/JobBDD.dll
