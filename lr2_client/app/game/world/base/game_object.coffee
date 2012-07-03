module.exports = class GameObject
  width: 0
  height: 0
  decoration: false
  
  constructor: (@world, config) ->
  
  getLeft:   -> @getX()
  getRight:  -> @getX() + @width
  getTop:    -> @getY()
  getBottom: -> @getY() + @height
  getWidth:  -> @width
  getHeight: -> @height
  
  setWidth: (width) -> @width = width
  setHeight: (height) -> @height = height
    
  getBB: ->
    {
      x: @getLeft()
      y: @getTop()
      width: @width
      height: @height
    }

  drawLayer: ->
    @getLayer().draw()
    
  crashed: (who) ->