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


//
//	Stream the video
//


router.get('/', function(req, res, next) {
	//routine to render the video playback page
	console.log('calcoval page')

	/*
	res.render('play_video', {
		base_url: process.env.BASE_URL,
		//videoTitle: 'toystory.mp4',
		videoTitle: sqlTitle,
		videoFile: videoFileOut,
		videoTag: videoTagOut,
		isOnGoogleDrive: isOnGoogleDriveF,
		shortDescrip: sqlShort_descrip,
		longDescrip: sqlLong_descrip
	});
	*/
	//not logged in bump back out
	res.render('calc_oval');
	});
	

	router.post('/do-calc-oval', function(req, res, next) {
		console.log("at /do-calc-oval");
		var outputUrl = "/";
		var _rollDiam = req.body.rollDiam;
		var _cavityDiam = req.body.cavityDiam;
		var _cavityDepth =  req.body.cavityDepth;

		console.log(req.body);
		console.log("roll diam = " + _rollDiam);
		var diamDiff01 = _rollDiam - _cavityDepth;     //this is the 1/2 deep point
		var diamDiff02 = _rollDiam - 2.0*_cavityDepth; //this is at max depth of cavity 
		var ratio01 = diamDiff01 / _rollDiam;  //at 1/2 point
		var ratio02 = diamDiff02 / _rollDiam;  //at max depth 
		var Ydim01calc = ratio01*_cavityDiam;
		var Ydim02calc = ratio02*_cavityDiam;
		console.log("before the response");
		res.render('calc_results' 
		/*
		{
			rollDiam: _rollDiam,
			cavityDiam: _cavityDiam,
			cavityDepth: _cavityDepth,
			Ydim01: Ydim01calc,
			Ydim02: Ydim02calc
		}*/
		);
       //send the 
		/*
		res.json({
			//logged_in: req.session.logged_in,
			//user_name: req.session.username,
			url: outputUrl
			});
		*/	
		console.log("after the res.json");	
	});		

module.exports = router;
