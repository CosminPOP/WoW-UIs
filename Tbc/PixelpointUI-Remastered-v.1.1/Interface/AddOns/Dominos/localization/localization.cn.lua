﻿--[[
	Localization_zhCN.lua
	2008/5/14 Modified by xuxianhe@gmail.com

	Simple Chinese : 简体中文
--]]

local L = LibStub('AceLocale-3.0'):NewLocale('Dominos', 'zhCN')
if not L then return end

--system messages
L.NewPlayer = '建立新配置 %s'
L.Updated = '升级到 v%s'

--profiles
L.ProfileCreated = '建立新配置 "%s"'
L.ProfileLoaded = '配置设置为 "%s"'
L.ProfileDeleted = '删除配置 "%s"'
L.ProfileCopied = '从 "%s" 复制配置到 "%s"'
L.ProfileReset = '重置配置 "%s"'
L.CantDeleteCurrentProfile = '不能删除当前配置'
L.InvalidProfile = '无效的配置文件 "%s"'

--slash command help
L.ShowOptionsDesc = '显示设置菜单'
L.ConfigDesc = '设置模式开关'

L.SetScaleDesc = '缩放 <frameList>'
L.SetAlphaDesc = '透明度 <frameList>'
L.SetFadeDesc = '遮罩透明度 <frameList>'

L.SetColsDesc = '列 <frameList>'
L.SetPadDesc = '填充 <frameList>'
L.SetSpacingDesc = '间隔 <frameList>'

L.ShowFramesDesc = '显示 <frameList>'
L.HideFramesDesc = '隐藏 <frameList>'
L.ToggleFramesDesc = '开关 <frameList>'

--slash commands for profiles
L.SetDesc = '配置切换为 <profile>'
L.SaveDesc = '保存当前配置为 <profile>'
L.CopyDesc = '从 <profile> 复制配置'
L.DeleteDesc = '删除 <profile>'
L.ResetDesc = '返回默认配置'
L.ListDesc = '列出所有配置'
L.AvailableProfiles = '可用设置'
L.PrintVersionDesc = '显示当前版本'

--dragFrame tooltips
L.ShowConfig = '<右键> 设置'
L.HideBar = '<中键或者Shift+右键> 隐藏'
L.ShowBar = '<中键或者Shift+右键> 显示'
L.SetAlpha = '<滚轮> 设置透明度 (|cffffffff%d|r)'