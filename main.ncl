<?xml version="1.0" encoding="UTF-8"?>
<ncl xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <head>
        <connectorBase id="connBaseId">
            <importBase alias="conn" documentURI="./imports/defaultConnBase.ncl"/>
        </connectorBase>

        <regionBase>
            <region id="voltaRegion" left="85%" top="2%" width="20%" height="20%" zIndex="2"/>
            <region id="carnesRegion" left="10%" top="35%" width="30%" height="50%" zIndex="2"/>
            <region id="vegetaisRegion" left="40%" top="35%" width="30%" height="50%" zIndex="2"/>
            <region id="limpezaRegion" left="70%" top="35%" width="30%" height="50%" zIndex="2"/>
            <region id="backgroundReg" width="100%" height="100%" zIndex="1"/>
            <region id="carneBackgroundReg" width="100%" height="100%" zIndex="1"/>
            <region id="vegetalBackgroundReg" width="100%" height="100%" zIndex="1"/>
            <region id="limpezaBackgroundReg" width="100%" height="100%" zIndex="1"/>
        </regionBase>

        <descriptorBase>
            
            <descriptor id="backgroundDesc" region="backgroundReg" />
            <descriptor id="carneBackgroundDesc" region="carneBackgroundReg" />
            <descriptor id="vegetalBackgroundDesc" region="vegetalBackgroundReg" />
            <descriptor id="limpezaBackgroundDesc" region="limpezaBackgroundReg" />
            
            <descriptor id="carnesDescriptor" region="carnesRegion" 
                focusIndex="1" 
                moveRight="2" 
                moveLeft="1"
                moveUp="4" 
                moveDown="1"
                focusBorderColor="yellow" 
                focusBorderWidth="5"/>

            <descriptor id="vegetaisDescriptor" region="vegetaisRegion" 
                focusIndex="2"
                moveRight="3" 
                moveLeft="1" 
                moveUp="4" 
                moveDown="1"
                focusBorderColor="yellow" 
                focusBorderWidth="5"/>

            <descriptor id="limpezaDescriptor" region="limpezaRegion" 
                focusIndex="3"
                moveRight="3" 
                moveLeft="2" 
                moveUp="4" 
                moveDown="1"
                focusBorderColor="yellow" 
                focusBorderWidth="5"/>

            <descriptor id="voltaDescriptor" region="voltaRegion" 
                focusIndex="4" 
                moveUp="4" 
                moveDown="1"
                focusBorderColor="yellow" 
                focusBorderWidth="5"/>

        </descriptorBase>

    </head>

    <body>
        <port id="entry" component="backgroundId"/>

        <media id="backgroundId" src="./media/background.mp4" descriptor="backgroundDesc"/>
        <media id="carneBackgroundId" src="./media/carnes.mp4" descriptor="carneBackgroundDesc"/>
        <media id="vegetalBackgroundId" src="./media/vegetais.mp4" descriptor="vegetalBackgroundDesc"/>
        <media id="limpezaBackgroundId" src="./media/limpeza.mp4" descriptor="limpezaBackgroundDesc"/>
        <media id="voltarId" src="./media/voltar.png" descriptor="voltaDescriptor" />
        <media id="carneId" src="./media/carnes.png" descriptor="carnesDescriptor">
            <property name="escolha" value="1"/>
        </media>
        <media id="vegetalId" src="./media/vegetais.png" descriptor="vegetaisDescriptor"/>
        <media id="limpezaId" src="./media/limpeza.png" descriptor="limpezaDescriptor"/>
        
        <!-- Links para exibição inicial -->
        <link xconnector="conn#onBeginStart">
            <bind role="onBegin" component="backgroundId"/>
            <bind role="start" component="carneId"/>
            <bind role="start" component="vegetalId"/>
            <bind role="start" component="limpezaId"/>
        </link>
        <link xconnector="conn#onEndStart">
            <bind component="backgroundId" role="onEnd" />
            <bind component="backgroundId" role="start" />
        </link>

        <!-- AO SELECIONAR O MENU DE CARNES -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="carneId" role="onSelection" />
            <bind component="carneBackgroundId" role="start" />
            <bind component="voltarId" role="start" />
            <bind component="backgroundId" role="stop" />
        </link>
        <!-- AO SELECIONAR O MENU DE VEGETAIS -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="vegetalId" role="onSelection" />
            <bind component="voltarId" role="start" />
            <bind component="vegetalBackgroundId" role="start" />
            <bind component="backgroundId" role="stop" />
        </link>
        <!-- AO SELECIONAR O MENU DE LIMPEZA -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="limpezaId" role="onSelection" />
            <bind component="voltarId" role="start" />
            <bind component="limpezaBackgroundId" role="start" />
            <bind component="backgroundId" role="stop" />
        </link>

        <!-- AO SELECIONAR O MENU DE VOLTAR -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="voltarId" role="onSelection" />
            <bind component="carneId" role="stop" />
            <bind component="carneId" role="start" />
            <bind component="vegetalId" role="start" />
            <bind component="limpezaId" role="start" />
            <bind component="backgroundId" role="start" />
            <bind component="carneBackgroundId" role="stop" />
            <bind component="vegetalBackgroundId" role="stop" />
            <bind component="limpezaBackgroundId" role="stop" />
            <bind component="voltarId" role="stop" />
        </link>

    </body>
</ncl>
