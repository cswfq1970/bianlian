Þ          ¤      ,        +    E   µ    û  ¾   ý  7   ¼  i   ô    ^  À  c  o  $  ¾        S  ³  Ù  =        Ë     Ð     ×    ß  |  þ  _   {    Û  &  ì  Y        m  N  î  Ï  =  ±     ß   ¿"  ´   #     T$  `   u&  	   Ö&     à&     ç&                  	               
                                             Apply gaussian blur to the mask output. Has the effect of smoothing the edges of the mask giving less of a hard edge. the size is in pixels. This value should be odd, if an even number is passed in then it will be rounded to the next odd number. NB: Only effects the output preview. Set to 0 for off Directory containing extracted faces, source frames, or a video file. Full path to the alignments file to add the mask to if not at the default location. NB: If the input-type is faces and you wish to update the corresponding alignments file, then you must provide a value here as the location cannot be automatically detected. Helps reduce 'blotchiness' on some masks by making light shades white and dark shades black. Higher values will impact more of the mask. NB: Only effects the output preview. Set to 0 for off Mask tool
Generate masks for existing alignments files. Optional output location. If provided, a preview of the masks created will be output in the given folder. R|How to format the output when processing is set to 'output'.
L|combined: The image contains the face/frame, face mask and masked face.
L|masked: Output the face/frame as rgba image with the face masked.
L|mask: Only output the mask as a single channel image. R|Masker to use.
L|bisenet-fp: Relatively lightweight NN based mask that provides more refined control over the area to be masked including full head masking (configurable in mask settings).
L|components: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks to create a mask.
L|custom: A dummy mask that fills the mask area with all 1s or 0s (configurable in settings). This is only required if you intend to manually edit the custom masks yourself in the manual tool. This mask does not use the GPU.
L|extended: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks and the mask is extended upwards onto the forehead.
L|vgg-clear: Mask designed to provide smart segmentation of mostly frontal faces clear of obstructions. Profile faces and obstructions may result in sub-par performance.
L|vgg-obstructed: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been specifically trained to recognize some facial obstructions (hands and eyeglasses). Profile faces may result in sub-par performance.
L|unet-dfl: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been trained by community members and will need testing for further description. Profile faces may result in sub-par performance. R|Run the mask tool on multiple sources. If selected then the other options should be set as follows:
L|input: A parent folder containing either all of the video files to be processed, or containing sub-folders of frames/faces.
L|output-folder: If provided, then sub-folders will be created within the given location to hold the previews for each input.
L|alignments: Alignments field will be ignored for batch processing. The alignments files must exist at the default location (for frames). For batch processing of masks with 'faces' as the input type, then only the PNG header within the extracted faces will be updated. R|Whether the `input` is a folder of faces or a folder frames/video
L|faces: The input is a folder containing extracted faces.
L|frames: The input is a folder containing frames or is a video R|Whether to output the whole frame or only the face box when using output processing. Only has an effect when using frames as input. R|Whether to update all masks in the alignments files, only those faces that do not already have a mask of the given `mask type` or just to output the masks to the `output` location.
L|all: Update the mask for all faces in the alignments file.
L|missing: Create a mask for all faces in the alignments file where a mask does not previously exist.
L|output: Don't update the masks, just output them for review in the given output folder. This command lets you generate masks for existing alignments. data output process Project-Id-Version: 
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-02-20 23:44+0000
Last-Translator: 
Language-Team: 
Language: ko_KR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
 ë§ì¤í¬ ì¶ë ¥ì gaussian blurë¥¼ ì ì©í©ëë¤. ë§ì¤í¬ì ê°ì¥ìë¦¬ë¥¼ ë§¤ëë½ê² íì¬ ë¨ë¨í ê°ì¥ìë¦¬ë¥¼ ë ì ê³µíë í¨ê³¼ê° ììµëë¤. í¬ê¸°ë í½ì ë¨ììëë¤. ì´ ê°ì íìì¬ì¼ íë©° ì§ìê° ì ë¬ëë©´ ë¤ì íìë¡ ë°ì¬ë¦¼ë©ëë¤. NB: ì¶ë ¥ ë¯¸ë¦¬ ë³´ê¸°ìë§ ìí¥ì ì¤ëë¤. 0ì¼ë¡ ì¤ì íë©´ êº¼ì§ëë¤ ì¶ì¶ë ì¼êµ´ë¤, ìë³¸ íë ìë¤, ëë ë¹ëì¤ íì¼ì´ ì¡´ì¬íë ëë í ë¦¬. ê¸°ë³¸ ìì¹ê° ìë ê²½ì° ë§ì¤í¬ë¥¼ ì¶ê°í  ì ë ¬ íì¼ì ì ì²´ ê²½ë¡ìëë¤. NB: ìë ¥ ì íì´ ì¼êµ´ì´ê³  í´ë¹ ì ë ¬ íì¼ì ìë°ì´í¸íë ¤ë ê²½ì° ìì¹ë¥¼ ìëì¼ë¡ ê°ì§í  ì ìì¼ë¯ë¡ ì¬ê¸°ì ê°ì ì ê³µí´ì¼ í©ëë¤. ë°ì ìì¡°ë¥¼ í°ìì¼ë¡, ì´ëì´ ìì¡°ë¥¼ ê²ììì¼ë¡ ë§ë¤ì´ ì¼ë¶ ë§ì¤í¬ì 'íë¦¼'ì ì¤ì´ë ë° ëìì´ ë©ëë¤. ê°ì´ í´ìë¡ ë§ì¤í¬ì ë ë§ì ìí¥ì ë¯¸ì¹©ëë¤. NB: ì¶ë ¥ ë¯¸ë¦¬ ë³´ê¸°ìë§ ìí¥ì ì¤ëë¤. 0ì¼ë¡ ì¤ì íë©´ êº¼ì§ëë¤ ë§ì¤í¬ ëêµ¬
ì¡´ì¬íë alignments íì¼ë¤ë¡ë¶í° ë§ì¤í¬ë¥¼ ìì±í©ëë¤. ì íì  ì¶ë ¥ ìì¹. ë§ì½ ê°ì´ ì ê³µëë¤ë©´ ìì±ë ë§ì¤í¬ ë¯¸ë¦¬ ë³´ê¸°ê° ì£¼ì´ì§ í´ëì ì¶ë ¥ë©ëë¤. R|ì²ë¦¬ê° 'output'ì¼ë¡ ì¤ì ëì´ ìì ë ì¶ë ¥ì êµ¬ì±íë ë°©ë².
L|combined: ì´ë¯¸ì§ìë ì¼êµ´/íë ì, ì¼êµ´ ë§ì¤í¬ ë° ë§ì¤í¬ë ì¼êµ´ì´ í¬í¨ë©ëë¤.
L|masked: ë§ì¤í¬ë ì¼êµ´/íë ìì Rgba ì´ë¯¸ì§ë¡ ì¶ë ¥í©ëë¤.
L|mask: ë§ì¤í¬ë¥¼ ë¨ì¼ ì±ë ì´ë¯¸ì§ë¡ë§ ì¶ë ¥í©ëë¤. R|ì¬ì©í  ë§ì¤í¬.
L|bisnet-fp: ì ì²´ ì¼êµ´ ë§ì¤í¹(ë§ì¤í¬ ì¤ì ìì êµ¬ì± ê°ë¥)ì í¬í¨íì¬ ë§ì¤í¹í  ìì­ì ëí ë³´ë¤ ì êµí ì ì´ë¥¼ ì ê³µíë ë¹êµì  ê°ë²¼ì´ NN ê¸°ë° ë§ì¤í¬ìëë¤.
L|components: í¹ì§ì  ìì¹ë¥¼ ê¸°ë°ì¼ë¡ ì¼êµ´ ë¶í ì ì ê³µíëë¡ ì¤ê³ë ë§ì¤í¬ìëë¤. í¹ì§ì ì ì¸ë¶ìë ë§ì¤í¬ë¥¼ ë§ë¤ê¸° ìí´ convex hullì´ê° íì±ëì´ ììµëë¤.
L|custom: ë§ì¤í¬ ìì­ì ëª¨ë  1 ëë 0ì¼ë¡ ì±ì°ë ëë¯¸ ë§ì¤í¬ìëë¤(ì¤ì ìì êµ¬ì± ê°ë¥). ìë ëêµ¬ìì ì¬ì©ì ì ì ë§ì¤í¬ë¥¼ ì§ì  ìëì¼ë¡ í¸ì§íë ¤ë ê²½ì°ìë§ íìí©ëë¤. ì´ ë§ì¤í¬ë GPUë¥¼ ì¬ì©íì§ ììµëë¤.
L|extended: í¹ì§ì  ìì¹ë¥¼ ê¸°ë°ì¼ë¡ ì¼êµ´ ë¶í ì ì ê³µíëë¡ ì¤ê³ë ë§ì¤í¬ìëë¤. ì§íì§ë¬¼ì ì¸ë¶ìë convex hullì´ íì±ëì´ ìì¼ë©°, ë§ì¤í¬ë ì´ë§ ìë¡ ë»ì´ ììµëë¤.
L|vgg-clear: ëë¶ë¶ì ì ë©´ì ì¥ì ë¬¼ì´ ìë ì¤ë§í¸í ë¶í ì ì ê³µíëë¡ ì¤ê³ë ë§ì¤í¬ìëë¤. íë¡í ë©´ ë° ì¥ì ë¬¼ë¡ ì¸í´ ì±ë¥ì´ ì íë  ì ììµëë¤.
L|vgg-obstructed: ëë¶ë¶ì ì ë©´ ì¼êµ´ì ì¤ë§í¸íê² ë¶í í  ì ìëë¡ ì¤ê³ë ë§ì¤í¬ìëë¤. ë§ì¤í¬ ëª¨ë¸ì ì¼ë¶ ìë©´ ì¥ì ë¬¼(ìê³¼ ìê²½)ì ì¸ìíëë¡ í¹ë³í íë ¨ëììµëë¤. ì ì¼êµ´ì íê·  ì´íì ì±ë¥ì ì´ëí  ì ììµëë¤.
L|unet-dfl: ëë¶ë¶ ì ë©´ ì¼êµ´ì ì¤ë§í¸íê² ë¶í íëë¡ ì¤ê³ë ë§ì¤í¬. ë§ì¤í¬ ëª¨ë¸ì ì»¤ë®¤ëí° êµ¬ì±ìë¤ì ìí´ íë ¨ëìì¼ë©° ì¶ê° ì¤ëªì ìí´ íì¤í¸ê° íìí©ëë¤. ì ì¼êµ´ì íê·  ì´íì ì±ë¥ì ì´ëí  ì ììµëë¤. R|ì¬ë¬ ìì¤ìì ë§ì¤í¬ ëêµ¬ë¥¼ ì¤íí©ëë¤. ì íí ê²½ì° ë¤ë¥¸ ìµìì ë¤ìê³¼ ê°ì´ ì¤ì í´ì¼ í©ëë¤.
L|input: ì²ë¦¬í  ëª¨ë  ë¹ëì¤ íì¼ì í¬í¨íê±°ë íë ì/ì¼êµ´ì íì í´ëë¥¼ í¬í¨íë ìì í´ëìëë¤.
L|output-folder: ì ê³µë ê²½ì° ê° ìë ¥ì ëí ë¯¸ë¦¬ ë³´ê¸°ë¥¼ ë³´ê´íê¸° ìí´ ì§ì ë ìì¹ ë´ì íì í´ëê° ìì±ë©ëë¤.
L|alignments: ì¼ê´ ì²ë¦¬ììë ì ë ¬ íëê° ë¬´ìë©ëë¤. ì ë ¬ íì¼ì ê¸°ë³¸ ìì¹(íë ìì©)ì ìì´ì¼ í©ëë¤. ìë ¥ ì íì´ 'ì¼êµ´'ì¸ ë§ì¤í¬ë¥¼ ì¼ê´ ì²ë¦¬íë ê²½ì° ì¶ì¶ë ì¼êµ´ ë´ì PNG í¤ëë§ ìë°ì´í¸ë©ëë¤. R|'ìë ¥'ì´ ì¼êµ´ì í´ëì¸ì§ ìëë©´ í´ë íë ì/ë¹ëì¤ì¸ì§
L|faces: ìë ¥ì ì¶ì¶ë ì¼êµ´ì í¬í¨ë í´ëìëë¤.
L|frames: ìë ¥ì´ íë ìì í¬í¨ë í´ëì´ê±°ë ë¹ëì¤ìëë¤ R|ì¶ë ¥ ì²ë¦¬ë¥¼ ì¬ì©í  ë ì ì²´ íë ìì ì¶ë ¥í ì§ ëë íì´ì¤ ë°ì¤ë§ ì¶ë ¥í ì§ ì¬ë¶. íë ìì ìë ¥ì¼ë¡ ì¬ì©í  ëë§ í¨ê³¼ê° ììµëë¤. R|alignments íì¼ì ëª¨ë  ë§ì¤í¬ë¥¼ ìë°ì´í¸í ì§, ì§ì ë 'ë§ì¤í¬ ì í'ì ë§ì¤í¬ê° ìì§ ìë íì´ì¤ë§ ìë°ì´í¸í ì§, ìëë©´ ë¨ìí 'ì¶ë ¥' ìì¹ë¡ ë§ì¤í¬ë¥¼ ì¶ë ¥í ì§ ì¬ë¶.
L|all: alignments íì¼ì ëª¨ë  ì¼êµ´ì ëí ë§ì¤í¬ë¥¼ ìë°ì´í¸í©ëë¤.
L|missing: ë§ì¤í¬ê° ììë alignments íì¼ì ëª¨ë  ì¼êµ´ì ëí ë§ì¤í¬ë¥¼ ë§ë­ëë¤.
L|output: ë§ì¤í¬ë¥¼ ìë°ì´í¸íì§ ë§ê³  ì§ì ë ì¶ë ¥ í´ëìì ê²í í  ì ìëë¡ ì¶ë ¥íì­ìì¤. ì´ ëªë ¹ì´ë ì´ë¯¸ ì¡´ì¬íë alignmentsë¡ë¶í° ë§ì¤í¬ë¥¼ ìì±íê² í´ì¤ëë¤. ë°ì´í° ì¶ë ¥ ì§í 