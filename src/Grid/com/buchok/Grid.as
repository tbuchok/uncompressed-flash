package Grid.com.buchok {

  import flash.net.*;
  import flash.display.*;
  import flash.events.*;

  public class Grid extends Sprite {

    function Grid() {
      addEventListener(Event.ADDED_TO_STAGE, handleAddedToStage);
    }

    private function handleAddedToStage(event:Event) : void {
      var loader = new Loader();
      loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
      loader.load(new URLRequest('BaseCreative.swf'));
    }

    private function handleComplete(event:Event) : void {
      addChild(event.target.content);
    }

  }
}