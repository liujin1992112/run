<GameFile>
  <PropertyGroup Name="ChooseLayer" Type="Layer" ID="a95599fc-6761-4e25-9042-c3e184053fb8" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="30" Speed="1.0000" ActivedAnimationName="tan_anim">
        <Timeline ActionTag="193005676" Property="Position">
          <PointFrame FrameIndex="0" X="114.0000" Y="44.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="5" X="114.0000" Y="54.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="10" X="114.0000" Y="44.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="15" X="114.0000" Y="54.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="20" X="114.0000" Y="44.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="25" X="114.0000" Y="54.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="30" X="114.0000" Y="44.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="193005676" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="5" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="10" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="25" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="193005676" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="5" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="10" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="25" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="tan_anim" StartIndex="0" EndIndex="60">
          <RenderColor A="255" R="240" G="128" B="128" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="12" ctype="GameLayerObjectData">
        <Size X="800.0000" Y="480.0000" />
        <Children>
          <AbstractNodeData Name="background" ActionTag="468497845" Tag="13" IconVisible="False" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ComboBoxIndex="1" ColorAngle="90.0000" LeftEage="264" RightEage="264" TopEage="158" BottomEage="158" Scale9OriginX="264" Scale9OriginY="158" Scale9Width="272" Scale9Height="164" ctype="PanelObjectData">
            <Size X="800.0000" Y="480.0000" />
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="1.0000" Y="1.0000" />
            <FileData Type="Normal" Path="sign/background.jpg" Plist="" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="main_node" ActionTag="882160174" Tag="42" IconVisible="True" RightMargin="800.0000" TopMargin="480.0000" ctype="SingleNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <Children>
              <AbstractNodeData Name="btn_board2" ActionTag="-251894988" Tag="11" IconVisible="False" LeftMargin="362.0000" RightMargin="-686.0000" TopMargin="-540.0000" BottomMargin="60.0000" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="294" Scale9Height="458" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="324.0000" Y="480.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="524.0000" Y="300.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/board2Lock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/board2.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/board2.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_board1" ActionTag="-571704885" Tag="10" IconVisible="False" LeftMargin="61.0000" RightMargin="-347.0000" TopMargin="-540.0000" BottomMargin="60.0000" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="256" Scale9Height="458" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="286.0000" Y="480.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="204.0000" Y="300.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/board1Lock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/board1.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/board1.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_daily_task" ActionTag="952880259" Tag="15" IconVisible="False" LeftMargin="660.0701" RightMargin="-860.0701" TopMargin="-438.8887" BottomMargin="363.8887" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="170" Scale9Height="53" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="200.0000" Y="75.0000" />
                <Children>
                  <AbstractNodeData Name="tan" ActionTag="193005676" Tag="17" IconVisible="False" LeftMargin="104.5000" RightMargin="76.5000" TopMargin="8.5000" BottomMargin="21.5000" ctype="SpriteObjectData">
                    <Size X="19.0000" Y="45.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="114.0000" Y="44.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5700" Y="0.5867" />
                    <PreSize X="0.0950" Y="0.6000" />
                    <FileData Type="Normal" Path="choose/tan.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="760.0701" Y="401.3887" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/taskMenuLock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/taskMenu.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/taskMenu.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_set" ActionTag="-1846181397" Tag="14" IconVisible="False" LeftMargin="660.0700" RightMargin="-860.0700" TopMargin="-341.5793" BottomMargin="266.5793" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="170" Scale9Height="53" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="200.0000" Y="75.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="760.0700" Y="304.0793" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/setMenuLock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/setMenu.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/setMenu.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_start" ActionTag="1643635948" Tag="12" IconVisible="False" LeftMargin="660.0700" RightMargin="-860.0700" TopMargin="-155.9512" BottomMargin="80.9512" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="170" Scale9Height="53" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="200.0000" Y="75.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="760.0700" Y="118.4512" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/startMenu2Lock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/startMenu2.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/startMenu2.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_return_menu" ActionTag="826692044" Tag="27" IconVisible="False" LeftMargin="660.0700" RightMargin="-860.0700" TopMargin="-248.7682" BottomMargin="173.7682" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="170" Scale9Height="53" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="200.0000" Y="75.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="760.0700" Y="211.2682" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Normal" Path="choose/returnMenuLock.png" Plist="" />
                <PressedFileData Type="Normal" Path="choose/returnMenu.png" Plist="" />
                <NormalFileData Type="Normal" Path="choose/returnMenu.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="task_node" ActionTag="-1547488164" Tag="43" IconVisible="True" LeftMargin="0.0001" RightMargin="799.9999" TopMargin="480.0000" ctype="SingleNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <Children>
              <AbstractNodeData Name="task_bg" ActionTag="-841411984" Tag="19" IconVisible="False" LeftMargin="-345.3327" RightMargin="-51.6673" TopMargin="-449.6395" BottomMargin="57.6395" ctype="SpriteObjectData">
                <Size X="397.0000" Y="392.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="-146.8327" Y="253.6395" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <FileData Type="Normal" Path="choose/taskBoard.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position X="0.0001" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.0000" />
            <PreSize X="0.0000" Y="0.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="set_node" ActionTag="-1473178369" Tag="44" IconVisible="True" RightMargin="800.0000" TopMargin="480.0000" ctype="SingleNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <Children>
              <AbstractNodeData Name="set_bg" ActionTag="-96817404" Tag="45" IconVisible="False" LeftMargin="211.8611" RightMargin="-497.8611" TopMargin="-18.9436" BottomMargin="-461.0564" ctype="SpriteObjectData">
                <Size X="286.0000" Y="480.0000" />
                <Children>
                  <AbstractNodeData Name="cb_switch_effect" ActionTag="-93250024" Tag="25" IconVisible="False" LeftMargin="132.8532" RightMargin="128.1468" TopMargin="114.3519" BottomMargin="344.6481" TouchEnable="True" CheckedState="True" ctype="CheckBoxObjectData">
                    <Size X="25.0000" Y="21.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="145.3532" Y="355.1481" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5082" Y="0.7399" />
                    <PreSize X="0.0874" Y="0.0437" />
                    <NormalBackFileData Type="Normal" Path="choose/on.png" Plist="" />
                    <PressedBackFileData Type="Normal" Path="choose/on.png" Plist="" />
                    <DisableBackFileData Type="Normal" Path="choose/off.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="cb_switch_music" ActionTag="137949579" Tag="26" IconVisible="False" LeftMargin="132.8500" RightMargin="128.1500" TopMargin="164.6671" BottomMargin="294.3329" TouchEnable="True" CheckedState="True" ctype="CheckBoxObjectData">
                    <Size X="25.0000" Y="21.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="145.3500" Y="304.8329" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5082" Y="0.6351" />
                    <PreSize X="0.0874" Y="0.0437" />
                    <NormalBackFileData Type="Normal" Path="choose/on.png" Plist="" />
                    <PressedBackFileData Type="Normal" Path="choose/on.png" Plist="" />
                    <DisableBackFileData Type="Normal" Path="choose/off.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="effect_point" ActionTag="-484994471" Tag="27" IconVisible="False" LeftMargin="166.8255" RightMargin="102.1745" TopMargin="119.1192" BottomMargin="343.8808" ctype="SpriteObjectData">
                    <Size X="17.0000" Y="17.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="175.3255" Y="352.3808" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.6130" Y="0.7341" />
                    <PreSize X="0.0594" Y="0.0354" />
                    <FileData Type="Normal" Path="choose/point.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="music_point" ActionTag="2063291828" Tag="28" IconVisible="False" LeftMargin="166.8300" RightMargin="102.1700" TopMargin="169.1215" BottomMargin="293.8785" ctype="SpriteObjectData">
                    <Size X="17.0000" Y="17.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="175.3300" Y="302.3785" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.6130" Y="0.6300" />
                    <PreSize X="0.0594" Y="0.0354" />
                    <FileData Type="Normal" Path="choose/point.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="354.8611" Y="-221.0564" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <FileData Type="Normal" Path="choose/SetBoard.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>