'use strict'

{assert} = require 'chai'

module = 'types'

suite 'no setup:'
  test 'require does not throw', ->
    assert.doesNotThrow ->
      require 'types'

  test 'require returns object', ->
    assert.isObject require('types')

suite 'require:', ->
  types = null

  setup ->
    types = require 'types'

  teardown ->
    types = null

  test 'isUnemptyString function is defined', ->
    assert.isFunction types.isUnemptyString

  test 'isUnemptyString with string foo returns true', ->
    assert.isTrue types.isUnemptyString('foo')

  test 'isUnemptyString with null returns false', ->
    assert.isFalse types.isUnemptyString(null)

  test 'isUnemptyString with empty string returns false', ->
    assert.isFalse types.isUnemptyString('')

  test 'isUnemptyString with object returns false', ->
    assert.isFalse types.isUnemptyString({})

  test 'isUnemptyString with string bar returns true', ->
    assert.isTrue types.isUnemptyString('bar')

  test 'isString function is defined', ->
    assert.isFunction types.isString

  test 'isString with string foo returns true', ->
    assert.isTrue types.isString('foo')

  test 'isString with null returns false', ->
    assert.isFalse types.isString(null)

  test 'isString with empty string returns true', ->
    assert.isTrue types.isString('')

  test 'isString with object returns false', ->
    assert.isFalse types.isString({})

  test 'isArray function is defined', ->
    assert.isFunction types.isArray

  test 'isArray with array returns true', ->
    assert.isTrue types.isArray([])

  test 'isArray with null returns false', ->
    assert.isFalse types.isArray(null)

  test 'isArray with string returns false', ->
    assert.isFalse types.isArray('[]')

  test 'isArray with object returns false', ->
    assert.isFalse types.isArray({})

  test 'isObject function is defined', ->
    assert.isFunction types.isObject

  test 'isObject with object returns true', ->
    assert.isTrue types.isObject({})

  test 'isObject with null returns false', ->
    assert.isFalse types.isObject(null)

  test 'isObject with string returns false', ->
    assert.isFalse types.isObject('{}')

  test 'isObject with array returns false', ->
    assert.isFalse types.isObject([])

  test 'isFunction function is defined', ->
    assert.isFunction types.isFunction

  test 'isFunction with function returns true', ->
    assert.isTrue types.isFunction(->)

  test 'isFunction with null returns false', ->
    assert.isFalse types.isFunction(null)

  test 'isFunction with string returns false', ->
    assert.isFalse types.isFunction('->')

  test 'isFunction with object returns false', ->
    assert.isFalse types.isFunction({})

  test 'isFunction with array returns false', ->
    assert.isFalse types.isFunction([])

  test 'isInstance function is defined', ->
    assert.isFunction types.isInstance

  test 'isInstance with new Error and Error returns true', ->
    assert.isTrue types.isInstance(new Error(), Error)

  test 'isInstance with object and Error returns false', ->
    assert.isFalse types.isInstance({}, Error)

  test 'isInstance with null and null returns false', ->
    assert.isFalse types.isInstance(null, null)

  test 'isInstance with object and Object returns true', ->
    assert.isTrue types.isInstance({}, Object)

  test 'isInstance with null and Object returns false', ->
    assert.isFalse types.isInstance(null, Object)

  test 'isInstance with array and Array returns true', ->
    assert.isTrue types.isInstance([], Array)

  test 'isInstance with Object and object returns false', ->
    assert.isFalse types.isInstance(Object, {})

  test 'verifyUnemptyString function is defined', ->
    assert.isFunction types.verifyUnemptyString

  test 'verifyUnemptyString with string baz does not throw', ->
    assert.doesNotThrow ->
      types.verifyUnemptyString 'baz'

  test 'verifyUnemptyString with null throws', ->
    assert.throws ->
      types.verifyUnemptyString null

  test 'verifyUnemptyString with empty string throws', ->
    assert.throws ->
      types.verifyUnemptyString ''

  test 'verifyUnemptyString with object throws', ->
    assert.throws ->
      types.verifyUnemptyString {}

  test 'verifyUnemptyString with string qux does not throw', ->
    assert.doesNotThrow ->
      types.verifyUnemptyString 'qux'

  test 'verifyString function is defined', ->
    assert.isFunction types.verifyString

  test 'verifyString with string baz does not throw', ->
    assert.doesNotThrow ->
      types.verifyString 'baz'

  test 'verifyString with null throws', ->
    assert.throws ->
      types.verifyString null

  test 'verifyString with empty string does not throw', ->
    assert.doesNotThrow ->
      types.verifyString ''

  test 'verifyString with object throws', ->
    assert.throws ->
      types.verifyString {}

  test 'verifyArray function is defined', ->
    assert.isFunction types.verifyArray

  test 'verifyArray with array does not throw', ->
    assert.doesNotThrow ->
      types.verifyArray []

  test 'verifyArray with null throws', ->
    assert.throws ->
      types.verifyArray null

  test 'verifyArray with string throws', ->
    assert.throws ->
      types.verifyArray '[]'

  test 'verifyArray with object throws', ->
    assert.throws ->
      types.verifyArray {}

  test 'verifyObject function is defined', ->
    assert.isFunction types.verifyObject

  test 'verifyObject with object does not throw', ->
    assert.doesNotThrow ->
      types.verifyObject {}

  test 'verifyObject with null throws', ->
    assert.throws ->
      types.verifyObject null

  test 'verifyObject with string throws', ->
    assert.throws ->
      types.verifyObject '[]'

  test 'verifyObject with array throws', ->
    assert.throws ->
      types.verifyObject []

  test 'verifyFunction function is defined', ->
    assert.isFunction types.verifyFunction

  test 'verifyFunction with function does not throw', ->
    assert.doesNotThrow ->
      types.verifyFunction ->

  test 'verifyFunction with null throws', ->
    assert.throws ->
      types.verifyFunction null

  test 'verifyFunction with string throws', ->
    assert.throws ->
      types.verifyFunction '[]'

  test 'verifyFunction with object throws', ->
    assert.throws ->
      types.verifyFunction {}

  test 'verifyFunction with array throws', ->
    assert.throws ->
      types.verifyFunction []

  test 'verifyInstance with new Error and Error does not throw', ->
    assert.doesNotThrow ->
      types.verifyInstance new Error(), Error

  test 'verifyInstance with object and Error throws', ->
    assert.throws ->
      types.verifyInstance {}, Error

  test 'verifyInstance with null and null throws', ->
    assert.throws ->
      types.verifyInstance null, null

  test 'verifyInstance with object and Object does not throw', ->
    assert.doesNotThrow ->
      types.verifyInstance {}, Object

  test 'verifyInstance with null and Object throws', ->
    assert.throws ->
      types.verifyInstance null, Object

  test 'verifyInstance with array and Array does not throw', ->
    assert.doesNotThrow ->
      types.verifyInstance [], Array

  test 'verifyInstance with Object and object throws', ->
    assert.throws ->
      types.verifyInstance Object, {}

