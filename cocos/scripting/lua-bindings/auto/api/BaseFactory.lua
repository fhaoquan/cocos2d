
--------------------------------
-- @module BaseFactory
-- @see db

--------------------------------
-- - Share specific skin data with specific armature.<br>
-- param armature - The armature.<br>
-- param skin - The skin data.<br>
-- param isOverride - Whether it completely override the original skin. (Default: false)<br>
-- param exclude - A list of slot names that do not need to be replace.<br>
-- example<br>
-- TypeScript style, for reference only.<br>
-- <pre><br>
-- let armatureA = factory.buildArmature("armatureA", "dragonBonesA");<br>
-- let armatureDataB = factory.getArmatureData("armatureB", "dragonBonesB");<br>
-- if (armatureDataB && armatureDataB.defaultSkin) {<br>
-- factory.replaceSkin(armatureA, armatureDataB.defaultSkin, false, ["arm_l", "weapon_l"]);<br>
-- }<br>
-- </pre><br>
-- see dragonBones.Armature<br>
-- see dragonBones.SkinData<br>
-- version DragonBones 5.6<br>
-- language en_US<br>
-- - 将特定的皮肤数据共享给特定的骨架使用。<br>
-- param armature - 骨架。<br>
-- param skin - 皮肤数据。<br>
-- param isOverride - 是否完全覆盖原来的皮肤。 （默认: false）<br>
-- param exclude - 不需要被替换的插槽名称列表。<br>
-- example<br>
-- TypeScript 风格，仅供参考。<br>
-- <pre><br>
-- let armatureA = factory.buildArmature("armatureA", "dragonBonesA");<br>
-- let armatureDataB = factory.getArmatureData("armatureB", "dragonBonesB");<br>
-- if (armatureDataB && armatureDataB.defaultSkin) {<br>
-- factory.replaceSkin(armatureA, armatureDataB.defaultSkin, false, ["arm_l", "weapon_l"]);<br>
-- }<br>
-- </pre><br>
-- see dragonBones.Armature<br>
-- see dragonBones.SkinData<br>
-- version DragonBones 5.6<br>
-- language zh_CN
-- @function replaceSkin 
-- @param self
-- @param #db.Armature armature
-- @param #db.SkinData skin
-- @param #bool isOverride
-- @param #array_table exclude
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- - Replaces the existing animation data for a specific armature with the animation data for the specific armature data.<br>
-- This enables you to make a armature template so that other armature without animations can share it's animations.<br>
-- param armature - The armtaure.<br>
-- param armatureData - The armature data.<br>
-- param isOverride - Whether to completely overwrite the original animation. (Default: false)<br>
-- example<br>
-- TypeScript style, for reference only.<br>
-- <pre><br>
-- let armatureA = factory.buildArmature("armatureA", "dragonBonesA");<br>
-- let armatureDataB = factory.getArmatureData("armatureB", "dragonBonesB");<br>
-- if (armatureDataB) {<br>
-- factory.replaceAnimation(armatureA, armatureDataB);<br>
-- }<br>
-- </pre><br>
-- see dragonBones.Armature<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 5.6<br>
-- language en_US<br>
-- - 用特定骨架数据的动画数据替换特定骨架现有的动画数据。<br>
-- 这样就能实现制作一个骨架动画模板，让其他没有制作动画的骨架共享该动画。<br>
-- param armature - 骨架。<br>
-- param armatureData - 骨架数据。<br>
-- param isOverride - 是否完全覆盖原来的动画。（默认: false）<br>
-- example<br>
-- TypeScript 风格，仅供参考。<br>
-- <pre><br>
-- let armatureA = factory.buildArmature("armatureA", "dragonBonesA");<br>
-- let armatureDataB = factory.getArmatureData("armatureB", "dragonBonesB");<br>
-- if (armatureDataB) {<br>
-- factory.replaceAnimation(armatureA, armatureDataB);<br>
-- }<br>
-- </pre><br>
-- see dragonBones.Armature<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 5.6<br>
-- language zh_CN
-- @function replaceAnimation 
-- @param self
-- @param #db.Armature armature
-- @param #db.ArmatureData armatureData
-- @param #bool isReplaceAll
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- private
-- @function replaceSlotDisplayList 
-- @param self
-- @param #string dragonBonesName
-- @param #string armatureName
-- @param #string slotName
-- @param #db.Slot slot
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- - An Worldclock instance updated by engine.<br>
-- version DragonBones 5.7<br>
-- language en_US<br>
-- - 由引擎驱动的 WorldClock 实例。<br>
-- version DragonBones 5.7<br>
-- language zh_CN
-- @function getClock 
-- @param self
-- @return WorldClock#WorldClock ret (return value: db.WorldClock)
        
--------------------------------
-- - Remove a DragonBonesData instance.<br>
-- param name - The DragonBonesData instance cache name.<br>
-- param disposeData - Whether to dispose data. (Default: true)<br>
-- see #parseDragonBonesData()<br>
-- see #getDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 移除 DragonBonesData 实例。<br>
-- param name - DragonBonesData 实例缓存名称。<br>
-- param disposeData - 是否释放数据。 （默认: true）<br>
-- see #parseDragonBonesData()<br>
-- see #getDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function removeDragonBonesData 
-- @param self
-- @param #string name
-- @param #bool disposeData
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Remove a TextureAtlasData instance.<br>
-- param name - The TextureAtlasData instance cache name.<br>
-- param disposeData - Whether to dispose data.<br>
-- see #parseTextureAtlasData()<br>
-- see #getTextureAtlasData()<br>
-- see #addTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 移除 TextureAtlasData 实例。<br>
-- param name - TextureAtlasData 实例的缓存名称。<br>
-- param disposeData - 是否释放数据。<br>
-- see #parseTextureAtlasData()<br>
-- see #getTextureAtlasData()<br>
-- see #addTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function removeTextureAtlasData 
-- @param self
-- @param #string name
-- @param #bool disposeData
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Parse the raw data to a DragonBonesData instance and cache it to the factory.<br>
-- param rawData - The raw data.<br>
-- param name - Specify a cache name for the instance so that the instance can be obtained through this name. (If not set, use the instance name instead)<br>
-- param scale - Specify a scaling value for all armatures. (Default: 1.0)<br>
-- returns DragonBonesData instance<br>
-- see #getDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 4.5<br>
-- language en_US<br>
-- - 将原始数据解析为 DragonBonesData 实例，并缓存到工厂中。<br>
-- param rawData - 原始数据。<br>
-- param name - 为该实例指定一个缓存名称，以便可以通过此名称获取该实例。 （如果未设置，则使用该实例中的名称）<br>
-- param scale - 为所有的骨架指定一个缩放值。 （默认: 1.0）<br>
-- returns DragonBonesData 实例<br>
-- see #getDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 4.5<br>
-- language zh_CN
-- @function parseDragonBonesData 
-- @param self
-- @param #char rawData
-- @param #string name
-- @param #float scale
-- @return DragonBonesData#DragonBonesData ret (return value: db.DragonBonesData)
        
--------------------------------
-- - Clear all cached DragonBonesData instances and TextureAtlasData instances.<br>
-- param disposeData - Whether to dispose data.<br>
-- version DragonBones 4.5<br>
-- language en_US<br>
-- - 清除缓存的所有 DragonBonesData 实例和 TextureAtlasData 实例。<br>
-- param disposeData - 是否释放数据。<br>
-- version DragonBones 4.5<br>
-- language zh_CN
-- @function clear 
-- @param self
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Cache a DragonBonesData instance to the factory.<br>
-- param data - The DragonBonesData instance.<br>
-- param name - Specify a cache name for the instance so that the instance can be obtained through this name. (if not set, use the instance name instead)<br>
-- see #parseDragonBonesData()<br>
-- see #getDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 将 DragonBonesData 实例缓存到工厂中。<br>
-- param data - DragonBonesData 实例。<br>
-- param name - 为该实例指定一个缓存名称，以便可以通过此名称获取该实例。 （如果未设置，则使用该实例中的名称）<br>
-- see #parseDragonBonesData()<br>
-- see #getDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function addDragonBonesData 
-- @param self
-- @param #db.DragonBonesData data
-- @param #string name
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Create a armature from cached DragonBonesData instances and TextureAtlasData instances.<br>
-- Note that when the created armature that is no longer in use, you need to explicitly dispose {@link #dragonBones.Armature#dispose()}.<br>
-- param armatureName - The armature data name.<br>
-- param dragonBonesName - The cached name of the DragonBonesData instance. (If not set, all DragonBonesData instances are retrieved, and when multiple DragonBonesData instances contain a the same name armature data, it may not be possible to accurately create a specific armature)<br>
-- param skinName - The skin name, you can set a different ArmatureData name to share it's skin data. (If not set, use the default skin data)<br>
-- returns The armature.<br>
-- example<br>
-- TypeScript style, for reference only.<br>
-- <pre><br>
-- let armature = factory.buildArmature("armatureName", "dragonBonesName");<br>
-- armature.clock = factory.clock;<br>
-- </pre><br>
-- see dragonBones.DragonBonesData<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 通过缓存的 DragonBonesData 实例和 TextureAtlasData 实例创建一个骨架。<br>
-- 注意，创建的骨架不再使用时，需要显式释放 {@link #dragonBones.Armature#dispose()}。<br>
-- param armatureName - 骨架数据名称。<br>
-- param dragonBonesName - DragonBonesData 实例的缓存名称。 （如果未设置，将检索所有的 DragonBonesData 实例，当多个 DragonBonesData 实例中包含同名的骨架数据时，可能无法准确的创建出特定的骨架）<br>
-- param skinName - 皮肤名称，可以设置一个其他骨架数据名称来共享其皮肤数据。（如果未设置，则使用默认的皮肤数据）<br>
-- returns 骨架。<br>
-- example<br>
-- TypeScript 风格，仅供参考。<br>
-- <pre><br>
-- let armature = factory.buildArmature("armatureName", "dragonBonesName");<br>
-- armature.clock = factory.clock;<br>
-- </pre><br>
-- see dragonBones.DragonBonesData<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function buildArmature 
-- @param self
-- @param #string armatureName
-- @param #string dragonBonesName
-- @param #string skinName
-- @param #string textureAtlasName
-- @return Armature#Armature ret (return value: db.Armature)
        
--------------------------------
-- - Cache a TextureAtlasData instance to the factory.<br>
-- param data - The TextureAtlasData instance.<br>
-- param name - Specify a cache name for the instance so that the instance can be obtained through this name. (if not set, use the instance name instead)<br>
-- see #parseTextureAtlasData()<br>
-- see #getTextureAtlasData()<br>
-- see #removeTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 将 TextureAtlasData 实例缓存到工厂中。<br>
-- param data - TextureAtlasData 实例。<br>
-- param name - 为该实例指定一个缓存名称，以便可以通过此名称获取该实例。 （如果未设置，则使用该实例中的名称）<br>
-- see #parseTextureAtlasData()<br>
-- see #getTextureAtlasData()<br>
-- see #removeTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function addTextureAtlasData 
-- @param self
-- @param #db.TextureAtlasData data
-- @param #string name
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Get a specific armature data.<br>
-- param name - The armature data name.<br>
-- param dragonBonesName - The cached name for DragonbonesData instance.<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 5.1<br>
-- language en_US<br>
-- - 获取特定的骨架数据。<br>
-- param name - 骨架数据名称。<br>
-- param dragonBonesName - DragonBonesData 实例的缓存名称。<br>
-- see dragonBones.ArmatureData<br>
-- version DragonBones 5.1<br>
-- language zh_CN
-- @function getArmatureData 
-- @param self
-- @param #string name
-- @param #string dragonBonesName
-- @return ArmatureData#ArmatureData ret (return value: db.ArmatureData)
        
--------------------------------
-- - Replaces the current display data for a particular slot with a specific display data.<br>
-- Specify display data with "dragonBonesName/armatureName/slotName/displayName".<br>
-- param dragonBonesName - The DragonBonesData instance cache name.<br>
-- param armatureName - The armature data name.<br>
-- param slotName - The slot data name.<br>
-- param displayName - The display data name.<br>
-- param slot - The slot.<br>
-- param displayIndex - The index of the display data that is replaced. (If it is not set, replaces the current display data)<br>
-- example<br>
-- TypeScript style, for reference only.<br>
-- <pre><br>
-- let slot = armature.getSlot("weapon");<br>
-- factory.replaceSlotDisplay("dragonBonesName", "armatureName", "slotName", "displayName", slot);<br>
-- </pre><br>
-- version DragonBones 4.5<br>
-- language en_US<br>
-- - 用特定的显示对象数据替换特定插槽当前的显示对象数据。<br>
-- 用 "dragonBonesName/armatureName/slotName/displayName" 指定显示对象数据。<br>
-- param dragonBonesName - DragonBonesData 实例的缓存名称。<br>
-- param armatureName - 骨架数据名称。<br>
-- param slotName - 插槽数据名称。<br>
-- param displayName - 显示对象数据名称。<br>
-- param slot - 插槽。<br>
-- param displayIndex - 被替换的显示对象数据的索引。 （如果未设置，则替换当前的显示对象数据）<br>
-- example<br>
-- TypeScript 风格，仅供参考。<br>
-- <pre><br>
-- let slot = armature.getSlot("weapon");<br>
-- factory.replaceSlotDisplay("dragonBonesName", "armatureName", "slotName", "displayName", slot);<br>
-- </pre><br>
-- version DragonBones 4.5<br>
-- language zh_CN
-- @function replaceSlotDisplay 
-- @param self
-- @param #string dragonBonesName
-- @param #string armatureName
-- @param #string slotName
-- @param #string displayName
-- @param #db.Slot slot
-- @param #int displayIndex
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- - Deprecated, please refer to {@link #replaceSkin}.<br>
-- deprecated<br>
-- language en_US<br>
-- - 已废弃，请参考 {@link #replaceSkin}。<br>
-- deprecated<br>
-- language zh_CN
-- @function changeSkin 
-- @param self
-- @param #db.Armature armature
-- @param #db.SkinData skin
-- @param #array_table exclude
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- private
-- @function replaceDisplay 
-- @param self
-- @param #db.Slot slot
-- @param #db.DisplayData displayData
-- @param #int displayIndex
-- @return BaseFactory#BaseFactory self (return value: db.BaseFactory)
        
--------------------------------
-- - Parse the raw texture atlas data and the texture atlas object to a TextureAtlasData instance and cache it to the factory.<br>
-- param rawData - The raw texture atlas data.<br>
-- param textureAtlas - The texture atlas object.<br>
-- param name - Specify a cache name for the instance so that the instance can be obtained through this name. (If not set, use the instance name instead)<br>
-- param scale - Specify a scaling value for the map set. (Default: 1.0)<br>
-- returns TextureAtlasData instance<br>
-- see #getTextureAtlasData()<br>
-- see #addTextureAtlasData()<br>
-- see #removeTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 4.5<br>
-- language en_US<br>
-- - 将原始贴图集数据和贴图集对象解析为 TextureAtlasData 实例，并缓存到工厂中。<br>
-- param rawData - 原始贴图集数据。<br>
-- param textureAtlas - 贴图集对象。<br>
-- param name - 为该实例指定一个缓存名称，以便可以通过此名称获取该实例。 （如果未设置，则使用该实例中的名称）<br>
-- param scale - 为贴图集指定一个缩放值。 （默认: 1.0）<br>
-- returns TextureAtlasData 实例<br>
-- see #getTextureAtlasData()<br>
-- see #addTextureAtlasData()<br>
-- see #removeTextureAtlasData()<br>
-- see dragonBones.TextureAtlasData<br>
-- version DragonBones 4.5<br>
-- language zh_CN
-- @function parseTextureAtlasData 
-- @param self
-- @param #char rawData
-- @param #void textureAtlas
-- @param #string name
-- @param #float scale
-- @return TextureAtlasData#TextureAtlasData ret (return value: db.TextureAtlasData)
        
--------------------------------
-- - Get a specific DragonBonesData instance.<br>
-- param name - The DragonBonesData instance cache name.<br>
-- returns DragonBonesData instance<br>
-- see #parseDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language en_US<br>
-- - 获取特定的 DragonBonesData 实例。<br>
-- param name - DragonBonesData 实例的缓存名称。<br>
-- returns DragonBonesData 实例<br>
-- see #parseDragonBonesData()<br>
-- see #addDragonBonesData()<br>
-- see #removeDragonBonesData()<br>
-- see dragonBones.DragonBonesData<br>
-- version DragonBones 3.0<br>
-- language zh_CN
-- @function getDragonBonesData 
-- @param self
-- @param #string name
-- @return DragonBonesData#DragonBonesData ret (return value: db.DragonBonesData)
        
return nil
