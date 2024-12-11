local WIDTH, HEIGHT = canvas:attrSize()
local counter = 0
local isFirstEvent = true
local lastEventTime = 0

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

-- Configuração de cores
local TEXT_COLOR = 'white' -- Cor do texto
local CLEANUP_R, CLEANUP_G, CLEANUP_B = 0.537, 0.686, 0.490 -- Verde claro (#89AF7D)

canvas:attrFont('monospace', 12)

local textX = (WIDTH / 2)
local textY = HEIGHT / 2
local BOX_WIDTH = 200 -- Largura da área onde o texto será exibido
local BOX_HEIGHT = 50 -- Altura da área onde o texto será exibido

local prevText = ''

local function drawMessage(valueToAdd)
    -- Limpar a área do texto anterior com um retângulo verde
    canvas:attrColor('green')
    canvas:drawRect('fill', textX - BOX_WIDTH / 2, textY - BOX_HEIGHT / 2, textX + BOX_WIDTH / 2, textY + BOX_HEIGHT / 2)

    -- Incrementar ou inicializar o contador
    if isFirstEvent then
        counter = valueToAdd -- No primeiro evento, use o valor diretamente
        isFirstEvent = false
    else
        counter = counter + valueToAdd
    end

    -- Desenhar o texto atualizado
    local text = counter .. 'R$'
    local w, h = canvas:measureText(text)
    canvas:attrColor(TEXT_COLOR) -- Define a cor do texto
    canvas:drawText(textX - w / 2, textY - h / 2, text) -- Centraliza o texto na área
    canvas:flush()

    -- Atualizar o texto anterior
    prevText = text
end

-- Registrar evento e capturar o valor do atributo
assert(
   event.register(
      function(e)
         if e.class == 'ncl' and e.type == 'attribution' and e.name == 'add' then
            local currentEventTime = os.time()
            if currentEventTime ~= lastEventTime then
                lastEventTime = currentEventTime
                local valueToAdd = tonumber(e.value) or 0
                drawMessage(valueToAdd)
            end
         end
      end
   )
)
