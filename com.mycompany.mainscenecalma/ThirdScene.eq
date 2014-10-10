

public class ThirdScene : SEScene
{

	SESprite text;
	SESprite home1;
	SESprite  sprite;
	//SESprite sprite2;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("back", "back", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("mavis", "mavis", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial  color=#000000", 80);
			
			home1 = add_sprite_for_image(SEImage.for_resource("back"));
		    sprite = add_sprite_for_image(SEImage.for_resource("mavis"));
			text = add_sprite_for_text("MAVIS", "myfont");

			home1.move(get_scene_width()*0.75,get_scene_height()*0.75);
		    sprite.move(get_scene_width()*0.5,0);
			text.move(550,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}