-- Obtém as dimensões da tela
local WIDTH, HEIGHT = canvas:attrSize()
local quantity = 0 -- Inicializa o contador
local isFirstEvent = true -- Controla o primeiro evento
local lastEventTime = 0 -- Controla eventos repetidos

-- Configuração de cores e área
local BOX_COLOR = "green" -- Cor do quadrado (verde)
local TEXT_COLOR = "white" -- Cor do texto (branco)
local BOX_WIDTH = 200 -- Largura do quadrado
local BOX_HEIGHT = 100 -- Altura do quadrado

-- Posição do quadrado (centralizado na tela)
local boxX = (WIDTH - BOX_WIDTH) / 2
local boxY = (HEIGHT - BOX_HEIGHT) / 2

-- Função para desenhar o quadrado verde e o contador
local function drawCounter(valueToAdd)
    -- Limpar a área do texto anterior com um retângulo verde
    canvas:attrColor(BOX_COLOR)
    canvas:drawRect("fill", boxX, boxY, boxX + BOX_WIDTH, boxY + BOX_HEIGHT)

    -- Atualizar a contagem de quantidade
    if isFirstEvent then
        quantity = valueToAdd -- No primeiro evento, usa o valor diretamente
        isFirstEvent = false
    else
        quantity = quantity + valueToAdd
    end

    -- Desenha o texto do contador (centralizado no quadrado)
    local text = "Qtd: " .. tostring(quantity) -- Texto do contador, convertido explicitamente para string
    canvas:attrColor(TEXT_COLOR)
    canvas:attrFont("monospace", 20)
    local textWidth, textHeight = canvas:measureText(text)

    -- Certifique-se de que as dimensões do texto foram calculadas corretamente
    if not textWidth or not textHeight then
        textWidth = 0
        textHeight = 0
    end

    -- Desenhar o texto
    canvas:drawText(
        boxX + (BOX_WIDTH - textWidth) / 2, -- Centraliza horizontalmente
        boxY + (BOX_HEIGHT - textHeight) / 2, -- Centraliza verticalmente
        text
    )

    -- Atualiza a tela
    canvas:flush()
end

-- Registrar evento para capturar "add" e evitar eventos duplicados
assert(
    event.register(
        function(e)
            if e.class == "ncl" and e.type == "attribution" and e.name == "add" then
                local currentEventTime = os.time()

                -- Processa o evento apenas se ele não for duplicado
                if currentEventTime ~= lastEventTime then
                    lastEventTime = currentEventTime
                    local valueToAdd = tonumber(e.value) or 1 -- Incrementa em 1 (ou no valor recebido)
                    drawCounter(valueToAdd) -- Redesenha o contador atualizado
                end
            end
        end
    )
)

-- Exibe o quadrado e o contador ao iniciar
drawCounter(0) -- Inicia com "Qtd: 0"
