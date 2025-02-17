
parse = require '..'

describe 'API error', ->
  
  it 'set code', ->
    err = new parse.CsvError 'MY_CODE', ['a', 'b', 'c']
    err.code.should.eql 'MY_CODE'
      
  it 'convert array message to string', ->
    err = new parse.CsvError 'MY_CODE', ['a', 'b', 'c']
    err.message.should.eql 'a b c'
      
  it 'set additional context information', ->
    err = new parse.CsvError 'MY_CODE', 'msg', a: 1, b: 2
    err.a.should.eql 1
    err.b.should.eql 2
