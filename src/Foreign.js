'use strict'

var casePS = require('../../output/Case')

exports.javascriptFn = function (records) {
  for (var i = 0; i < records.length; i++) {
    console.log(casePS.lookup(records[i]))
  }
}
