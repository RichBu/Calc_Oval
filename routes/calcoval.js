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

		var rollDiam = req.body.rollDiam;
		var cavityDiam = req.body.cavityDiam;
		var cavityDepth =  req.body.cavityDepth;

		console.log(req.body);
		console.log("roll diam = " + rollDiam);

	});		

module.exports = router;
