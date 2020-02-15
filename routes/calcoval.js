let fs      = require('fs')
let path    = require('path');
let express = require('express');

let router  = express.Router();

var connection = require('../connection');

let fileLoc = './public/videos/';

const moment = require("moment");
const momentDurationFormatSetup = require("moment-duration-format");
const numeral = require("numeral");
const math = require('mathjs');


//put in a separate file
class userLogRecStoreType {
	constructor( _timeStr, _clientIP, _loginName, _password, _fullName, _action_done ) {
	  this.timeStr = _timeStr;
	  this.clientIP = _clientIP;
	  this.loginName = _loginName;
	  this.password = _password;
	  this.fullName = _fullName;
	  this.action_done = _action_done
	}
  };


router.get('/', function(req, res, next) {
	//this is the root route for /calcoval 
	//it is now thru a post call so display nothing if the user
	//bookmarks this location
	});
	

router.post('/do-calc-oval', function(req, res, next) {
		var outputUrl = "/";
		var _rollDiam = req.body.rollDiam;
		var _cavityDiam = req.body.cavityDiam;
		var _cavityDepth =  req.body.cavityDepth;

		var numDec = 4;
		var rollDiamOut = math.format((_rollDiam*1.0),  {notation: 'fixed', precision: numDec});
		var cavityDiamOut = math.format((_cavityDiam*1.0),  {notation: 'fixed', precision: numDec});
		var cavityDepthOut = math.format((_cavityDepth*1.0),  {notation: 'fixed', precision: numDec});

		var diamDiff01 = _rollDiam - _cavityDepth;     //this is the 1/2 deep point
		var diamDiff02 = _rollDiam - (_cavityDepth*2.0); //this is at max depth of cavity 

		var ratio01 = _rollDiam / diamDiff01;  //at 1/2 point
		var ratioMinOut = math.format(ratio01,  {notation: 'fixed', precision: numDec});
		var ratioMinPer = (ratioMinOut - 1.0) * 100.0;
		var ratioMinPerOut = math.format(ratioMinPer,  {notation: 'fixed', precision: 2});

		var ratio02 = _rollDiam / diamDiff02;  //at max depth 
		var ratioMaxOut = math.format(ratio02,  {notation: 'fixed', precision: numDec});
		var ratioMaxPer = (ratioMaxOut - 1.0) * 100.0 ;
		var ratioMaxPerOut = math.format(ratioMaxPer,  {notation: 'fixed', precision: 2});

		var Ydim01calc = ratio01 * _cavityDiam;
		var Ydim01out = math.format(Ydim01calc,  {notation: 'fixed', precision: numDec});
		var Ydim02calc = ratio02 * _cavityDiam;
		var Ydim02out = math.format(Ydim02calc,  {notation: 'fixed', precision: numDec});
		res.render('calc_results', 
			{
			rollDiam: rollDiamOut,
			cavityDiam: cavityDiamOut,
			cavityDepth: cavityDepthOut,
			Ydim01: Ydim01out,
			Ydim02: Ydim02out,
			ratioMin: ratioMinOut,
			ratioMinPer: ratioMinPerOut,
			ratioMax: ratioMaxOut,
			ratioMaxPer: ratioMaxPerOut
			});
	});		

module.exports = router;
