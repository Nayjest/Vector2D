define [], ()->
  "use strict"
  ###
  @author Vitalii [Nayjest] Stepanenko <gmail@vitaliy.in>
  ###
  class Vector2D

    @cloneFrom: (object)->
      new Vector2D object.x, object.y

    constructor: (x, y)->
      @x = x or 0
      @y = y or 0

    add: (vector) ->
      @x += vector.x
      @y += vector.y
      @

    eq: (vector)->
      vactor.x == @x and vector.y == @y

    substract: (vector) ->
      @x -= vector.x
      @y -= vector.y
      @

    clone: ->
      new Vector2D @x, @y


    set: (vector)->
      @x = vector.x
      @y = vector.y
      @

    setValues: (@x, @y)-> @

    dist: (vector)->
      Math.sqrt (vector.x - @x) * (vector.x - @x) + (vector.y - @y) * (vector.y - @y)

    normalise: ->
      if !@isZero()
        m = @magnitude()
        @x /= m
        @y /= m
      @

    isZero: ->
      @x == 0 and @y == 0

    reverse: ->
      @x = -@x
      @y = -@y
      @

    magnitude: ->
      Math.sqrt @x * @x + @y * @y

    toArray: ->
      [@x, @y]

    angle: ->
      Math.atan2 @y, @x

    rotate: (angle)->
      cos = Math.cos angle
      sin = Math.sin angle
      @setValues @x * cos - @y * sin, @x * sin + @y * cos

    angleTo: (vector)->
      Math.atan2 vactor.y - @y, vector.x - @x

    rotateAround: (point, angle)->
      @substract(point).rotate(angle).add(point)

    multiplyScalar: (val)->
      @x *= val
      @y *= val
      @

    multiply: (vector)->
      @x *= vector.x
      @y *= vector.y
      @








