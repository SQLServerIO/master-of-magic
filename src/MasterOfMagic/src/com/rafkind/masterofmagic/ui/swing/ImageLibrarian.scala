/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rafkind.masterofmagic.ui.swing

import java.awt._;
import java.awt.geom._;
import java.awt.image._;
import com.rafkind.masterofmagic.state._;
import com.rafkind.masterofmagic.util._;

class ImageLibrarian(terrainFileName:String) {

  val TRANSPARENT = new Color(255, 255, 255, 0);

  /*val terrainTiles = Map(
    TerrainType.OCEAN -> createTerrainTile(Color.BLUE),
    TerrainType.SHORE -> createTerrainTile(Color.MAGENTA),
    TerrainType.RIVER -> createTerrainTile(Color.BLUE),
    TerrainType.SWAMP -> createTerrainTile(Color.GREEN),
    TerrainType.TUNDRA -> createTerrainTile(Color.WHITE),
    TerrainType.DEEP_TUNDRA -> createTerrainTile(Color.WHITE),
    TerrainType.MOUNTAIN -> createTerrainTile(Color.DARK_GRAY),
    TerrainType.VOLCANO -> createTerrainTile(Color.DARK_GRAY),
    TerrainType.CHAOS_NODE -> createTerrainTile(Color.RED),
    TerrainType.HILLS -> createTerrainTile(Color.ORANGE),
    TerrainType.GRASSLAND -> createTerrainTile(Color.GREEN),
    TerrainType.SORCERY_NODE -> createTerrainTile(Color.CYAN),
    TerrainType.DESERT -> createTerrainTile(Color.YELLOW),
    TerrainType.FOREST -> createTerrainTile(Color.GREEN),
    TerrainType.NATURE_NODE -> createTerrainTile(Color.GREEN));*/
  val terrainTiles = loadTerrainTiles(terrainFileName);

  val lairTiles = Map(
    LairType.CAVE -> createLairTile(Color.YELLOW),
    LairType.TEMPLE -> createLairTile(Color.WHITE),
    LairType.KEEP -> createLairTile(Color.LIGHT_GRAY),
    LairType.TOWER -> createLairTile(Color.BLACK),
    LairType.NODE -> createLairTile(TRANSPARENT));

  val armyTile = createArmyUnitTile;

  def getTerrainTileImage(terrainSquare:TerrainSquare):Image = {
    //terrainTiles(terrainSquare.terrainType);
    terrainTiles(terrainSquare.spriteNumber);
  }

  def getLairTileImage(lairType:LairType):Image = {
    lairTiles(lairType);
  }

  def getCityTileImage(city:City):Image = {
    createCityTile(city.owner.flag.color);
  }

  def getArmyUnitTileImage(armyUnit:ArmyUnit):Image = {
    armyTile;
  }

  def createArmyUnitTile:Image = {
    val bi = GraphicsEnvironment
      .getLocalGraphicsEnvironment()
      .getDefaultScreenDevice()
      .getDefaultConfiguration()
      .createCompatibleImage(TerrainLbxReader.TILE_WIDTH,
                             TerrainLbxReader.TILE_HEIGHT);

    val graphics = bi.createGraphics();

    val paint = new GradientPaint(
      0, 0,
      Color.BLUE,
      TerrainLbxReader.TILE_WIDTH, TerrainLbxReader.TILE_HEIGHT,
      Color.LIGHT_GRAY,
      true);
    graphics.setPaint(paint);
    graphics.fill(
      new Rectangle(
        0,
        0,
        TerrainLbxReader.TILE_WIDTH,
        TerrainLbxReader.TILE_HEIGHT));
    bi;
  }

  def createTerrainTile(c:Color):Image = {
    val bi = GraphicsEnvironment
      .getLocalGraphicsEnvironment()
      .getDefaultScreenDevice()
      .getDefaultConfiguration()
      .createCompatibleImage(TerrainLbxReader.TILE_WIDTH,
                             TerrainLbxReader.TILE_HEIGHT);

    val graphics = bi.createGraphics();

    graphics.setColor(c);
    graphics.fill(
      new Rectangle(
        0,
        0,
        TerrainLbxReader.TILE_WIDTH,
        TerrainLbxReader.TILE_HEIGHT));
    bi;
  }

  def loadTerrainTiles(terrainFileName:String):Array[BufferedImage] = {
    println("Loading terrain tiles..");
    val ims = new Array[BufferedImage](TerrainLbxReader.TILE_COUNT);
    TerrainLbxReader.readAnd(terrainFileName, (tile:Int, x:Int, y:Int, color:Int) => {
        if (ims(tile) == null) {
          ims(tile) = GraphicsEnvironment
            .getLocalGraphicsEnvironment()
            .getDefaultScreenDevice()
            .getDefaultConfiguration()
            .createCompatibleImage(TerrainLbxReader.TILE_WIDTH,
                                   TerrainLbxReader.TILE_HEIGHT);
        }
        
        ims(tile).setRGB(x, y, Colors.colors(color).getRGB());
    });
    println("  Done");
    ims;
  }

  def createLairTile(c:Color):Image = {
    val bi = new BufferedImage(TerrainLbxReader.TILE_WIDTH,
                               TerrainLbxReader.TILE_HEIGHT,
                               BufferedImage.TYPE_INT_ARGB);

    val graphics = bi.createGraphics();

    graphics.setColor(TRANSPARENT);
    graphics.fill(
      new Rectangle(
        0,
        0,
        TerrainLbxReader.TILE_WIDTH,
        TerrainLbxReader.TILE_HEIGHT));


    val path = new Path2D.Float();
    val w = TerrainLbxReader.TILE_WIDTH;
    val h = TerrainLbxReader.TILE_HEIGHT;

    path.moveTo(2, h-2);
    path.lineTo(w-2, h-2);
    path.quadTo(w-2, 2, w/2, 2);
    path.quadTo(2, 2, 2, h-2);
    graphics.setColor(c);
    graphics.fill(path);

    graphics.setColor(Color.BLACK);
    graphics.draw(path);
    
    bi;
  }

  def createCityTile(c:Color):Image = {
    val bi = new BufferedImage(TerrainLbxReader.TILE_WIDTH,
                               TerrainLbxReader.TILE_HEIGHT,
                               BufferedImage.TYPE_INT_ARGB);

    val graphics = bi.createGraphics();

    graphics.setColor(TRANSPARENT);
    graphics.fill(
      new Rectangle(
        0,
        0,
        TerrainLbxReader.TILE_WIDTH,
        TerrainLbxReader.TILE_HEIGHT));


    val path = new Path2D.Float();
    val w = TerrainLbxReader.TILE_WIDTH;
    val h = TerrainLbxReader.TILE_HEIGHT;

    path.moveTo(3, 3);
    path.lineTo(w-3, 3);
    path.lineTo(w-3, h-3);
    path.lineTo(3, h-3);
    path.lineTo(3, 3);
    graphics.setColor(c);
    graphics.fill(path);

    graphics.setColor(Color.BLACK);
    graphics.draw(path);

    bi;
  }
}
