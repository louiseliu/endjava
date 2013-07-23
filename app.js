
/**
 * Module dependencies.
 */

var express = require('express')
  , routes = require('./routes')
  , user = require('./routes/user')
  , http = require('http')
  , path = require('path');

var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', __dirname + '/views/');
app.set('view engine', 'jade');
app.engine('jsp',require('endskin').__express);

app.get('/test',function(req,res)
{
    //now use endskin to parse index.html!  the second parameter is the data object
    res.render('duobei/swift.jsp',{a:"ewriuweurewoiruewruoi",y:4,items:[1,2,3],numTest:5,userInfo:{"nickname":"kb","age":24},
    	pagination:{"countTotal":true,"firstPage":true,"hasNextPage":false,"hasPrePage":false,
    	"items":[{"bindMobile":false,"institution":false,"toggleNewConsole":false},
    	{"bindMobile":false,"institution":true,"toggleNewConsole":false}],
    	"itemsSize":1,"lastPage":true,"nextPage":1,"offset":0,"orderBy":"id",
    	"orderBySetted":true,"orderDir":"desc","pageNo":1,"pageSize":10,"prePage":1,
    	"slider":[],"sliderCount":5,"sort":[{"dir":"desc","property":"id"}],"totalCount":-1,"totalPages":0}});
    
});

app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/users', user.list);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
