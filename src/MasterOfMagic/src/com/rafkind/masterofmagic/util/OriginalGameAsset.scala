/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rafkind.masterofmagic.util

case class OriginalGameAsset(val id:Int, val fileName:String)
object OriginalGameAsset {
  val ARMYLIST = OriginalGameAsset(1, "ARMYLIST.LBX");
  val BACKGRND = OriginalGameAsset(2, "BACKGRND.LBX");
  val BOOK = OriginalGameAsset(3, "BOOK.LBX");
  val BUILDDAT = OriginalGameAsset(4, "BUILDDAT.LBX");
  val BUILDESC = OriginalGameAsset(5, "BUILDESC.LBX");
  val CHRIVER = OriginalGameAsset(6, "CHRIVER.LBX");
  val CITYNAME = OriginalGameAsset(7, "CITYNAME.LBX");
  val CITYSCAP = OriginalGameAsset(8, "CITYSCAP.LBX");
  val CITYWALL = OriginalGameAsset(9, "CITYWALL.LBX");
  val CMBDESRC = OriginalGameAsset(10, "CMBDESRC.LBX");
  val CMBDESRT = OriginalGameAsset(11, "CMBDESRT.LBX");
  val CMBGRASC = OriginalGameAsset(12, "CMBGRASC.LBX");
  val CMBGRASS = OriginalGameAsset(13, "CMBGRASS.LBX");
  val CMBMAGIC = OriginalGameAsset(14, "CMBMAGIC.LBX");
  val CMBMOUNC = OriginalGameAsset(15, "CMBMOUNC.LBX");
  val CMBMOUNT = OriginalGameAsset(16, "CMBMOUNT.LBX");
  val CMBTCITY = OriginalGameAsset(17, "CMBTCITY.LBX");
  val CMBTFX = OriginalGameAsset(18, "CMBTFX.LBX");
  val CMBTSND = OriginalGameAsset(19, "CMBTSND.LBX");
  val CMBTUNDC = OriginalGameAsset(20, "CMBTUNDC.LBX");
  val CMBTUNDR = OriginalGameAsset(21, "CMBTUNDR.LBX");
  val CMBTWALL = OriginalGameAsset(22, "CMBTWALL.LBX");
  val COMBAT = OriginalGameAsset(23, "COMBAT.LBX");
  val COMBAT_TMP = OriginalGameAsset(24, "COMBAT.TMP");
  val COMPIX = OriginalGameAsset(25, "COMPIX.LBX");
  val CONFIG = OriginalGameAsset(26, "CONFIG.MOM");
  val CONQUEST = OriginalGameAsset(27, "CONQUEST.LBX");
  val DESC = OriginalGameAsset(28, "DESC.LBX");
  val DESERT = OriginalGameAsset(29, "DESERT.LBX");
  val DIPLOMAC = OriginalGameAsset(30, "DIPLOMAC.LBX");
  val DIPLOMSG = OriginalGameAsset(31, "DIPLOMSG.LBX");
  val EVENTMSG = OriginalGameAsset(32, "EVENTMSG.LBX");
  val EVENTS = OriginalGameAsset(33, "EVENTS.LBX");
  val FAT_GEN_CAT = OriginalGameAsset(34, "FAT-GEN.CAT");
  val FAT_OPL3_BNK = OriginalGameAsset(35, "FAT-OPL3.BNK");
  val FAT_AD = OriginalGameAsset(36, "FAT.AD");
  val FAT_CAT = OriginalGameAsset(37, "FAT.CAT");
  val FAT_MT = OriginalGameAsset(38, "FAT.MT");
  val FAT_OPL = OriginalGameAsset(39, "FAT.OPL");
  val FATV10_BNK = OriginalGameAsset(40, "FATV10.BNK");
  val FIGURE10 = OriginalGameAsset(41, "FIGURE10.LBX");
  val FIGURE11 = OriginalGameAsset(42, "FIGURE11.LBX");
  val FIGURE12 = OriginalGameAsset(43, "FIGURE12.LBX");
  val FIGURE13 = OriginalGameAsset(44, "FIGURE13.LBX");
  val FIGURE14 = OriginalGameAsset(45, "FIGURE14.LBX");
  val FIGURE15 = OriginalGameAsset(46, "FIGURE15.LBX");
  val FIGURE16 = OriginalGameAsset(47, "FIGURE16.LBX");
  val FIGURES1 = OriginalGameAsset(48, "FIGURES1.LBX");
  val FIGURES2 = OriginalGameAsset(49, "FIGURES2.LBX");
  val FIGURES3 = OriginalGameAsset(50, "FIGURES3.LBX");
  val FIGURES4 = OriginalGameAsset(51, "FIGURES4.LBX");
  val FIGURES5 = OriginalGameAsset(52, "FIGURES5.LBX");
  val FIGURES6 = OriginalGameAsset(53, "FIGURES6.LBX");
  val FIGURES7 = OriginalGameAsset(54, "FIGURES7.LBX");
  val FIGURES8 = OriginalGameAsset(55, "FIGURES8.LBX");
  val FIGURES9 = OriginalGameAsset(56, "FIGURES9.LBX");
  val FONTS = OriginalGameAsset(57, "FONTS.LBX");
  val HALOFAM = OriginalGameAsset(58, "HALOFAM.LBX");
  val HELP = OriginalGameAsset(59, "HELP.LBX");
  val HERODATA = OriginalGameAsset(60, "HERODATA.LBX");
  val HIRE = OriginalGameAsset(61, "HIRE.LBX");
  val HLPENTRY = OriginalGameAsset(62, "HLPENTRY.LBX");
  val INSTALL_DAT = OriginalGameAsset(63, "INSTALL.DAT");
  val INSTALL_EXE = OriginalGameAsset(64, "INSTALL.EXE");
  val INSTALL_GIF = OriginalGameAsset(65, "INSTALL.GIF");
  val INSTALL_PIF = OriginalGameAsset(66, "INSTALL.PIF");
  val INTRO = OriginalGameAsset(67, "INTRO.LBX");
  val INTROSFX = OriginalGameAsset(68, "INTROSFX.LBX");
  val INTROSND = OriginalGameAsset(69, "INTROSND.LBX");
  val ITEMDATA = OriginalGameAsset(70, "ITEMDATA.LBX");
  val ITEMISC = OriginalGameAsset(71, "ITEMISC.LBX");
  val ITEMMAKE_EXE = OriginalGameAsset(72, "ITEMMAKE.EXE");
  val ITEMPOW = OriginalGameAsset(73, "ITEMPOW.LBX");
  val ITEMS = OriginalGameAsset(74, "ITEMS.LBX");
  val LILWIZ = OriginalGameAsset(75, "LILWIZ.LBX");
  val LISTDAT = OriginalGameAsset(76, "LISTDAT.LBX");
  val LOAD = OriginalGameAsset(77, "LOAD.LBX");
  val LOSE = OriginalGameAsset(78, "LOSE.LBX");
  val MAGIX_EXE = OriginalGameAsset(79, "MAGIC.EXE");
  val MAGIC = OriginalGameAsset(80, "MAGIC.LBX");
  val MAGIC_SET = OriginalGameAsset(81, "MAGIC.SET");
  val MAIN = OriginalGameAsset(82, "MAIN.LBX");
  val MAINSCRN = OriginalGameAsset(83, "MAINSCRN.LBX");
  val MAPBACK = OriginalGameAsset(84, "MAPBACK.LBX");
  val MESSAGE = OriginalGameAsset(85, "MESSAGE.LBX");
  val MONSTER = OriginalGameAsset(86, "MONSTER.LBX");
  val MOODWIZ = OriginalGameAsset(87, "MOODWIZ.LBX");
  val MPSCOPY_EXE = OriginalGameAsset(88, "MPSCOPY.EXE");
  val MUSIC = OriginalGameAsset(89, "MUSIC.LBX");
  val NAMES = OriginalGameAsset(90, "NAMES.LBX");
  val NEWGAME = OriginalGameAsset(91, "NEWGAME.LBX");
  val NEWSOUND = OriginalGameAsset(92, "NEWSOUND.LBX");
  val PORTRAIT = OriginalGameAsset(93, "PORTRAIT.LBX");
  val RELOAD = OriginalGameAsset(94, "RELOAD.LBX");
  val RESOURCE = OriginalGameAsset(95, "RESOURCE.LBX");
  val SCROLL = OriginalGameAsset(96, "SCROLL.LBX");
  val SNDDRV = OriginalGameAsset(97, "SNDDRV.LBX");
  val SOUNDFX = OriginalGameAsset(98, "SOUNDFX.LBX");
  val SPECFX = OriginalGameAsset(99, "SPECFX.LBX");
  val SPECIAL = OriginalGameAsset(100, "SPECIAL.LBX");
  val SPECIAL2 = OriginalGameAsset(101, "SPECIAL2.LBX");
  val SPELLDAT = OriginalGameAsset(102, "SPELLDAT.LBX");
  val SPELLOSE = OriginalGameAsset(103, "SPELLOSE.LBX");
  val SPELLS = OriginalGameAsset(104, "SPELLS.LBX");
  val SPELLSCR = OriginalGameAsset(105, "SPELLSCR.LBX");
  val SPLMASTR = OriginalGameAsset(106, "SPLMASTR.LBX");
  val TERRAIN = OriginalGameAsset(107, "TERRAIN.LBX");
  val TERRSTAT = OriginalGameAsset(108, "TERRSTAT.LBX");
  val TERRTYPE = OriginalGameAsset(109, "TERRTYPE.LBX");
  val TUNDRA = OriginalGameAsset(110, "TUNDRA.LBX");
  val UNITS1 = OriginalGameAsset(111, "UNITS1.LBX");
  val UNITS2 = OriginalGameAsset(112, "UNITS2.LBX");
  val UNITVIEW = OriginalGameAsset(113, "UNITVIEW.LBX");
  val VORTEX = OriginalGameAsset(114, "VORTEX.LBX");
  val WALLRISE = OriginalGameAsset(115, "WALLRISE.LBX");
  val WIN = OriginalGameAsset(116, "WIN.LBX");
  val WIZARDS_EXE = OriginalGameAsset(117, "WIZARDS.EXE");
  val WIZARDS = OriginalGameAsset(118, "WIZARDS.LBX");
  val WIZLAB = OriginalGameAsset(119, "WIZLAB.LBX");

  val values = Array(ARMYLIST,
    BACKGRND,
    BOOK,
    BUILDDAT,
    BUILDESC,
    CHRIVER,
    CITYNAME,
    CITYSCAP,
    CITYWALL,
    CMBDESRC,
    CMBDESRT,
    CMBGRASC,
    CMBGRASS,
    CMBMAGIC,
    CMBMOUNC,
    CMBMOUNT,
    CMBTCITY,
    CMBTFX,
    CMBTSND,
    CMBTUNDC,
    CMBTUNDR,
    CMBTWALL,
    COMBAT,
    COMBAT_TMP,
    COMPIX,
    CONFIG,
    CONQUEST,
    DESC,
    DESERT,
    DIPLOMAC,
    DIPLOMSG,
    EVENTMSG,
    EVENTS,
    FAT_GEN_CAT,
    FAT_OPL3_BNK,
    FAT_AD,
    FAT_CAT,
    FAT_MT,
    FAT_OPL,
    FATV10_BNK,
    FIGURE10,
    FIGURE11,
    FIGURE12,
    FIGURE13,
    FIGURE14,
    FIGURE15,
    FIGURE16,
    FIGURES1,
    FIGURES2,
    FIGURES3,
    FIGURES4,
    FIGURES5,
    FIGURES6,
    FIGURES7,
    FIGURES8,
    FIGURES9,
    FONTS,
    HALOFAM,
    HELP,
    HERODATA,
    HIRE,
    HLPENTRY,
    INSTALL_DAT,
    INSTALL_EXE,
    INSTALL_GIF,
    INSTALL_PIF,
    INTRO,
    INTROSFX,
    INTROSND,
    ITEMDATA,
    ITEMISC,
    ITEMMAKE_EXE,
    ITEMPOW,
    ITEMS,
    LILWIZ,
    LISTDAT,
    LOAD,
    LOSE,
    MAGIX_EXE,
    MAGIC,
    MAGIC_SET,
    MAIN,
    MAINSCRN,
    MAPBACK,
    MESSAGE,
    MONSTER,
    MOODWIZ,
    MPSCOPY_EXE,
    MUSIC,
    NAMES,
    NEWGAME,
    NEWSOUND,
    PORTRAIT,
    RELOAD,
    RESOURCE,
    SCROLL,
    SNDDRV,
    SOUNDFX,
    SPECFX,
    SPECIAL,
    SPECIAL2,
    SPELLDAT,
    SPELLOSE,
    SPELLS,
    SPELLSCR,
    SPLMASTR,
    TERRAIN,
    TERRSTAT,
    TERRTYPE,
    TUNDRA,
    UNITS1,
    UNITS2,
    UNITVIEW,
    VORTEX,
    WALLRISE,
    WIN,
    WIZARDS_EXE,
    WIZARDS,
    WIZLAB
  );
}