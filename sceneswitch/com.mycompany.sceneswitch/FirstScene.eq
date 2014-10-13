
/*
 * FirstScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FirstScene : SEScene
{
	SESprite backText;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_font("myFont", "arial bold color=black", 75);
		rsc.prepare_image("myimage", "charizard", get_scene_width(), get_scene_height());
		add_sprite_for_image(SEImage.for_resource("myimage"));
		backText = add_sprite_for_text("BACK", "myFont");
		backText.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0, 0, backText.get_width(), backText.get_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
