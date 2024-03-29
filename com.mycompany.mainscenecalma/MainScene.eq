/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{


	SESprite chibi1;
	SESprite chibi2;
	SESprite mavis;
	SESprite chibi4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
	rsc.prepare_image("image1", "chibi1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("image2", "chibi2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("image3", "mavis", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("image4", "chibi4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "tahoma color=black", 50);
	
	chibi1 = add_sprite_for_image(SEImage.for_resource("image1"));
	chibi2 = add_sprite_for_image(SEImage.for_resource("image2"));
	mavis = add_sprite_for_image(SEImage.for_resource("image3"));
	chibi4 = add_sprite_for_image(SEImage.for_resource("image4"));
	text = add_sprite_for_text("FAIRY TAIL!", "myfont");
	
	chibi1.move(0,0);
	chibi2.move(0,get_scene_height()*0.5);
	mavis.move(get_scene_width()*0.5,0);
	chibi4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(550,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new FirstScene());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new SecondScene());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new ThirdScene());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new FourthScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}