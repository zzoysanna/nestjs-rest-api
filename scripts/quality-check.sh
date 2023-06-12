#!/bin/sh

echo 'Running quality check script...'

lintRes=$(npm run lint)
testsRes=$(npm run test)
auditRes=$(npm audit)

echo '------------------------------'
echo 'Linter results:'
echo $lintRes
echo '------------------------------'
echo 'Unit tests results:'
echo $testsRes
echo '------------------------------'
echo 'Npm audit results:'
echo $auditRes
