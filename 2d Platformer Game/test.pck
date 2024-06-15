GDPC                �                                                                         P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�/      ou      �עٌ]^y��E�G^��    \   res://.godot/exported/133200997/export-48539379cb23704926feff6a31c23c83-main_character.scn         �      wH����PZ�Inb�<�    ,   res://.godot/global_script_class_cache.cfg  P�             ��Р�8���8~$}P�    H   res://.godot/imported/Green.png-a73a03d0a1febdb864b00265fc9002a0.ctex   �            ��ʵ������[    L   res://.godot/imported/Idle (32x32).png-eab6f8bc6cc3e2ad30a389b322c823ee.ctex�*      T      i�1C�ّ��,5� ��    L   res://.godot/imported/Jump (32x32).png-91bf01789c567d31f5c28cd22911709b.ctex�-      h      �*�b�!��?R�    L   res://.godot/imported/Run (32x32).png-448439aeb8095dde0c51c1fbc2bea5a9.ctex `�            ��O�A���C�x���    P   res://.godot/imported/Terrain (16x16).png-f072e8a5f99e915c05031c83401c87a9.ctex @�      Z      V��&�>����O-    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�            ：Qt�E�cO���       res://.godot/uid_cache.bin  0�      
      5������w@���1Aw
       res://Green.png.import  �      �       ʕXp�P�
Cg@�Q-O        res://Idle (32x32).png.import   �,      �       ����F�̓ڰ|	�\�        res://Jump (32x32).png.import    /      �       J��|�ix���| Q       res://Run (32x32).png.importp�      �       �DK�>���#��yF        res://Scenes/main_character.gd          �      u�� j_����B�    (   res://Scenes/main_character.tscn.remap  p�      k       �b�~���1�AD        res://Terrain (16x16).png.import��      �       �b��A�7�5�D�)�       res://icon.svg  p�      �      k����X3Y���f       res://icon.svg.import   �)      �       �|���`J����}�ZV       res://main.tscn.remap   �      a       �J�Sw� ������       res://project.binary@�            ���H��9x6d�;���    extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	#Animations
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"

	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jumping"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 18)

	move_and_slide()
	
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    atlas    region    margin    filter_clip    script    animations    custom_solver_bias    size 	   _bundled       Script    res://Scenes/main_character.gd ��������
   Texture2D    res://Idle (32x32).png 6rl�y
   Texture2D    res://Jump (32x32).png \ b(�9
   Texture2D    res://Run (32x32).png ��v�{|Z      local://AtlasTexture_04dih          local://AtlasTexture_hmqqi F         local://AtlasTexture_e16yh �         local://AtlasTexture_m1aqg �         local://AtlasTexture_1y334          local://AtlasTexture_yb2ul Z         local://AtlasTexture_ibyf4 �         local://AtlasTexture_sfofe �         local://AtlasTexture_tvkco )         local://AtlasTexture_4328j n         local://AtlasTexture_wpf8b �         local://AtlasTexture_vnjsg �         local://AtlasTexture_w360m =	         local://AtlasTexture_s6jls �	         local://AtlasTexture_bbeo6 �	         local://AtlasTexture_rvt1l 
         local://AtlasTexture_f6hn7 Q
         local://AtlasTexture_ye8kq �
         local://AtlasTexture_ransc �
         local://AtlasTexture_pfcnc           local://AtlasTexture_xd6uu e         local://AtlasTexture_q6xi5 �         local://AtlasTexture_p6fsa �         local://AtlasTexture_60cp7 4         local://SpriteFrames_x6rtv y         local://RectangleShape2D_tdjkc �         local://PackedScene_43gvm �         AtlasTexture                                 B   B         AtlasTexture                         B       B   B         AtlasTexture                        �B       B   B         AtlasTexture                        �B       B   B         AtlasTexture                         C       B   B         AtlasTexture                         C       B   B         AtlasTexture                        @C       B   B         AtlasTexture                        `C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                                 B   B         AtlasTexture                                 B   B         AtlasTexture                         B       B   B         AtlasTexture                        �B       B   B         AtlasTexture                        �B       B   B         AtlasTexture                         C       B   B         AtlasTexture                         C       B   B         AtlasTexture                        @C       B   B         AtlasTexture                        `C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                        �C       B   B         AtlasTexture                        �C       B   B         SpriteFrames                         name ,      default       speed      �A      loop             frames                   texture              	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture       	      	   duration      �?            texture       
      	   duration      �?            name ,      jumping       speed      �@      loop             frames                   texture             	   duration      �?            name ,      running       speed      �A      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?         RectangleShape2D    	   
   gU�AgU�A         PackedScene    
      	         names "         CharacterBody2D    scale    script 	   Sprite2D    texture_filter 	   position    sprite_frames 	   autoplay    frame_progress    AnimatedSprite2D    CollisionShape2D    shape    	   variants    
   
     @@  @@                
   MUaB  B
   PUE?PU9?               default    �>
   gU_BMUB               node_count             nodes     )   ��������        ����                            	      ����                                                   
   
   ����            	             conn_count              conns               node_paths              editable_instances              version             RSRC         GST2   @   @      ����               @ @        �   RIFF�   WEBPVP8L�   /?� p������j۪��ʇ!��4��$0LZwpoW-D��s��\y\�.�;�p��
,)�#���!�r M �MVYd���2�$����C$�n�d7���õ�O?܈n&�d���Ց��A:y� �L2�CfYd�MV!I M�� �D`J���l� -��������re�ʟ           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bwrmabk4r42uv"
path="res://.godot/imported/Green.png-a73a03d0a1febdb864b00265fc9002a0.ctex"
metadata={
"vram_texture": false
}
               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d1brv7kt64nu5"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   `         ����               `           RIFF  WEBPVP8L  /_�_� �&�TB&��1Cm���t��~2�\���$�P�I8]/�]0���- ��� ����=����2�:8�m�m0�8��C��t�*�q���䖕���X��C�~�N]D�!�m#Hr�3�,a_��]����;�cVV���:�:�;�eO��%:��ǡ�q�cx�����;O�)�+��w6��_]�������;���t8����]�^��Q�����V���w6Ӂ�;
t�ҁR�\��_[{	x�����;�S��{/�{{=�Q�������|gC�������)�=��l�C#�1���w�l��c�}�W3��l�?IH
��V:�N���w6�a�X,��P�A�;��0������b^�s�w ���.7���k�����r�|��Z[�Vͪ�Q.u�R��S/G̕U��?#λIG
�#�ΰ� 3����Yủ���2s4����V����(�;t�QG
�s G�8��t0q�9�XqTn�C0�8�V:�=�             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://broejfht1qbo"
path="res://.godot/imported/Idle (32x32).png-eab6f8bc6cc3e2ad30a389b322c823ee.ctex"
metadata={
"vram_texture": false
}
         GST2              ����                          0  RIFF(  WEBPVP8L  /�W���$hQVe����83�p���71|�-T HBa����nE�� ��S�����\���p��m�m0�
$����2��W��H��68�[�SDz�m�w��	��6�P��D��K�䡒�\�}�=}x������r��}yx}���U������5��I�ۋ��b�i3}'W�����Af������[�4#Yk!C ����8��A�)��9�|K)�C a��ii��q���RZS<H��dZCZ�z�#:F bN ��!�0�         [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b0piuky0vih5u"
path="res://.godot/imported/Jump (32x32).png-91bf01789c567d31f5c28cd22911709b.ctex"
metadata={
"vram_texture": false
}
        RSRC                    PackedScene            ��������                                            w     resource_local_to_scene    resource_name    texture    margins    separation    texture_region_size    use_texture_padding    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity    0:0/0/script    1:0/0 &   1:0/0/physics_layer_0/linear_velocity '   1:0/0/physics_layer_0/angular_velocity    1:0/0/script    2:0/0 &   2:0/0/physics_layer_0/linear_velocity '   2:0/0/physics_layer_0/angular_velocity    2:0/0/script    3:0/0 &   3:0/0/physics_layer_0/linear_velocity '   3:0/0/physics_layer_0/angular_velocity    3:0/0/script    4:0/0 &   4:0/0/physics_layer_0/linear_velocity '   4:0/0/physics_layer_0/angular_velocity    4:0/0/script    6:0/0 &   6:0/0/physics_layer_0/linear_velocity '   6:0/0/physics_layer_0/angular_velocity '   6:0/0/physics_layer_0/polygon_0/points    6:0/0/script    7:0/0 &   7:0/0/physics_layer_0/linear_velocity '   7:0/0/physics_layer_0/angular_velocity '   7:0/0/physics_layer_0/polygon_0/points    7:0/0/script    8:0/0 &   8:0/0/physics_layer_0/linear_velocity '   8:0/0/physics_layer_0/angular_velocity '   8:0/0/physics_layer_0/polygon_0/points    8:0/0/script    9:0/0 &   9:0/0/physics_layer_0/linear_velocity '   9:0/0/physics_layer_0/angular_velocity    9:0/0/script    10:0/0 '   10:0/0/physics_layer_0/linear_velocity (   10:0/0/physics_layer_0/angular_velocity    10:0/0/script    12:0/0 '   12:0/0/physics_layer_0/linear_velocity (   12:0/0/physics_layer_0/angular_velocity (   12:0/0/physics_layer_0/polygon_0/points    12:0/0/script    13:0/0 '   13:0/0/physics_layer_0/linear_velocity (   13:0/0/physics_layer_0/angular_velocity (   13:0/0/physics_layer_0/polygon_0/points    13:0/0/script    14:0/0 '   14:0/0/physics_layer_0/linear_velocity (   14:0/0/physics_layer_0/angular_velocity (   14:0/0/physics_layer_0/polygon_0/points    14:0/0/script    15:0/0 '   15:0/0/physics_layer_0/linear_velocity (   15:0/0/physics_layer_0/angular_velocity (   15:0/0/physics_layer_0/polygon_0/points    15:0/0/script    17:0/0 '   17:0/0/physics_layer_0/linear_velocity (   17:0/0/physics_layer_0/angular_velocity    17:0/0/script    18:0/0 '   18:0/0/physics_layer_0/linear_velocity (   18:0/0/physics_layer_0/angular_velocity    18:0/0/script    19:0/0 '   19:0/0/physics_layer_0/linear_velocity (   19:0/0/physics_layer_0/angular_velocity    19:0/0/script    0:1/0 &   0:1/0/physics_layer_0/linear_velocity '   0:1/0/physics_layer_0/angular_velocity    0:1/0/script    1:1/0 &   1:1/0/physics_layer_0/linear_velocity '   1:1/0/physics_layer_0/angular_velocity    1:1/0/script    2:1/0 &   2:1/0/physics_layer_0/linear_velocity '   2:1/0/physics_layer_0/angular_velocity    2:1/0/script    3:1/0 &   3:1/0/physics_layer_0/linear_velocity '   3:1/0/physics_layer_0/angular_velocity    3:1/0/script    4:1/0 &   4:1/0/physics_layer_0/linear_velocity '   4:1/0/physics_layer_0/angular_velocity    4:1/0/script    6:1/0 &   6:1/0/physics_layer_0/linear_velocity '   6:1/0/physics_layer_0/angular_velocity '   6:1/0/physics_layer_0/polygon_0/points    6:1/0/script    7:1/0 &   7:1/0/physics_layer_0/linear_velocity '   7:1/0/physics_layer_0/angular_velocity '   7:1/0/physics_layer_0/polygon_0/points    7:1/0/script    8:1/0 &   8:1/0/physics_layer_0/linear_velocity '   8:1/0/physics_layer_0/angular_velocity '   8:1/0/physics_layer_0/polygon_0/points    8:1/0/script    9:1/0 &   9:1/0/physics_layer_0/linear_velocity '   9:1/0/physics_layer_0/angular_velocity    9:1/0/script    10:1/0 '   10:1/0/physics_layer_0/linear_velocity (   10:1/0/physics_layer_0/angular_velocity    10:1/0/script    12:1/0 '   12:1/0/physics_layer_0/linear_velocity (   12:1/0/physics_layer_0/angular_velocity (   12:1/0/physics_layer_0/polygon_0/points    12:1/0/script    13:1/0 '   13:1/0/physics_layer_0/linear_velocity (   13:1/0/physics_layer_0/angular_velocity (   13:1/0/physics_layer_0/polygon_0/points    13:1/0/script    14:1/0 '   14:1/0/physics_layer_0/linear_velocity (   14:1/0/physics_layer_0/angular_velocity (   14:1/0/physics_layer_0/polygon_0/points    14:1/0/script    15:1/0 '   15:1/0/physics_layer_0/linear_velocity (   15:1/0/physics_layer_0/angular_velocity (   15:1/0/physics_layer_0/polygon_0/points    15:1/0/script    17:1/0 '   17:1/0/physics_layer_0/linear_velocity (   17:1/0/physics_layer_0/angular_velocity (   17:1/0/physics_layer_0/polygon_0/points    17:1/0/script    18:1/0 '   18:1/0/physics_layer_0/linear_velocity (   18:1/0/physics_layer_0/angular_velocity (   18:1/0/physics_layer_0/polygon_0/points    18:1/0/script    19:1/0 '   19:1/0/physics_layer_0/linear_velocity (   19:1/0/physics_layer_0/angular_velocity (   19:1/0/physics_layer_0/polygon_0/points    19:1/0/script    0:2/0 &   0:2/0/physics_layer_0/linear_velocity '   0:2/0/physics_layer_0/angular_velocity    0:2/0/script    1:2/0 &   1:2/0/physics_layer_0/linear_velocity '   1:2/0/physics_layer_0/angular_velocity    1:2/0/script    2:2/0 &   2:2/0/physics_layer_0/linear_velocity '   2:2/0/physics_layer_0/angular_velocity    2:2/0/script    6:2/0 &   6:2/0/physics_layer_0/linear_velocity '   6:2/0/physics_layer_0/angular_velocity '   6:2/0/physics_layer_0/polygon_0/points    6:2/0/script    7:2/0 &   7:2/0/physics_layer_0/linear_velocity '   7:2/0/physics_layer_0/angular_velocity '   7:2/0/physics_layer_0/polygon_0/points    7:2/0/script    8:2/0 &   8:2/0/physics_layer_0/linear_velocity '   8:2/0/physics_layer_0/angular_velocity '   8:2/0/physics_layer_0/polygon_0/points    8:2/0/script    13:2/0 '   13:2/0/physics_layer_0/linear_velocity (   13:2/0/physics_layer_0/angular_velocity (   13:2/0/physics_layer_0/polygon_0/points    13:2/0/script    14:2/0 '   14:2/0/physics_layer_0/linear_velocity (   14:2/0/physics_layer_0/angular_velocity (   14:2/0/physics_layer_0/polygon_0/points    14:2/0/script    15:2/0 '   15:2/0/physics_layer_0/linear_velocity (   15:2/0/physics_layer_0/angular_velocity (   15:2/0/physics_layer_0/polygon_0/points    15:2/0/script    17:2/0 '   17:2/0/physics_layer_0/linear_velocity (   17:2/0/physics_layer_0/angular_velocity    17:2/0/script    18:2/0 '   18:2/0/physics_layer_0/linear_velocity (   18:2/0/physics_layer_0/angular_velocity    18:2/0/script    19:2/0 '   19:2/0/physics_layer_0/linear_velocity (   19:2/0/physics_layer_0/angular_velocity    19:2/0/script    0:4/0 &   0:4/0/physics_layer_0/linear_velocity '   0:4/0/physics_layer_0/angular_velocity    0:4/0/script    1:4/0 &   1:4/0/physics_layer_0/linear_velocity '   1:4/0/physics_layer_0/angular_velocity    1:4/0/script    2:4/0 &   2:4/0/physics_layer_0/linear_velocity '   2:4/0/physics_layer_0/angular_velocity    2:4/0/script    3:4/0 &   3:4/0/physics_layer_0/linear_velocity '   3:4/0/physics_layer_0/angular_velocity    3:4/0/script    4:4/0 &   4:4/0/physics_layer_0/linear_velocity '   4:4/0/physics_layer_0/angular_velocity    4:4/0/script    6:4/0 &   6:4/0/physics_layer_0/linear_velocity '   6:4/0/physics_layer_0/angular_velocity    6:4/0/script    7:4/0 &   7:4/0/physics_layer_0/linear_velocity '   7:4/0/physics_layer_0/angular_velocity    7:4/0/script    8:4/0 &   8:4/0/physics_layer_0/linear_velocity '   8:4/0/physics_layer_0/angular_velocity    8:4/0/script    9:4/0 &   9:4/0/physics_layer_0/linear_velocity '   9:4/0/physics_layer_0/angular_velocity    9:4/0/script    10:4/0 '   10:4/0/physics_layer_0/linear_velocity (   10:4/0/physics_layer_0/angular_velocity    10:4/0/script    12:4/0 '   12:4/0/physics_layer_0/linear_velocity (   12:4/0/physics_layer_0/angular_velocity    12:4/0/script    13:4/0 '   13:4/0/physics_layer_0/linear_velocity (   13:4/0/physics_layer_0/angular_velocity    13:4/0/script    14:4/0 '   14:4/0/physics_layer_0/linear_velocity (   14:4/0/physics_layer_0/angular_velocity    14:4/0/script    15:4/0 '   15:4/0/physics_layer_0/linear_velocity (   15:4/0/physics_layer_0/angular_velocity    15:4/0/script    17:4/0 '   17:4/0/physics_layer_0/linear_velocity (   17:4/0/physics_layer_0/angular_velocity (   17:4/0/physics_layer_0/polygon_0/points    17:4/0/script    18:4/0 '   18:4/0/physics_layer_0/linear_velocity (   18:4/0/physics_layer_0/angular_velocity (   18:4/0/physics_layer_0/polygon_0/points    18:4/0/script    19:4/0 '   19:4/0/physics_layer_0/linear_velocity (   19:4/0/physics_layer_0/angular_velocity (   19:4/0/physics_layer_0/polygon_0/points    19:4/0/script    20:4/0 '   20:4/0/physics_layer_0/linear_velocity (   20:4/0/physics_layer_0/angular_velocity (   20:4/0/physics_layer_0/polygon_0/points    20:4/0/script    21:4/0 '   21:4/0/physics_layer_0/linear_velocity (   21:4/0/physics_layer_0/angular_velocity (   21:4/0/physics_layer_0/polygon_0/points    21:4/0/script    0:5/0 &   0:5/0/physics_layer_0/linear_velocity '   0:5/0/physics_layer_0/angular_velocity    0:5/0/script    1:5/0 &   1:5/0/physics_layer_0/linear_velocity '   1:5/0/physics_layer_0/angular_velocity    1:5/0/script    2:5/0 &   2:5/0/physics_layer_0/linear_velocity '   2:5/0/physics_layer_0/angular_velocity    2:5/0/script    3:5/0 &   3:5/0/physics_layer_0/linear_velocity '   3:5/0/physics_layer_0/angular_velocity    3:5/0/script    4:5/0 &   4:5/0/physics_layer_0/linear_velocity '   4:5/0/physics_layer_0/angular_velocity    4:5/0/script    6:5/0 &   6:5/0/physics_layer_0/linear_velocity '   6:5/0/physics_layer_0/angular_velocity    6:5/0/script    7:5/0 &   7:5/0/physics_layer_0/linear_velocity '   7:5/0/physics_layer_0/angular_velocity    7:5/0/script    8:5/0 &   8:5/0/physics_layer_0/linear_velocity '   8:5/0/physics_layer_0/angular_velocity    8:5/0/script    9:5/0 &   9:5/0/physics_layer_0/linear_velocity '   9:5/0/physics_layer_0/angular_velocity    9:5/0/script    10:5/0 '   10:5/0/physics_layer_0/linear_velocity (   10:5/0/physics_layer_0/angular_velocity    10:5/0/script    12:5/0 '   12:5/0/physics_layer_0/linear_velocity (   12:5/0/physics_layer_0/angular_velocity    12:5/0/script    13:5/0 '   13:5/0/physics_layer_0/linear_velocity (   13:5/0/physics_layer_0/angular_velocity    13:5/0/script    14:5/0 '   14:5/0/physics_layer_0/linear_velocity (   14:5/0/physics_layer_0/angular_velocity    14:5/0/script    15:5/0 '   15:5/0/physics_layer_0/linear_velocity (   15:5/0/physics_layer_0/angular_velocity    15:5/0/script    17:5/0 '   17:5/0/physics_layer_0/linear_velocity (   17:5/0/physics_layer_0/angular_velocity (   17:5/0/physics_layer_0/polygon_0/points    17:5/0/script    18:5/0 '   18:5/0/physics_layer_0/linear_velocity (   18:5/0/physics_layer_0/angular_velocity (   18:5/0/physics_layer_0/polygon_0/points    18:5/0/script    19:5/0 '   19:5/0/physics_layer_0/linear_velocity (   19:5/0/physics_layer_0/angular_velocity (   19:5/0/physics_layer_0/polygon_0/points    19:5/0/script    20:5/0 '   20:5/0/physics_layer_0/linear_velocity (   20:5/0/physics_layer_0/angular_velocity (   20:5/0/physics_layer_0/polygon_0/points    20:5/0/script    21:5/0 '   21:5/0/physics_layer_0/linear_velocity (   21:5/0/physics_layer_0/angular_velocity (   21:5/0/physics_layer_0/polygon_0/points    21:5/0/script    0:6/0 &   0:6/0/physics_layer_0/linear_velocity '   0:6/0/physics_layer_0/angular_velocity    0:6/0/script    1:6/0 &   1:6/0/physics_layer_0/linear_velocity '   1:6/0/physics_layer_0/angular_velocity    1:6/0/script    2:6/0 &   2:6/0/physics_layer_0/linear_velocity '   2:6/0/physics_layer_0/angular_velocity    2:6/0/script    6:6/0 &   6:6/0/physics_layer_0/linear_velocity '   6:6/0/physics_layer_0/angular_velocity    6:6/0/script    7:6/0 &   7:6/0/physics_layer_0/linear_velocity '   7:6/0/physics_layer_0/angular_velocity    7:6/0/script    8:6/0 &   8:6/0/physics_layer_0/linear_velocity '   8:6/0/physics_layer_0/angular_velocity    8:6/0/script    13:6/0 '   13:6/0/physics_layer_0/linear_velocity (   13:6/0/physics_layer_0/angular_velocity    13:6/0/script    14:6/0 '   14:6/0/physics_layer_0/linear_velocity (   14:6/0/physics_layer_0/angular_velocity    14:6/0/script    15:6/0 '   15:6/0/physics_layer_0/linear_velocity (   15:6/0/physics_layer_0/angular_velocity    15:6/0/script    17:6/0 '   17:6/0/physics_layer_0/linear_velocity (   17:6/0/physics_layer_0/angular_velocity (   17:6/0/physics_layer_0/polygon_0/points    17:6/0/script    18:6/0 '   18:6/0/physics_layer_0/linear_velocity (   18:6/0/physics_layer_0/angular_velocity (   18:6/0/physics_layer_0/polygon_0/points    18:6/0/script    19:6/0 '   19:6/0/physics_layer_0/linear_velocity (   19:6/0/physics_layer_0/angular_velocity (   19:6/0/physics_layer_0/polygon_0/points    19:6/0/script    0:8/0 &   0:8/0/physics_layer_0/linear_velocity '   0:8/0/physics_layer_0/angular_velocity    0:8/0/script    1:8/0 &   1:8/0/physics_layer_0/linear_velocity '   1:8/0/physics_layer_0/angular_velocity    1:8/0/script    2:8/0 &   2:8/0/physics_layer_0/linear_velocity '   2:8/0/physics_layer_0/angular_velocity    2:8/0/script    3:8/0 &   3:8/0/physics_layer_0/linear_velocity '   3:8/0/physics_layer_0/angular_velocity    3:8/0/script    4:8/0 &   4:8/0/physics_layer_0/linear_velocity '   4:8/0/physics_layer_0/angular_velocity    4:8/0/script    6:8/0 &   6:8/0/physics_layer_0/linear_velocity '   6:8/0/physics_layer_0/angular_velocity    6:8/0/script    7:8/0 &   7:8/0/physics_layer_0/linear_velocity '   7:8/0/physics_layer_0/angular_velocity    7:8/0/script    8:8/0 &   8:8/0/physics_layer_0/linear_velocity '   8:8/0/physics_layer_0/angular_velocity    8:8/0/script    9:8/0 &   9:8/0/physics_layer_0/linear_velocity '   9:8/0/physics_layer_0/angular_velocity    9:8/0/script    10:8/0 '   10:8/0/physics_layer_0/linear_velocity (   10:8/0/physics_layer_0/angular_velocity    10:8/0/script    12:8/0 '   12:8/0/physics_layer_0/linear_velocity (   12:8/0/physics_layer_0/angular_velocity    12:8/0/script    13:8/0 '   13:8/0/physics_layer_0/linear_velocity (   13:8/0/physics_layer_0/angular_velocity    13:8/0/script    14:8/0 '   14:8/0/physics_layer_0/linear_velocity (   14:8/0/physics_layer_0/angular_velocity    14:8/0/script    15:8/0 '   15:8/0/physics_layer_0/linear_velocity (   15:8/0/physics_layer_0/angular_velocity    15:8/0/script    17:8/0 '   17:8/0/physics_layer_0/linear_velocity (   17:8/0/physics_layer_0/angular_velocity    17:8/0/script    18:8/0 '   18:8/0/physics_layer_0/linear_velocity (   18:8/0/physics_layer_0/angular_velocity    18:8/0/script    19:8/0 '   19:8/0/physics_layer_0/linear_velocity (   19:8/0/physics_layer_0/angular_velocity    19:8/0/script    20:8/0 '   20:8/0/physics_layer_0/linear_velocity (   20:8/0/physics_layer_0/angular_velocity    20:8/0/script    0:9/0 &   0:9/0/physics_layer_0/linear_velocity '   0:9/0/physics_layer_0/angular_velocity    0:9/0/script    1:9/0 &   1:9/0/physics_layer_0/linear_velocity '   1:9/0/physics_layer_0/angular_velocity    1:9/0/script    2:9/0 &   2:9/0/physics_layer_0/linear_velocity '   2:9/0/physics_layer_0/angular_velocity    2:9/0/script    3:9/0 &   3:9/0/physics_layer_0/linear_velocity '   3:9/0/physics_layer_0/angular_velocity    3:9/0/script    4:9/0 &   4:9/0/physics_layer_0/linear_velocity '   4:9/0/physics_layer_0/angular_velocity    4:9/0/script    6:9/0 &   6:9/0/physics_layer_0/linear_velocity '   6:9/0/physics_layer_0/angular_velocity    6:9/0/script    7:9/0 &   7:9/0/physics_layer_0/linear_velocity '   7:9/0/physics_layer_0/angular_velocity    7:9/0/script    8:9/0 &   8:9/0/physics_layer_0/linear_velocity '   8:9/0/physics_layer_0/angular_velocity    8:9/0/script    9:9/0 &   9:9/0/physics_layer_0/linear_velocity '   9:9/0/physics_layer_0/angular_velocity    9:9/0/script    10:9/0 '   10:9/0/physics_layer_0/linear_velocity (   10:9/0/physics_layer_0/angular_velocity    10:9/0/script    12:9/0 '   12:9/0/physics_layer_0/linear_velocity (   12:9/0/physics_layer_0/angular_velocity    12:9/0/script    13:9/0 '   13:9/0/physics_layer_0/linear_velocity (   13:9/0/physics_layer_0/angular_velocity    13:9/0/script    14:9/0 '   14:9/0/physics_layer_0/linear_velocity (   14:9/0/physics_layer_0/angular_velocity    14:9/0/script    15:9/0 '   15:9/0/physics_layer_0/linear_velocity (   15:9/0/physics_layer_0/angular_velocity    15:9/0/script    17:9/0 '   17:9/0/physics_layer_0/linear_velocity (   17:9/0/physics_layer_0/angular_velocity    17:9/0/script    18:9/0 '   18:9/0/physics_layer_0/linear_velocity (   18:9/0/physics_layer_0/angular_velocity    18:9/0/script    19:9/0 '   19:9/0/physics_layer_0/linear_velocity (   19:9/0/physics_layer_0/angular_velocity    19:9/0/script    20:9/0 '   20:9/0/physics_layer_0/linear_velocity (   20:9/0/physics_layer_0/angular_velocity    20:9/0/script    0:10/0 '   0:10/0/physics_layer_0/linear_velocity (   0:10/0/physics_layer_0/angular_velocity    0:10/0/script    1:10/0 '   1:10/0/physics_layer_0/linear_velocity (   1:10/0/physics_layer_0/angular_velocity    1:10/0/script    2:10/0 '   2:10/0/physics_layer_0/linear_velocity (   2:10/0/physics_layer_0/angular_velocity    2:10/0/script    6:10/0 '   6:10/0/physics_layer_0/linear_velocity (   6:10/0/physics_layer_0/angular_velocity    6:10/0/script    7:10/0 '   7:10/0/physics_layer_0/linear_velocity (   7:10/0/physics_layer_0/angular_velocity    7:10/0/script    8:10/0 '   8:10/0/physics_layer_0/linear_velocity (   8:10/0/physics_layer_0/angular_velocity    8:10/0/script    13:10/0 (   13:10/0/physics_layer_0/linear_velocity )   13:10/0/physics_layer_0/angular_velocity    13:10/0/script    14:10/0 (   14:10/0/physics_layer_0/linear_velocity )   14:10/0/physics_layer_0/angular_velocity    14:10/0/script    15:10/0 (   15:10/0/physics_layer_0/linear_velocity )   15:10/0/physics_layer_0/angular_velocity    15:10/0/script    18:10/0 (   18:10/0/physics_layer_0/linear_velocity )   18:10/0/physics_layer_0/angular_velocity    18:10/0/script    19:10/0 (   19:10/0/physics_layer_0/linear_velocity )   19:10/0/physics_layer_0/angular_velocity    19:10/0/script    20:10/0 (   20:10/0/physics_layer_0/linear_velocity )   20:10/0/physics_layer_0/angular_velocity    20:10/0/script    script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled    
   Texture2D    res://Green.png �2a4Fz7
   Texture2D    res://Terrain (16x16).png �ť���Y   PackedScene !   res://Scenes/main_character.tscn s�C@���8   !   local://TileSetAtlasSource_u22uc {I         local://TileSet_r7xda �j         local://PackedScene_qj1jf k         TileSetAtlasSource f                           
           	          
                   
                                        
                                        
                                        
                                        
                        %         �   �   A   �   A   A   �   A                 !   
           "          #   %         �   �   A   �   A   A   �   A$      %          &   
           '          (   %         �   �   A   �   A   A   �   A)      *          +   
           ,          -      .          /   
           0          1      2          3   
           4          5   %         �   �   A   �   A   A   �   A6      7          8   
           9          :   %         �   �   A   �   A   A   �   A;      <          =   
           >          ?   %         �   �   A   �   A   A   �   A@      A          B   
           C          D   %         �   �   A   �   A   A   �   AE      F          G   
           H          I      J          K   
           L          M      N          O   
           P          Q      R          S   
           T          U      V          W   
           X          Y      Z          [   
           \          ]      ^          _   
           `          a      b          c   
           d          e      f          g   
           h          i   %         �   �   A   �   A   A   �   Aj      k          l   
           m          n   %         �   �   A   �   A   A   �   Ao      p          q   
           r          s   %         �   �   A   �   A   A   �   At      u          v   
           w          x      y          z   
           {          |      }          ~   
                     �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �   %         �   �   A   �   A   A   �   A�      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
                                     
                                    
                    	     
           
                                    
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                       %         �   �   A   �   A   A   �   A!     "         #  
           $         %  %         �   �   A   �   A   A   �   A&     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b  %         �   �   A   �   A   A   �   Ac     d         e  
           f         g  %         �   �   A   �   A   A   �   Ah     i         j  
           k         l  %         �   �   A   �   A   A   �   Am     n         o  
           p         q  %         �   �   A   �   A   A   �   Ar     s         t  
           u         v  %         �   �   A   �   A   A   �   Aw     x         y  
           z         {     |         }  
           ~              �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k        TileSet    q        r            k        PackedScene    v     	         names "         Node    TextureRect    texture_filter    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    texture    stretch_mode    TileMap    scale 	   tile_set    format    layer_0/tile_data    CharacterBody2D 	   position    	   variants    
                    �?                
     @@  @@             �                                                                                    	         
                                                                                                                                                         
        
                                                                                                                                 
        
        
        	         	         	                                          	         	        
         
                                                                                     
                          
                        
                                           	                        	                        	                                                                                  ��                 ��       ��       ��
       ��	       ��       ��       ��       ��       ��       ��       ��       ��       ��        ����         ��        ��        ��        ��        ��        ��        ��        ��        ��       	 ��       
 ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��        ��                                                                                         	        
                                
     $B ��C      node_count             nodes     8   ��������        ����                      ����                                              	                   
   
   ����                                              ���            	             conn_count              conns               node_paths              editable_instances              version       k     RSRC GST2   �         ����               �         �  RIFF�  WEBPVP8L�  /�_� �&�TB&��1Cm���t��~2�\���$�P�I8]/�]0���- ��� ����=����2�:9�m�m�*���|z"#v䪞CWQ�@�=HyG�=6�Ga����}RC��m�������w(��\�[�]�x;@�=N��c<�_��Q�.���UD�#2yL����e���[������n6�c׻�ޗ�)�3x�@���ӧy7����ع{���W�x����>��}�X��;H�u�Ax8��]FU/�{XvH�q��;��c����{��R{<��zP�/��|��w�=�|t��nn�~>�Z���wY�����׿7�_�C��aI�Z,�~�<m��^tY�ݭ�g�@;07��:�]֎��l`	e{L����]Ɲ62s��w���x��{L����]x���q�y�ߍ�y-��w�=&�r�c�.��1j��aۻU>s��ô�a�˴�������M�ᵸ�zH���b����14���$.���or&��B�lj�h�.���(6�C�<]������ٷ��gm��;'DB�Q|W�Cr�٥!U����a�ydW�[�-`�k��x癚QĤ��zW��~W���X�䰇e��]��Y�NG4��,fU��2x��rMZR����<�KQ��.���<��I�;�<��.Ԏƴ��.� ���gm��;��L��.�òK!�?��{���v1�]Zg4D��Yhmn����8�<4�;��Hj�[��a����Ԕ�3�ز=6���j|��cQ��\J�eLQ`�����
G��(�<��B+��ŰG!���+2��1��<�KRQ���I�g���,�;�g{�!ߕT\Q�Clxg�A�.�!��4���Ps͆�����x�Y� D&����"�Ѱ�0�/)���1fx�(����42c���@^��x<EA.z�   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cypbjjj7dvril"
path="res://.godot/imported/Run (32x32).png-448439aeb8095dde0c51c1fbc2bea5a9.ctex"
metadata={
"vram_texture": false
}
         GST2   `  �      ����               `�        "  RIFF  WEBPVP8L  /_�+��ƶm������:	C��
J�$��L�ml�Ju ��I��s���
�bw��Ķm%���/2� 3)����n�"�G ����s��RK(t�߆�����6�{Q�t� �q��� ��N �����Qw�vG� ֻ�
@����/O��21W�Q!�L\RH<W�3z�xn�@5�ғ��_-��������64@�.f�֚O`��6�my	N���
���L��D� Z�i3�>t��I�ö��!+]H��lN�����n��u�T>Wߓ�9N܏��&�]��N���5���_)#"�>���Z j>��7]�����ᛮ,`���wݛ7�x��������g�
�X�6Rl bR|X�y���PF�S�$�Z<h�s�˔�#% �2��H�QH�+�0Q�R*	�hl2Si��9����DG1���<�C
Nb>T�,?�@߃m�����
ϣ���ǹ�S��Ň��Ȥ����t�(/��׼
�}0�|*>�C�4��h1.xb\���a�������+q�*��d�/ �F#D.D����-���?�M(�T��|c�]%���y�Fò�Vyş�b��p�$;C��qt��_�ʙ|>�C�Z�9�\����(%��t���B%��aAx��|v2����3�|�J
���)�����t�g#���|h�Hs�$ZS�)Y�Y@ES��!���(�����A�?;|��� �W�>��ueo�9 \,�Bsk���?��0���p���B�p�jz^����br֝#�`�0����\����H|P�w?0�� �7Wi)��	�ذ��s��6�7W���:;�Q�4E�Abi�戉��և��(`%JO�ġ2�C"i�f��|�!{l}��A�#;|HS2zC|:H9mJ�L1s��L����B�8�찀���7c4[�����*;�ԕ�)��vњ-F�}���ԕ��m�E�^Oe����,�ĘG�qZ�z)���ތZW�^rL|x7C��T��C��I�Y<l��R�@`�Y#��Ww�F�Ф�rL�
ue���{���e��0�C�ݘ^�u�*��m�©��x4������Ϥ��ӝ�98|v��Ձeг@J�G���~<����=��@��p=7&��� z�|ϵQ����0�7�������`���sUA�jzxP�C�(��98Y��۫�v?r�h�A�|�(��u�TM��Nԏl��#�c�;��1fh�� �a����ו��5|>*A~6����IɗHmű��Qcd*Na�E��`A�5��*�v&�1���>&�=��]5��=�ap�"�h�iix&\*�>&��H%l��>�LI���B�W#L{����j�sN�S��i�s��9���������~��T��?B$<�4��9���̓�����9�`��[:��'�rY�I�}`�(��л�^/C�A`�8�j������h������B��¤�@HEL�R��j�z�%^g�H	2�D���Y
cl�GŇ��z�|>�b�,?�^mV�<*&
4{v�� m4��(������&�%�XH�$�����g��JlX@�׋���q�3e|x@	���� x�,#�n�T����i��������n��'��@/������c% ܇�4�`�Y��=}�;��������/�Z��'SeE(�Pϧ�v��ҍ�'֑�O�F+�����d<���k���Y�]=XI�e��S���l�W�L_e$���!e�8dMJ��ar����NO���4�4z����\�2p�B,�$(>[4����|@�0Q����@����K&z��]��=�p@�f#a2��!�r���H�]�(@�  >�d��y#ۃ���<HF�D��^e��T�0�a5��<���A�YF�C5Q!���D�a���'$��#I�����s���K�ݛD?�}��(14D��h52�z@,���COD2n�#/5_��=�Vw��幦�� _��%�t�ו�u���=�u��"�S���S ���gi?�󑄺sa%T�|ug���;�q���gl������s`��܇�c<�^Wv՝�A;M_`|�׋���C������pD �'@��:$�h��|?�9�@ᑚ�@:}ԝk��I^���,�|P��%VJ'���T�b]�
�W͎�&��|2	�T�U�p��S�i�E������g����fv�@,�L���y�o���۩	{\�{�}Z��>'����x}���2��=�����G5B..���dóE�����D,�6B��^��s�u�Rw�{`�<�ԝ�I���4��/�ẜܪ�n)�� �:��C4�����WQ�� �o�ap10N3 }�qOX�Ω�)!x�JCv��5�?�L�tpj����5'�1[�]N~R|�▥s]�_/��K5�D�	�o�
)C���#�Q��<��ۉ���R�W4��`eH8�WU�����[~l�"�VP�j�y>�:E���B�p{A��u��%�ӧ&p)���"���X`��Yi�NQ|U��{
�Ms�="�?�^1������|ג�b�ګ��ph~��٬���gE>WA ��o;@2� 5ƳCɇ����G8Y�q��¨PWj�g�
��I@/��W�!T���B՗�X}��}w���ϩP�w �pSE����9��^���	�7NM��s�Ǐ�	����`�c�Q{9��
�9�`���/��,݇N��I���a��*l��݇�=���}�e/C�5�,�;�w�����B��;b����MǛ�MY�����Ta{��L/���}Y=��5��{���w{��}��g�67$�Ql�pwoL���C=���i��!(��w�|v]�a7E�Z k4ʡ�!�����x�(G��x�q�E��:f�������CI��ng$����	��#�3��u�Z�&��p-�ׁlU�2��V�w��\>��"��Vh�6��q,@@�#��� �g�3��L�{���A`ex8��P��h�W ���{�6[⣰%���S�Ch�4\����EC� �w�����w>�L��(�Ixaw�Q�:er�/
 ��
a+��*>2A�5bGdPH4����>��p].;Y������h��&��
��&י!1�z7�l���a'�E��@�����6d��x$t{/���jl��:�]@/�5��1��w�����4x�)��\#>�yyZ��1��~pi�{Y���M�:���g./�>��c��h�D@}��V�:4��b@��?<>(�*">�6�0#7�Nz>}>z�Dxw/�=z��z]�Yw9�PW���m�d#!l�aS����A�{�V)��D��f�)b��*>��E�cX#����&�7:�[R'�sI�4�[:�y�����EX��%֘����<#��ᲁ!�Q�3�z]������<�7�YDw覯��^WV��uZ;LE(+�OӇ�u�� ��J���RP�0�ؾ[5#�E�v�J,�yj��,��D����Ғ)��O����W49l�4�\��~G�I���} �O�BkW4y�C�=�P�u�v�JGJ5��}����(M�s��JT4�����wGA��턚��d������|��3��n���V��42�{NGi��<% �q �$��6�Ls�M�~� 9Ǚ-����z]�����}��vN��eBS�:�0�/�����V����F��H��`R]�����-�{��y[{�B��f��	�-W���4�Ot:�#4��n�M��?���!{{���q-j�\�������w, �`�^��"fy`A�3�!T����F���7�3op�}��!C�ԙR����5�$�W���"�8ym�W-�p�}sh��=8bt���&�ϻ@V�)甆0�&���|ؚ��g�/6��s�\a	1l��{{�7AT}��
�V�1D�0�䖳�M�ATx��c*>�8�q<P�j�x������3-Pg8B��Lq��3���x���G�pI�n�����b�U�y��W�C13F��6j�*U���K���z��x�"���������}X�V�?W��=6�9.        [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cyjcl5k6b33i5"
path="res://.godot/imported/Terrain (16x16).png-f072e8a5f99e915c05031c83401c87a9.ctex"
metadata={
"vram_texture": false
}
     [remap]

path="res://.godot/exported/133200997/export-48539379cb23704926feff6a31c23c83-main_character.scn"
     [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              s�C@���8    res://Scenes/main_character.tscn�2a4Fz7   res://Green.png��e�T�|   res://icon.svg6rl�y   res://Idle (32x32).png\ b(�9   res://Jump (32x32).pngk��Ի��b   res://main.tscn��v�{|Z   res://Run (32x32).png�ť���Y   res://Terrain (16x16).png      ECFG	      application/config/name         2d Platformer Game     application/run/main_scene         res://main.tscn    application/config/features   "         4.2    Mobile     application/config/icon         res://icon.svg  
   input/left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script      
   input/jump0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script         physics/2d/default_gravity       @E#   rendering/renderer/rendering_method         mobile   