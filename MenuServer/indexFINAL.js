var Xray = require('x-ray');
var x = Xray();
var fs = require('fs');

var INPUTmonth;
var INPUTday;
var INPUTyear;
var INPUTdininghall; //NT, CM, CS, PK, EO
var INPUTmeal; //BR, LU, DI

console.log(' ');
process.argv.forEach(function (val, index, array) {
  switch (index) {
    case 2:
      INPUTmonth = val;
      console.log(index + ': ' + val);
      break;
    case 3:
      INPUTday = val;
      console.log(index + ': ' + val);
      break;
    case 4:
      INPUTyear = val;
      console.log(index + ': ' + val);
      break;
    case 5:
      INPUTdininghall = val;
      console.log(index + ': ' + val);
      break;
    case 6:
      INPUTmeal = val;
      console.log(index + ': ' + val);
      break;
  }
});

var dininghall;
var dininghallnum;
switch (INPUTdininghall) {
    case 'NT':
      dininghall = 'College+Nine+%26+Ten';
      dininghallnum = 40;
      break;
    case 'CM':
      dininghall = 'Crown+Merrill';
      dininghallnum = 20;
      break;
    case 'CS':
      dininghall = 'Cowell+Stevenson';
      dininghallnum = 5;
      dininghallnum = '0' + dininghallnum;
      break;
    case 'PK':
      dininghall = 'Porter';
      dininghallnum = 25;
      break;
    case 'EO':
      dininghall = 'College+Eight';
      dininghallnum = 30;
      break;
  }

var meal;
switch (INPUTmeal) {
    case 'BR':
      meal = 'Breakfast';
      break;
    case 'LU':
      meal = 'Lunch';
      break;
    case 'DI':
      meal = 'Dinner';
      break;
  }

  // var outputfilename = "/home/Programming/node/MenuServer/output/jmenu"+ "_" + INPUTmonth + "_" + INPUTday + "_" + INPUTyear + "_" + INPUTdininghall + "_" + INPUTmeal + ".json";
var outputfilename = "/var/www/html/menuoutputdetailed/jmenu"+ "_" + INPUTmonth + "_" + INPUTday + "_" + INPUTyear + "_" + INPUTdininghall + "_" + INPUTmeal + ".json";

var url = 'http://nutrition.sa.ucsc.edu/pickMenu.asp?locationNum=' + dininghallnum + '&locationName=' + dininghall + '&dtdate=' + INPUTmonth + '%2F' + INPUTday + '%2F' + INPUTyear + '&mealName=' + meal + '&sName=UC+Santa+Cruz+Dining';
x(url, 
/*{
	MenuItem: x('.pickmenucoldispname', [
		{
  			name: 'a@html',
  			url: 'a@href',
  			ingredients: x('a@href' ,'.labelingredientsvalue'),
  			allergens: x('a@href', '.labelallergensvalue'),
  		}
  	])*/


/*'.pickmenucoldispname',
  [
      {
        name: 'a@html',
        url: 'a@href',
        ingredients: x('a@href' ,'.labelingredientsvalue'),
        allergens: x('a@href', '.labelallergensvalue'),
      }
  ]
)*/

'td table tr td table',
  [
      {
        name: 'a@html',
        url: 'a@href',
        ingredients: x('a@href' ,'.labelingredientsvalue'),
        allergens: x('a@href', '.labelallergensvalue'),
        tags: ['td img@src'],
      }
  ]
)


//})
(function(err, obj) {
	fs.writeFile(outputfilename, JSON.stringify(obj, null, '\t'));
});