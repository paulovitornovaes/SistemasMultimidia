local WIDTH, HEIGHT = canvas:attrSize()
local counter = 0

assert(
   event.register(
      function(e)
         if e.name == 'width' then
            WIDTH = tonumber(e.value)
         elseif e.name == 'height' then
            HEIGHT = tonumber(e.value)
         end
      end,
      {class = 'ncl', type = 'attribution', action = 'start'}
   )
)

local TEXT_COLOR = 'white'
local BACKGROUND_COLOR = 'black'

canvas:attrFont('monospace', 12)

local textX = (WIDTH / 2) + 50
local textY =  HEIGHT / 2

local prevText = ''

local function drawMessage()
    print("Largura da mídia:", WIDTH)
    print("Altura da mídia:", HEIGHT)

    local prevW, prevH = canvas:measureText(prevText)
    canvas:attrColor(BACKGROUND_COLOR) 
    canvas:drawText(textX - prevW / 2, textY, prevText) 

    counter = counter + 1
    local text = counter .. 'R$'
    local w, h = canvas:measureText(text)

    canvas:attrColor(TEXT_COLOR) 
    canvas:drawText(textX - w / 2, textY, text) 
    canvas:flush()

    prevText = text
end

assert(
   event.register(
      function(e)
         if e.class == 'ncl' and e.type == 'attribution' and e.name == 'add' then
            drawMessage()
         end
      end
   )
)
