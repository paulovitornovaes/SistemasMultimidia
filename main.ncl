<?xml-model href="http://www.ncl.org.br/NCL4.0/profiles/NCL40.xsd"?>
<ncl id = "main" xmlns="http://www.ncl.org.br/NCL4.0/NCL4Profile">

    <head>
        <connectorBase id="connBaseId">
            <importBase alias="conn" documentURI="./imports/defaultConnBase.ncl" />
        </connectorBase>
        <regionBase>
            <region id="backgroundReg"  width="100%" height="100%" zIndex="1">
                <region id="carnesRegion" width="140px" height="70px" left="10%" top="50%"
                    zIndex="2" />
                <region id="vegetaisRegion" width="140px" height="70px" left="40%" top="50%"
                    zIndex="2" />
                <region id="limpezaRegion" width="140px" height="70px" left="70%" top="50%"
                    zIndex="2" />
            </region>
            <region id="carrinhoRegion" left="0%" top="8%" width="120px" height="50px" zIndex="5" />
            <region id="voltaRegion" left="80%" top="10%" width="70px" height="35px" zIndex="2" />
            <region id="carneBackgroundReg" width="100%" height="100%" zIndex="1">
                <region id="picanhaRegion" left="15%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="linguicaRegion" left="35%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="frangoRegion" left="55%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="suinoRegion" left="75%" top="50%" width="15%" height="15%" zIndex="2" />
            </region>
            <region id="vegetalBackgroundReg" width="100%" height="100%" zIndex="1">
                <region id="alfaceRegion" left="15%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="cebolaRegion" left="35%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="brocolisRegion" left="55%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="cenouraRegion" left="75%" top="50%" width="15%" height="15%" zIndex="2" />
            </region>
            <region id="limpezaBackgroundReg" width="100%" height="100%" zIndex="1">
                <region id="cloroRegion" left="15%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="detergenteRegion" left="35%" top="50%" width="15%" height="15%"
                    zIndex="2" />
                <region id="esponjaRegion" left="55%" top="50%" width="15%" height="15%" zIndex="2" />
                <region id="alcoolRegion" left="75%" top="50%" width="15%" height="15%" zIndex="2" />
            </region>
            <region id="changesReg" left="8%" top="11%" width="120px" height="30px" zIndex="4"/>
        </regionBase>
        <descriptorBase>
            <descriptor id="backgroundDesc" region="backgroundReg" />
            <descriptor id="carneBackgroundDesc" region="carneBackgroundReg" />
            <descriptor id="vegetalBackgroundDesc" region="vegetalBackgroundReg" />
            <descriptor id="limpezaBackgroundDesc" region="limpezaBackgroundReg" />
            <descriptor id="carnesDescriptor" region="carnesRegion" focusIndex="1" moveRight="2"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="vegetaisDescriptor" region="vegetaisRegion" focusIndex="2" moveRight="3"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="limpezaDescriptor" region="limpezaRegion" focusIndex="3" moveRight="3"
                moveLeft="2" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="voltaDescriptor" region="voltaRegion" focusIndex="10" moveUp="10"
                moveDown="1" moveLeft="9" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="carrinhoDescriptor" region="carrinhoRegion" focusIndex="9" moveUp="9"
                moveDown="1" moveRight="10" focusBorderColor="yellow" focusBorderWidth="5" />
            <!-- Descritores do submenu CARNE -->
            <descriptor id="picanhaDescriptor" region="picanhaRegion" focusIndex="1" moveRight="2"
                moveLeft="90" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="linguicaDescriptor" region="linguicaRegion" focusIndex="2" moveRight="3"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="frangoDescriptor" region="frangoRegion" focusIndex="3" moveRight="4"
                moveLeft="2" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="suinoDescriptor" region="suinoRegion" focusIndex="4" moveRight="4"
                moveLeft="3" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <!-- Descritores do submenu VEGETAIS -->
            <descriptor id="alfaceDescriptor" region="alfaceRegion" focusIndex="1" moveRight="2"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="cebolaDescriptor" region="cebolaRegion" focusIndex="2" moveRight="3"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="brocolisDescriptor" region="brocolisRegion" focusIndex="3" moveRight="4"
                moveLeft="2" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="cenouraDescriptor" region="cenouraRegion" focusIndex="4" moveRight="4"
                moveLeft="3" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <!-- Descritores do submenu LIMPEZA -->
            <descriptor id="cloroDescriptor" region="cloroRegion" focusIndex="1" moveRight="2"
                moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="detergenteDescriptor" region="detergenteRegion" focusIndex="2"
                moveRight="3" moveLeft="1" moveUp="9" moveDown="1" focusBorderColor="yellow"
                focusBorderWidth="5" />
            <descriptor id="esponjaDescriptor" region="esponjaRegion" focusIndex="3" moveRight="4"
                moveLeft="2" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="alcoolDescriptor" region="alcoolRegion" focusIndex="4" moveRight="4"
                moveLeft="3" moveUp="9" moveDown="1" focusBorderColor="yellow" focusBorderWidth="5" />
            <descriptor id="changesDesc" region="changesReg"/>
        </descriptorBase>
    </head>
    <body>
        <port id="pNCLua" component="changes"/>
        <media id="changes" src="./scripts/contador.lua" descriptor="changesDesc">
            <area id="print" label="fim"/>
            <property name="add"/>
        </media>
        <media id="contador" src="./scripts/contador.lua"/>
        <port id="entry" component="backgroundId" />
        <media id="backgroundId" src="./media/background.mp4" descriptor="backgroundDesc" />
        <media id="carneBackgroundId" src="./media/carnes.mp4" descriptor="carneBackgroundDesc" />
        <media id="vegetalBackgroundId" src="./media/vegetais.mp4"
            descriptor="vegetalBackgroundDesc" />
        <media id="limpezaBackgroundId" src="./media/limpeza.mp4" descriptor="limpezaBackgroundDesc" />
        <media id="carrinhoId" src="./media/carrinho.png" descriptor="carrinhoDescriptor" />
        <media id="voltarId" src="./media/voltar.png" descriptor="voltaDescriptor" />
        <media id="carneId" src="./media/carnes.png" descriptor="carnesDescriptor" />
        <media id="vegetalId" src="./media/vegetais.png" descriptor="vegetaisDescriptor" />
        <media id="limpezaId" src="./media/limpeza.png" descriptor="limpezaDescriptor" />
        <!--
		PRODUTOS
		DA CATEGORIA DA CARNE
		-->
        <media id="picanhaId" src="./media/carnes/picanha.jpg" descriptor="picanhaDescriptor" />
        <media id="linguicaId" src="./media/carnes/linguica.jpg" descriptor="linguicaDescriptor" />
        <media id="frangoId" src="./media/carnes/frango.jpg" descriptor="frangoDescriptor" />
        <media id="suinoId" src="./media/carnes/suino.jpg" descriptor="suinoDescriptor" />
        <!--
		PRODUTOS
		DA CATEGORIA DE VEGETAIS
		-->
        <media id="alfaceId" src="./media/vegetais/alface.jpg" descriptor="alfaceDescriptor" />
        <media id="cebolaId" src="./media/vegetais/cebola.jpg" descriptor="cebolaDescriptor" />
        <media id="brocolisId" src="./media/vegetais/brocolis.jpg" descriptor="brocolisDescriptor" />
        <media id="cenouraId" src="./media/vegetais/cenoura.jpg" descriptor="cenouraDescriptor" />
        <!--
		PRODUTOS
		DA CATEGORIA DE LIMPEZA
		-->
        <media id="cloroId" src="./media/limpeza/cloro.jpg" descriptor="cloroDescriptor" />
        <media id="detergenteId" src="./media/limpeza/detergente.jpg"
            descriptor="detergenteDescriptor" />
        <media id="esponjaId" src="./media/limpeza/esponja.jpg" descriptor="esponjaDescriptor" />
        <media id="alcoolId" src="./media/limpeza/alcool.jpg" descriptor="alcoolDescriptor" />       
        <!-- Links para exibição inicial -->
        <link xconnector="conn#onBeginStart">
            <bind role="onBegin" component="backgroundId" />
            <bind role="start" component="carneId" />
            <bind role="start" component="vegetalId" />
            <bind role="start" component="limpezaId" />
            <bind role="start" component="carrinhoId" />
        </link>
        <link xconnector="conn#onEndStart">
            <bind component="backgroundId" role="onEnd" />
            <bind component="backgroundId" role="start" />
        </link>
        <!-- AO SELECIONAR O MENU DE CARNES -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="carneId" role="onSelection" />
            <bind component="carneBackgroundId" role="start" />
            <bind component="picanhaId" role="start" />
            <bind component="linguicaId" role="start" />
            <bind component="frangoId" role="start" />
            <bind component="suinoId" role="start" />
            <bind component="voltarId" role="start" />
            <bind component="backgroundId" role="stop" />
            <bind component="carneId" role="stop" />
            <bind component="vegetalId" role="stop" />
            <bind component="limpezaId" role="stop" />
        </link>
        <!-- AO SELECIONAR O MENU DE VEGETAIS -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="vegetalId" role="onSelection" />
            <bind component="voltarId" role="start" />
            <bind component="vegetalBackgroundId" role="start" />
            <bind component="backgroundId" role="stop" />
            <bind component="carneId" role="stop" />
            <bind component="vegetalId" role="stop" />
            <bind component="limpezaId" role="stop" />
            <bind component="alfaceId" role="start" />
            <bind component="cebolaId" role="start" />
            <bind component="brocolisId" role="start" />
            <bind component="cenouraId" role="start" />
        </link>
        <!-- AO SELECIONAR O MENU DE LIMPEZA -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="limpezaId" role="onSelection" />
            <bind component="voltarId" role="start" />
            <bind component="limpezaBackgroundId" role="start" />
            <bind component="backgroundId" role="stop" />
            <bind component="carneId" role="stop" />
            <bind component="vegetalId" role="stop" />
            <bind component="limpezaId" role="stop" />
            <bind component="cloroId" role="start" />
            <bind component="detergenteId" role="start" />
            <bind component="esponjaId" role="start" />
            <bind component="alcoolId" role="start" />
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
            <!-- REMOVER COMPONENTES DO SUBMENU CARNE -->
            <bind component="picanhaId" role="stop" />
            <bind component="suinoId" role="stop" />
            <bind component="frangoId" role="stop" />
            <bind component="linguicaId" role="stop" />
            <!-- REMOVER COMPONENTES DO SUBMENU VEGETAIS -->
            <bind component="alfaceId" role="stop" />
            <bind component="cebolaId" role="stop" />
            <bind component="brocolisId" role="stop" />
            <bind component="cenouraId" role="stop" />
            <!-- REMOVER COMPONENTES DO SUBMENU LIMPEZA -->
            <bind component="cloroId" role="stop" />
            <bind component="detergenteId" role="stop" />
            <bind component="esponjaId" role="stop" />
            <bind component="alcoolId" role="stop" />
        </link>
        <!-- AO SELECIONAR O MENU DE FECHAR COMPRA -->
        <link xconnector="conn#onSelectionStartStop">
            <bind component="carrinhoId" role="onSelection" />
            <bind component="backgroundId" role="start" />
            <bind component="voltarId" role="start" />
            <bind component="carneId" role="stop" />
            <bind component="vegetalId" role="stop" />
            <bind component="limpezaId" role="stop" />
            <bind component="carneBackgroundId" role="stop" />
            <bind component="vegetalBackgroundId" role="stop" />
            <bind component="limpezaBackgroundId" role="stop" />
            <!-- REMOVER COMPONENTES DO SUBMENU CARNE -->
            <bind component="picanhaId" role="stop" />
            <bind component="suinoId" role="stop" />
            <bind component="frangoId" role="stop" />
            <bind component="linguicaId" role="stop" />
            <!-- REMOVER COMPONENTES DO SUBMENU VEGETAIS -->
            <bind component="alfaceId" role="stop" />
            <bind component="cebolaId" role="stop" />
            <bind component="brocolisId" role="stop" />
            <bind component="cenouraId" role="stop" />
            <!-- REMOVER COMPONENTES DO SUBMENU LIMPEZA -->
            <bind component="cloroId" role="stop" />
            <bind component="detergenteId" role="stop" />
            <bind component="esponjaId" role="stop" />
            <bind component="alcoolId" role="stop" />
        </link>

        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="picanhaId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="100"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="suinoId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="50"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="frangoId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="20"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="linguicaId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="15"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="alfaceId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="5"/>
            </bind>
        </link>
        <!-- AO COMPRAR UM ITEM-->
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="cebolaId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="7.50"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="brocolisId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="8.99"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="cenouraId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="7.99"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="cloroId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="10.99"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="detergenteId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="3.19"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="esponjaId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="1.99"/>
            </bind>
        </link>
        <link xconnector="conn#onSelectionSet_var">
            <bind role="onSelection" component="alcoolId"/>
            <bind role="set" component="changes" interface="add">
                <bindParam name="var" value="7.99"/>
            </bind>
        </link>
        




    </body>
</ncl>