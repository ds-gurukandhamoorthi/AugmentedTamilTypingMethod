(setq tamil-okay-rasapavazhabigna-ending-regexp (regexp-opt '(
"அகங்கார"
"அகம்பாவ"
"அகர"
"அகார"
"அகோர"
"அக்கார"
"அக்குடும்ப"
"அக்ர"
"அசாதாரண"
"அசுர"
"அசைவ"
"அச்சிற்ப"
"அச்சேர"
"அச்சோழ"
"அஞ்சுவ"
"அடியைக்காண"
"அடிவிழ"
"அதற்கேற்ப"
"அதிகார"
"அதிகாரத்துவ"
"அதிர"
"அதைத்தவிர"
"அதைப"
"அநுராதபுர"
"அந்தப்புர"
"அந்நகர"
"அப"
"அபார"
"அபூர்வ"
"அப்ப"
"அப்ஸர"
"அமர"
"அமைத்துத்தர"
"அர"
"அரகர"
"அரிச்சந்திர"
"அருமண"
"அரூப"
"அலங்கார"
"அல்ப"
"அவ"
"அவசர"
"அவதார"
"அவமானமாயிர"
"அவர"
"அவரைக்காண"
"அவலட்சண"
"அவற்றிற்கேற்ப"
"அவிழ"
"அவ்வப"
"அவ்வீர"
"அழ"
"அழைத்துவர"
"அறிப"
"அற்ப"
"அனந்தகல்யாண"
"அனுதாப"
"அனுபவ"
"அனுப்ப"
"அஸுர"
"அஸ்திர"
"ஆகர்ஷண"
"ஆங்கார"
"ஆசார"
"ஆசைதீர"
"ஆடம்பர"
"ஆதார"
"ஆதிசைவ"
"ஆதுர"
"ஆத்திர"
"ஆந்திர"
"ஆபரண"
"ஆயிர"
"ஆரம்ப"
"ஆரவார"
"ஆர்ப்ப"
"ஆர்வ"
"ஆவண"
"ஆழ்வ"
"ஆறுகோண"
"இகர"
"இச்சுகாதார"
"இச்சோழ"
"இடியாப்ப"
"இதர"
"இதற்கேற்ப"
"இதுதவிர"
"இதைதவிர"
"இதைத்தவிர"
"இத்திருமண"
"இந்திர"
"இந்நகர"
"இப"
"இப்ப"
"இப்புராண"
"இயந்திர"
"இயைவ"
"இர"
"இராணுவ"
"இராமராவண"
"இராமாயண"
"இராமேசுவர"
"இராஜதந்திர"
"இராஜேந்திர"
"இராஜோபசார"
"இராஜ்யபார"
"இராஜ்யாதிகார"
"இராஷ்டிர"
"இருக்கறப்ப"
"இருசக்கர"
"இருவ"
"இருவார"
"இலக்கண"
"இலக்கோண"
"இலவ"
"இவர"
"இவர்களைத்தவிர"
"இவற்றிற்கேற்ப"
"இவற்றைத்தவிர"
"இவ்வளவ"
"இழ"
"இன்ப"
"இன்னொர"
"இஷ்டமித்திர"
"ஈகார"
"ஈக்களைப"
"ஈசுவர"
"ஈழ"
"ஈஸ்வர"
"உகர"
"உக்கிர"
"உசிதமாயிர"
"உட்கார"
"உட்கார்ந்தார"
"உண"
"உணர"
"உணர்த்துணர"
"உணர்ப"
"உணர்வ"
"உண்ண"
"உண்ப"
"உதவ"
"உதிர"
"உத்தமசோழ"
"உத்தர"
"உத்திர"
"உப"
"உபசார"
"உபத்திர"
"உயர"
"உயிர"
"உயிரிழ"
"உயிரின்ப"
"உயிர்வாழ"
"உர"
"உருவ"
"உலவ"
"உவ"
"உழவார"
"உள்ளூர"
"உறவுக்கார"
"உறுப்பிலக்கண"
"உற்சவ"
"உன்னைத்தவிர"
"உஷ்ண"
"ஊர்த்தவ"
"ஊர்த்வ"
"எகர"
"எண்கோண"
"எண்ண"
"எப்ப"
"எய்துப"
"எலுமிச்சம்பழ"
"எல்லார"
"எல்லையோர"
"எழ"
"எழில்காண"
"எழுத்ததிகார"
"எழுந்துவர"
"எழுப்ப"
"என்ப"
"ஏகாக்கிர"
"ஏகார"
"ஏந்துவ"
"ஏய்ப்ப"
"ஏவ"
"ஏறத்தாழ"
"ஏற்ப"
"ஐகார"
"ஐயப்ப"
"ஐவ"
"ஒத்துவர"
"ஒய்யார"
"ஒர"
"ஒருசேர"
"ஒருதார"
"ஒருவ"
"ஒருவார"
"ஒளிஅரூப"
"ஒன்பதாயிர"
"ஓங்கார"
"ஓடக்கார"
"ஓடிவர"
"ஓர"
"ககர"
"கசதப"
"கடப"
"கடம்ப"
"கடலோர"
"கடற்கரையோர"
"கடூர"
"கடோப"
"கட்டண"
"கட்டுமர"
"கண"
"கணியென்ப"
"கண்ண"
"கண்ணீர்சோர"
"கதவ"
"கந்தர்வ"
"கந்தவர்வ"
"கப"
"கமழ"
"கம்ப"
"கம்பீர"
"கர"
"கரண"
"கருதியதற்கேற்ப"
"கருப்பண"
"கரைசேர"
"கர்ண"
"கர்ப்ப"
"கலந்ததைக்காண"
"கலவர"
"கலாச்சார"
"கலியாண"
"கலுழ"
"கல்யாண"
"கல்யாணகுண"
"கவ"
"கவர"
"கவுரவ"
"கழுமர"
"கற்பூர"
"கன்னர"
"கன்னியப்ப"
"கஜேந்திர"
"கஸ்யப"
"காகாஸுர"
"காண"
"காணக்காண"
"காணப"
"காண்ப"
"காண்வர"
"காந்தருவ"
"காந்தர்வ"
"காமக்ரோதலோப"
"காமேஷ்வர"
"காயப்ப"
"காயாரோகண"
"காரண"
"காவ"
"காவேர"
"காஷ்மீர"
"காஸ்யப"
"கிராமப்புர"
"கிருத்துவ"
"கிருஷ்ண"
"கிழ"
"கிழவ"
"கிளப்ப"
"கிளம்ப"
"கிறிஸ்தவ"
"கிறிஸ்துவ"
"கின்னர"
"கீழ"
"கீழ்த்தர"
"குடும்ப"
"குண"
"குந்தவ"
"குபேர"
"குமரகுருபர"
"குமரிப்பொண்ண"
"கும்ப"
"கும்பகர்ண"
"குர"
"குருவார"
"குருஷேத்திர"
"குரூப"
"குரூர"
"குரைப்ப"
"குலசேகர"
"குலதெய்வ"
"குழப்ப"
"குளிர"
"குற்றியலுகர"
"கூட்டிவர"
"கூர"
"கூவ"
"கெட்டிக்கார"
"கேட்ப"
"கேதீசுவர"
"கேதீச்சுர"
"கேந்திர"
"கேற்ப"
"கைசேர"
"கைதொழ"
"கொடுத்தனுப்ப"
"கொடுப்ப"
"கொடும்ப"
"கொடூர"
"கொட்டியழ"
"கொண"
"கொண்டார"
"கொண்டிர"
"கொண்டிருப்பதைத்தவிர"
"கொண்டுவர"
"கொலைகார"
"கோசுக்கிழ"
"கோப"
"கோபதாப"
"கோபிப்ப"
"கோபுர"
"கோர"
"கோரபயங்கர"
"கோரமாண"
"கௌரவ"
"சகர"
"சகோதர"
"சக்கர"
"சக்கரவ"
"சங்கடஹர"
"சங்கர"
"சஞ்சார"
"சண்டேசுவர"
"சண்டைக்கார"
"சதாசர்வ"
"சதாசிவ"
"சதிகார"
"சதுர"
"சத்துவ"
"சத்ரூசம்ஹார"
"சத்வ"
"சந்திர"
"சந்திரசேகர"
"சந்த்ர"
"சப்ர"
"சமண"
"சமத்துவ"
"சமீப"
"சமுத்திர"
"சம்பவ"
"சம்ஹார"
"சரசர"
"சரத்திர"
"சரித்திர"
"சரிவர"
"சரீர"
"சருவ"
"சர்வ"
"சர்வாதிகார"
"சர்வாலங்கார"
"சல்லாப"
"சவர"
"சாகர"
"சாண"
"சாதராண"
"சாதாரண"
"சாவ"
"சாஸ்திர"
"சிங்கார"
"சித்திர"
"சிந்தனைக்கேற்ப"
"சிரக்கம்ப"
"சிரவண"
"சிருங்கார"
"சிலகண"
"சிலப்பதிகார"
"சிலம்ப"
"சிவ"
"சிவப்ப"
"சிவனடியார்களைத்தவிர"
"சிறப்ப"
"சிறப்புப்பாயிர"
"சிறுதர"
"சிற்ப"
"சிற்றின்ப"
"சின்னப"
"சின்னப்ப"
"சீதோஷ்ண"
"சுகாதார"
"சுகுமார"
"சுக்ர"
"சுண்ண"
"சுதந்திர"
"சுந்தர"
"சுந்தரசோழ"
"சுந்தரச்சோழ"
"சுந்தோப"
"சுப"
"சுமுத்திர"
"சுயம்வர"
"சுர"
"சுழ"
"சுற்றிவர"
"சுற்றுவட்டார"
"சூத்திர"
"சூத்ர"
"சூர"
"சூழ"
"சூழ்நிலைக்கேற்ப"
"சூஸ்திர"
"செஞ்சுகிட்டிருந்தப்ப"
"செய்தப்ப"
"செய்தவ"
"செல்வ"
"சேர"
"சேர்ப"
"சேர்ப்ப"
"சைலேந்திர"
"சைவ"
"சொரூப"
"சொல்ப"
"சொல்லித்தர"
"சொல்லிவ"
"சொல்லெடுப்ப"
"சொற்ப"
"சொன்னதேதவிர"
"சொன்னப்ப"
"சோதிடர"
"சோமசுந்தர"
"சோர"
"சோழ"
"டகர"
"டகார"
"டண"
"டெளிர்ப்ப"
"டென்ப"
"ணவ"
"தகப"
"தகர"
"தகுதிக்கேற்ப"
"தங்களுக்குப"
"தங்களைத்தவிர"
"தடவ"
"தட்ப"
"ததும்ப"
"தத்துவ"
"தத்ரூப"
"தந்திர"
"தந்த்ர"
"தப்ப"
"தமக்கேற்ப"
"தர"
"தரத்தர"
"தரித்திர"
"தலைசீவ"
"தலைதப்ப"
"தலைநிமிர"
"தலையில்விழ"
"தலையைத்தடவ"
"தலைவார"
"தலைவியைக்காண"
"தவ"
"தவழ"
"தவிர"
"தழுவ"
"தளர"
"தளும்ப"
"தற்சூழ"
"தன்மைகளுக்கேற்ப"
"தாசில்பண்ண"
"தாயார"
"தார"
"தாலிதவிர"
"தாவ"
"தாவர"
"தாழ"
"தான்தவிர"
"தாஜாபண்ண"
"திகம்பர"
"திகழ"
"திசைதிருப்ப"
"திர"
"திரட்டித்தர"
"திரவ"
"திரிகோண"
"திரிபுர"
"திருஉருவ"
"திருத்தாண்டவ"
"திருத்தொண்டர்புராண"
"திருப்ப"
"திருமண"
"திருமந்திர"
"திருமுனைப்ப"
"திரும்ப"
"திருவள்ளுவ"
"திருவாய்மலர"
"திருவுருவ"
"திறத்திற்கேற்ப"
"தீப"
"தீர"
"தீர்ப"
"தீவ"
"தீவாந்தர"
"தீவிர"
"தீக்ஷ்ண"
"துண்டுவிழ"
"துப்ப"
"துயர"
"துயிலெழ"
"துரப்ப"
"துருவ"
"துர்ப்ப"
"துவார"
"துழாவ"
"துளாவ"
"துளும்ப"
"துறப்ப"
"துன்ப"
"தூங்கிவிழ"
"தூண"
"தூர"
"தூர்வார"
"தூவ"
"தூள்கிளப்ப"
"தெய்வ"
"தெர"
"தெரியவர"
"தெளிர்ப்ப"
"தெறிப்ப"
"தென்னைமர"
"தேடித்தர"
"தேடிவர"
"தேம்ப"
"தேவ"
"தேவகந்தர்வ"
"தேவாசுர"
"தேவார"
"தேவாஸுர"
"தேவைக்கேற்ப"
"தைவர"
"தொடர"
"தொட்டுத்தழுவ"
"தொணதொண"
"தொல்காப்பியப்பாயிர"
"தொழ"
"தொழில்நுட்ப"
"தோரண"
"தக்ஷிண"
"நகர"
"நடக்கறப்ப"
"நடந்தப்ப"
"நடந்துவர"
"நடப்ப"
"நடுத்தர"
"நடுவண"
"நட்சத்திர"
"நட்சத்திரங்களைப"
"நட்சத்ர"
"நண்ப"
"நதியோர"
"நந்திபுர"
"நமப"
"நம்ப"
"நரேந்திர"
"நவ"
"நவச்சார"
"நழுவ"
"நறுமண"
"நாகேஸ்வர"
"நாசித்துவார"
"நாண"
"நாணிக்கோண"
"நாதஸ்வர"
"நாமிருப்ப"
"நார"
"நாரண"
"நாராயண"
"நாராயணபுர"
"நாரையினைத்தவிர"
"நாலாயிர"
"நிகர"
"நிகழ"
"நிச்சயம்பண்ண"
"நிமிர"
"நிர"
"நிரந்தர"
"நிரப்ப"
"நிரம்ப"
"நிரவ"
"நிர்வாண"
"நிர்விகல்ப"
"நிலவ"
"நிலவர"
"நிலைக்கேற்ப"
"நிவாரண"
"நிறுவ"
"நிறைதர"
"நிற்ப"
"நினைவுகூர"
"நின்றார"
"நீர"
"நீர்தப்ப"
"நீவ"
"நுகர"
"நெகிழ"
"நெட்டுருப்பண்ண"
"நெம்ப"
"நேத்திர"
"நேர"
"நைஸ்பண்ண"
"நோக்கிப"
"நக்ஷத்திர"
"பகர"
"பகிர"
"பக்குவ"
"பசப்ப"
"பசிதீர"
"பஞ்சாட்ஷர"
"படர"
"படர்ந்தாரண"
"படாடோப"
"படையெடுப்ப"
"பட்டுப"
"பண"
"பணக்கார"
"பணம்பண்ண"
"பண்டார"
"பண்டுவ"
"பண்ண"
"பதார்த்தகுண"
"பதினோராயிர"
"பயங்கர"
"பயண"
"பயமாயிர"
"பர"
"பரசுராமேஸ்வர"
"பரபர"
"பரப்ப"
"பரப்பனஅக்ரஹார"
"பரமேசுவர"
"பரவ"
"பரஸ்பர"
"பரிகார"
"பரிதாப"
"பரிபக்குவ"
"பரிபூரண"
"பரிப்ப"
"பரிமாண"
"பரிவார"
"பருவ"
"பர்ண"
"பலதார"
"பலவண்ண"
"பலாத்கார"
"பல்லவ"
"பவழ"
"பவனிவர"
"பழ"
"பழமொழிக்கேற்ப"
"பழுவ"
"பழுவேட்டர"
"பற்றிக்கொண்டுவர"
"பாக்கறப்ப"
"பாசக்கார"
"பாசுப"
"பாசுர"
"பாட்டுப"
"பாண"
"பாதார"
"பாத்திர"
"பாப"
"பாமர"
"பார"
"பார்க்கிறப்ப"
"பார்த்திப"
"பார்த்திபேந்திர"
"பார்த்திரபேந்திர"
"பாவ"
"பாவத்திற்கேற்ப"
"பிடித்திர"
"பிடித்துவர"
"பிடிப"
"பிம்ப"
"பிர"
"பிரகாசித்தார"
"பிரசவ"
"பிரசார"
"பிரச்சார"
"பிரணவ"
"பிரதாப"
"பிரமாண"
"பிரயாண"
"பிராகார"
"பிராண"
"பிராமண"
"பிராம்மண"
"பிறர்தர"
"பிறழ"
"பின்தொடர"
"புகழ"
"புடைசூழ"
"புணர"
"புணர்ப்ப"
"புண்ணுற்றுக்கிடப்ப"
"புத்திர"
"புத்திரமித்திர"
"புராண"
"புருவ"
"புலம்ப"
"புலர"
"புலனின்ப"
"புறங்காண"
"புறஞ்சூழ"
"புறநகர"
"புன்னைமர"
"புஜ்ப"
"புஷ்ப"
"பூக்கார"
"பூங்குழ"
"பூண"
"பூரண"
"பூரணகும்ப"
"பூர்ண"
"பூர்வ"
"பூஷ்ண"
"பெண"
"பெண்ண"
"பெயர"
"பெயர்பண்ண"
"பெரியபுராண"
"பெரியமனதுபண்ண"
"பெருந்தர"
"பேண"
"பேர"
"பேரின்ப"
"பைத்தியக்கார"
"பொத்துக்கொண்டுவர"
"பொய்தவ"
"பொருளாதார"
"போதர"
"போய்ச்சேர"
"போய்த்தீர"
"போய்வர"
"போய்விட்டுவர"
"போழ"
"போனப்ப"
"பௌத்தர"
"ப்ப"
"மகர"
"மகாசிவ"
"மகிழ"
"மகிழ்வார"
"மகேச்வர"
"மகேந்திர"
"மங்களகரமாண"
"மடவ"
"மடுப்ப"
"மண"
"மணிநேர"
"மண்டப"
"மண்ணைக்கவ்வ"
"மண்விழ"
"மதுர"
"மத்தியதர"
"மந்தர"
"மந்தார"
"மந்திர"
"மந்திரவ"
"மந்த்ர"
"மர"
"மரண"
"மரபுக்கேற்ப"
"மருத்துவ"
"மருவ"
"மர்மர"
"மலர"
"மழ"
"மழுப்ப"
"மறப்ப"
"மற்றவ"
"மனதார"
"மனப"
"மனமார"
"மனம்திரும்ப"
"மனம்வர"
"மனோதத்துவ"
"மஹானுபாவ"
"மஹேந்திர"
"மஹோத்ஸவ"
"மாணவ"
"மாதவ"
"மாதாந்தர"
"மாதாந்திர"
"மாம்பழ"
"மாயமந்திர"
"மார்ப"
"மார்புதர"
"மாற்றித்தர"
"மிதப்ப"
"மித்திர"
"மிளிர"
"மின்சார"
"மீட்டுத்தர"
"மீனவ"
"முகர"
"முக்கோண"
"முதலாளித்துவ"
"முதல்தர"
"முதிர"
"முத்திர"
"முத்துகிருஷ்ண"
"முத்துக்குமார"
"முத்தொள்ளாயிர"
"முந்தாண"
"முப்ப"
"மும்முடிச்சோழ"
"முரண"
"முழ"
"முழுசுகாதார"
"முழுநேர"
"முன்வர"
"மூர"
"மூலகாரண"
"மூலாதார"
"மெய்த்தவ"
"மென்ப"
"மேவ"
"மொழிப"
"மோதிர"
"யசோதர"
"யந்த்ர"
"யரழ"
"யாப்பிலக்கண"
"யார"
"யாழ"
"யெடுப்ப"
"யக்ஷகின்னர"
"ரகர"
"ரகுவீர"
"ரண"
"ரணபத்திர"
"ராகவ"
"ராணுவ"
"ராமகிருஷ்ண"
"ராமலக்ஷ்மண"
"ராமாயண"
"ராவ"
"ராவண"
"ராஜபுத்திர"
"ராஜேந்திர"
"ராஷ்ட்ர"
"ரிஷப"
"ருத்திர"
"ருத்ர"
"ரூப"
"ரொம்ப"
"ரோஹண"
"லகர"
"லங்கேசுவர"
"லட்சண"
"லட்சோப"
"லாப"
"லுகர"
"லோப"
"லக்ஷ்மண"
"வகர"
"வகைகளைத்தவிர"
"வசித்துவர"
"வசீகர"
"வடதுருவ"
"வடிவ"
"வட்டார"
"வண்டிக்கார"
"வண்ண"
"வந்தவர"
"வந்தியத்தேவ"
"வம்ப"
"வயதுக்குவர"
"வயிர"
"வயிறார"
"வர"
"வரகுண"
"வரவர"
"வருகிறவ"
"வருகைதர"
"வருடாந்தர"
"வருடாந்திர"
"வருண"
"வருவ"
"வர்ண"
"வர்மனைப"
"வலவ"
"வல்லப"
"வல்லினம்வர"
"வழ"
"வழிக்குக்கொண்டுவர"
"வழிக்குவர"
"வழியனுப்ப"
"வழுவ"
"வளர"
"வளரவளர"
"வளர்ப்ப"
"வளாவ"
"வஜ்ர"
"வாக்குத்தர"
"வாங்கித்தர"
"வாங்கிவர"
"வாண"
"வாணிப"
"வாணிபுர"
"வாயுபுத்திர"
"வாய்ப்ப"
"வார"
"வாராந்தர"
"வாராந்திர"
"வாலிப"
"வாழ"
"வாழ்வாதார"
"வானர"
"வானரவீர"
"வானுயர"
"விகார"
"விக்னேஸ்வர"
"விசாரிச்சப்ப"
"விசாரித்துவர"
"விசித்திர"
"விசும்ப"
"விசுவாமித்திர"
"விடைதர"
"விட்டிர"
"விண்ணகர"
"விண்ணப்ப"
"வித்தியாதர"
"வித்யாதர"
"விபச்சார"
"விபர"
"விபீஷண"
"வியப்பாய்ப"
"வியன்நகர"
"வியாபார"
"விரவ"
"விருப்ப"
"விருப்பத்திற்கேற்ப"
"விரும்ப"
"வில்வ"
"விவகார"
"விழ"
"விளம்ப"
"விளம்பர"
"விளம்புப"
"விளாவ"
"விளைவிப்பவ"
"வினவ"
"விஜயநகர"
"விஸ்வாமித்ர"
"வீட்டுப"
"வீர"
"வீரசைவ"
"வீரதீர"
"வீரநாரயண"
"வீரநாராயண"
"வீரநாராயணபுர"
"வீரராகவ"
"வீரவைஷ்ணவ"
"வீழ"
"வீற்றிர"
"வெகுண்டெழ"
"வெதும்ப"
"வெப்ப"
"வெம்ப"
"வெளிக்கொணர"
"வெளிக்கொண்டுவர"
"வெளிவர"
"வெள்ளைக்கார"
"வேட்டுவ"
"வேண"
"வேண்டுப"
"வேண்டுவ"
"வேந்தர"
"வேப்ப"
"வேளக்கார"
"வேறுமர"
"வைணவ"
"வைப்ப"
"வைர"
"வைஷ்ணவ"
"வௌிவர"
"ளகர"
"றகர"
"றென்ப"
"னகர"
"னகார"
"ஜங்கார"
"ஜண"
"ஜணஜண"
"ஜயேந்திர"
"ஜீர்ணோத்தாரண"
"ஜீவ"
"ஜெயந்திர"
"ஸஞ்சார"
"ஸத்வ"
"ஸமுத்திர"
"ஸம்ஸார"
"ஸர்வ"
"ஸர்வத்ர"
"ஸர்வாபரண"
"ஸாதாரண"
"ஸுக்ரீவ"
"ஸுந்தர"
"ஸுவர்ண"
"ஸ்தூப"
"ஸ்வர"
"ஸ்வர்ண"
"ஹரஹர"
"ீர"
"க்ஷூத்ர"
"க்ஷேத்திர"
"ஸ்ரீஅரிஹர"
"ஸ்ரீகிருஷ்ண"
"ஸ்ரீராமகிருஷ்ண"
"ஸ்ரீராமச்சந்திர"
"ஸ்ரீராஜநாராயண"
"ஸ்ரீலட்சுமிநாராயண"
"ஸ்ரீவிக்னேஸ்வர"
"ஸ்ரீஹரிஹர"
) 'words))
(setq tamil-avoid-bigrams-regexp (regexp-opt '(
"அஅ"
"அஆ"
"அஹ"
"ஆஅ"
"ஆஷ"
"இஈ"
"ஈஇ"
"ஈஎ"
"ஈங"
"ஈப"
"உஃ"
"ஊஹ"
"எஃ"
"எம"
"எஸ"
"ஏஎ"
"ஏஏ"
"ஏஓ"
"ஐஆ"
"ஐஏ"
"ஐட"
"ஐன"
"ஐஜ"
"ஒங"
"ஒச"
"ஒண"
"ஒம"
"ஒய"
"ஒஸ"
"ஓஎ"
"ஓஏ"
"ஓழ"
"ஓள"
"ஓற"
"ஓன"
"ஓஷ"
"ஃக"
"ஃட"
"ஃந"
"ஃம"
"ஃர"
"ஃவ"
"ஃஹ"
"கஆ"
"கஉ"
"கஒ"
"கஃ"
"ஙக"
"ஙட"
"சஈ"
"ஞக"
"ஞங"
"ஞச"
"ஞண"
"ஞம"
"ஞெ"
"டஃ"
"ணஅ"
"ணஇ"
"ணஉ"
"ணஐ"
"ணண"
"ணஸ"
"ணஹ"
"தஎ"
"தஃ"
"தஜ"
"தஷ"
"நஅ"
"நஃ"
"நஜ"
"நஸ"
"பஅ"
"பஎ"
"பஃ"
"பஹ"
"மஅ"
"மஇ"
"மஃ"
"மஷ"
"யஇ"
"யஒ"
"யய"
"யஷ"
"லஇ"
"வஉ"
"வஃ"
"வஹ"
"ழஉ"
"ழச"
"ழஞ"
"ழத"
"ழள"
"ழீ"
"ழூ"
"ளஅ"
"ளஇ"
"றஅ"
"றஓ"
"றஹ"
"றூ"
"னஅ"
"னஆ"
"னஇ"
"னஏ"
"னஐ"
"ஸட"
"ஸஸ"
"ஹக"
"ஹற"
"ஹஹ"
"ஹூ"
"்அ"
"்ஆ"
"்இ"
"்ஈ"
"்உ"
"்எ"
"்ஏ"
"்ஐ"
"்ஒ"
"்ஓ"
"்ழ"
"்்"
"ாஅ"
"ாஆ"
"ாஇ"
"ாஉ"
"ாஎ"
"ா்"
"ிஅ"
"ிஆ"
"ிஎ"
"ிஒ"
"ிஓ"
"ி்"
"ிை"
"ீஇ"
"ீஈ"
"ீஒ"
"ுஅ"
"ுஇ"
"ுஉ"
"ுஎ"
"ுஐ"
"ுஃ"
"ூஉ"
"ூஐ"
"ூஒ"
"ூம"
"ூஹ"
"ெஇ"
"ேஅ"
"ேஆ"
"ேஉ"
"ேஎ"
"ேஏ"
"ேஐ"
"ேஒ"
"ைஅ"
"ைஇ"
"ைஈ"
"ைஉ"
"ைஏ"
"ைஒ"
"ைழ"
"ைா"
"ைு"
"ொவ"
"ோஎ"
"ோஒ"
"ோஃ"
"ௌஉ"
"ௌல"
"ௌஜ"
"ௌஹ"
)))
(setq tamil-avoid-trigrams-regexp (regexp-opt '(
"அஃப"
"அகன"
"அகு"
"அகை"
"அசஞ"
"அடச"
"அடெ"
"அணக"
"அணங"
"அணல"
"அதக"
"அதங"
"அதந"
"அதப"
"அதய"
"அதவ"
"அநப"
"அநு"
"அநை"
"அபந"
"அமக"
"அமண"
"அமன"
"அமே"
"அமௌ"
"அய்"
"அயண"
"அயு"
"அரத"
"அரன"
"அரஹ"
"அலத"
"அலந"
"அலப"
"அவட"
"அவண"
"அழங"
"அழந"
"அழ்"
"அளை"
"அனத"
"அனப"
"அனவ"
"அனஹ"
"அஜ்"
"அஜய"
"அஸந"
"அஸர"
"அஸன"
"அஸஹ"
"ஆகய"
"ஆகன"
"ஆகோ"
"ஆசர"
"ஆடச"
"ஆடன"
"ஆடூ"
"ஆணத"
"ஆணந"
"ஆது"
"ஆநந"
"ஆநா"
"ஆபழ"
"ஆபி"
"ஆமூ"
"ஆயத"
"ஆயம"
"ஆயற"
"ஆரள"
"ஆரீ"
"ஆல்"
"ஆலன"
"ஆவூ"
"ஆவை"
"ஆவொ"
"ஆழந"
"ஆழு"
"ஆழே"
"ஆளங"
"ஆறம"
"ஆறல"
"ஆஜ்"
"ஆஜய"
"ஆஸா"
"ஆஹவ"
"இஃப"
"இகப"
"இகு"
"இடந"
"இடன"
"இணத"
"இணர"
"இதவ"
"இநா"
"இநி"
"இபு"
"இமி"
"இய்"
"இயத"
"இயர"
"இயவ"
"இயி"
"இயு"
"இரம"
"இரல"
"இலந"
"இலா"
"இலி"
"இலௌ"
"இவட"
"இவா"
"இவி"
"இழர"
"இழல"
"இழ்"
"இற்"
"இறச"
"இறா"
"இனன"
"இனை"
"இஷா"
"ஈகு"
"ஈத்"
"ஈது"
"ஈநி"
"ஈமம"
"ஈயத"
"ஈயர"
"ஈயற"
"ஈயெ"
"ஈழம"
"ஈறெ"
"ஈனு"
"உகத"
"உகா"
"உகி"
"உகு"
"உடஞ"
"உடண"
"உடத"
"உடவ"
"உடா"
"உடீ"
"உதர"
"உதஸ"
"உது"
"உநி"
"உம்"
"உமண"
"உமர"
"உமு"
"உயக"
"உயங"
"உயந"
"உயம"
"உயவ"
"உரங"
"உரந"
"உரப"
"உரவ"
"உலத"
"உலந"
"உலற"
"உவ்"
"உவண"
"உவல"
"உவா"
"உவே"
"உவொ"
"உவோ"
"உழந"
"உழ்"
"உழா"
"உளக"
"உளங"
"உளந"
"உளன"
"உறந"
"உறப"
"உறழ"
"உறா"
"உறீ"
"உனி"
"உஜீ"
"உஜூ"
"ஊச்"
"ஊசா"
"ஊணு"
"ஊமு"
"ஊரத"
"ஊரந"
"ஊனூ"
"எகன"
"எகா"
"எகீ"
"எசு"
"எடத"
"எணப"
"எதய"
"எதர"
"எநக"
"எயி"
"எர்"
"எலா"
"எலெ"
"எவண"
"எவவ"
"எழட"
"எழர"
"எறச"
"எனற"
"எனன"
"ஏகி"
"ஏசா"
"ஏசீ"
"ஏண்"
"ஏதம"
"ஏதவ"
"ஏதி"
"ஏபி"
"ஏம்"
"ஏமக"
"ஏமஞ"
"ஏமத"
"ஏமப"
"ஏமு"
"ஏயப"
"ஏயி"
"ஏரக"
"ஏரல"
"ஏரு"
"ஏவண"
"ஏழன"
"ஏறே"
"ஏறொ"
"ஏன்"
"ஏனத"
"ஏனந"
"ஏனல"
"ஏஜன"
"ஐகள"
"ஐநா"
"ஐபே"
"ஐயவ"
"ஐயை"
"ஐவன"
"ஒகந"
"ஒடச"
"ஒடை"
"ஒதப"
"ஒர்"
"ஒரங"
"ஒரட"
"ஒரவ"
"ஒரன"
"ஒரா"
"ஒரீ"
"ஒரோ"
"ஒல்"
"ஒலந"
"ஒலம"
"ஒவி"
"ஒவு"
"ஒவெ"
"ஒழக"
"ஒள்"
"ஒறவ"
"ஒனர"
"ஒனற"
"ஓக்"
"ஓகம"
"ஓணத"
"ஓணந"
"ஓத்"
"ஓதற"
"ஓமை"
"ஓயர"
"ஓயி"
"ஓரீ"
"ஓரு"
"ஓரே"
"ஓரை"
"ஓரோ"
"ஓலி"
"ஓவ்"
"ஓவர"
"ஓவை"
"ஃதை"
"ஃப்"
"ஃபத"
"ஃபன"
"ஃபூ"
"ஃறீ"
"கஇங"
"கஇய"
"ககக"
"ககண"
"ககல"
"ககள"
"ககு"
"ககூ"
"ககை"
"கசண"
"கசத"
"கசல"
"கசெ"
"கஞை"
"கடச"
"கடண"
"கடர"
"கடூ"
"கணா"
"கதழ"
"கதஸ"
"கதீ"
"கநீ"
"கபீ"
"கபெ"
"கமஞ"
"கயங"
"கயம"
"கயவ"
"கயற"
"கயா"
"கயு"
"கயூ"
"கயே"
"கலய"
"கலள"
"கலஸ"
"கலு"
"கலே"
"கலொ"
"கவண"
"கழஅ"
"கழங"
"கழந"
"கழர"
"கழொ"
"களய"
"கறங"
"கறம"
"கனொ"
"கஜ்"
"கஜஹ"
"கஷா"
"கஸன"
"காழ"
"காஜ"
"கிஞ"
"கீம"
"கீய"
"கீல"
"கீவ"
"கீன"
"குஆ"
"குஒ"
"கூய"
"கூள"
"கெந"
"கெம"
"கெழ"
"கெள"
"கெற"
"கேழ"
"கைஎ"
"கைட"
"கைர"
"கொங"
"கொஸ"
"கோற"
"கோன"
"கௌம"
"கௌவ"
"க்ங"
"க்ப"
"க்ம"
"க்ல"
"க்வ"
"க்ற"
"ங்ச"
"ங்த"
"ங்ந"
"ங்ப"
"ங்ம"
"ங்ல"
"ங்ன"
"சகள"
"சசர"
"சசா"
"சசு"
"சசூ"
"சஞா"
"சடர"
"சணத"
"சணப"
"சநூ"
"சபழ"
"சபு"
"சயச"
"சயெ"
"சரர"
"சவச"
"சவண"
"சவந"
"சவழ"
"சழி"
"சளா"
"சறக"
"சனய"
"சஷண"
"சஹ்"
"சீச"
"சீந"
"சீஷ"
"சுண"
"சுஷ"
"சூச"
"சூந"
"செக"
"செஜ"
"சைன"
"சோண"
"சோய"
"சோஸ"
"சௌர"
"சௌவ"
"ச்த"
"ஞரோ"
"ஞவத"
"ஞாங"
"ஞாட"
"ஞாழ"
"ஞில"
"ஞ்த"
"டகட"
"டசம"
"டசன"
"டசு"
"டஞா"
"டடன"
"டணவ"
"டணெ"
"டநல"
"டநன"
"டநே"
"டபப"
"டபன"
"டமச"
"டயத"
"டயவ"
"டயன"
"டயா"
"டயை"
"டலப"
"டலன"
"டவ்"
"டவத"
"டவய"
"டவவ"
"டறவ"
"டனஉ"
"டனத"
"டனந"
"டனற"
"டிஐ"
"டிண"
"டீத"
"டுஆ"
"டுஈ"
"டுழ"
"டூண"
"டூத"
"டெச"
"டெவ"
"டெள"
"டேம"
"டேல"
"டேவ"
"டேஜ"
"டைஸ"
"டொக"
"டொட"
"டொர"
"டொற"
"டோள"
"ட்த"
"ட்ற"
"ணகன"
"ணசீ"
"ணடம"
"ணடா"
"ணடு"
"ணதவ"
"ணதன"
"ணதி"
"ணநம"
"ணபா"
"ணபீ"
"ணமொ"
"ணயா"
"ணரந"
"ணரெ"
"ணலம"
"ணலர"
"ணவப"
"ணனக"
"ணனம"
"ணனர"
"ணனவ"
"ணனன"
"ணாண"
"ணாப"
"ணிங"
"ணிண"
"ணிர"
"ணிஸ"
"ணூர"
"ணூழ"
"ணென"
"ணேவ"
"ணைஞ"
"ணைட"
"ணொன"
"ணோம"
"ண்ஞ"
"ண்ர"
"ண்ஷ"
"ண்ஸ"
"தஅல"
"தஇம"
"தகல"
"தகள"
"தகஜ"
"தகொ"
"தசப"
"தசீ"
"தடத"
"தடற"
"தடீ"
"தணை"
"ததக"
"ததத"
"ததந"
"ததம"
"ததர"
"தநெ"
"தபத"
"தமவ"
"தய்"
"தயர"
"தயை"
"தரஇ"
"தரஞ"
"தரஜ"
"தலந"
"தலய"
"தலற"
"தலூ"
"தலொ"
"தவ்"
"தவப"
"தவூ"
"தவோ"
"தழங"
"தழவ"
"தழன"
"தழா"
"தளந"
"தறப"
"தனஉ"
"தனய"
"தனள"
"தனற"
"தனெ"
"தனொ"
"தீல"
"தூட"
"தூஸ"
"தெங"
"தேல"
"தொற"
"தோச"
"தோவ"
"த்ல"
"த்ள"
"த்ஜ"
"நசை"
"நடங"
"நதப"
"நதம"
"நதர"
"நதா"
"நதீ"
"நது"
"நப்"
"நபஸ"
"நபா"
"நபு"
"நயந"
"நயப"
"நரா"
"நரு"
"நரூ"
"நலை"
"நவ்"
"நவங"
"நவு"
"நழா"
"நள்"
"நறி"
"நனந"
"நனம"
"நனு"
"நாந"
"நாஜ"
"நாஷ"
"நிட"
"நிள"
"நீஅ"
"நீம"
"நீழ"
"நீன"
"நுஞ"
"நுத"
"நுப"
"நுவ"
"நூங"
"நூர"
"நூழ"
"நூள"
"நொத"
"நொப"
"நோர"
"நோன"
"ந்க"
"ந்ய"
"ந்ற"
"ந்ன"
"பகச"
"பகழ"
"பசந"
"படய"
"படன"
"படீ"
"படூ"
"பணந"
"பணர"
"பணா"
"பதீ"
"பதூ"
"பநவ"
"பபச"
"பபட"
"பபத"
"பபர"
"பபா"
"பபூ"
"பபெ"
"பபோ"
"பமத"
"பயெ"
"பயொ"
"பரய"
"பரற"
"பரன"
"பரெ"
"பவோ"
"பறம"
"பறா"
"பறு"
"பனஸ"
"பனூ"
"பஷா"
"பஸல"
"பஸி"
"பிஇ"
"பிஏ"
"பீஅ"
"பீல"
"பீழ"
"பீஹ"
"புஹ"
"பூழ"
"பெச"
"பெம"
"பெழ"
"பேம"
"பேல"
"பைங"
"பைட"
"பைந"
"பைம"
"போச"
"போந"
"போழ"
"ப்க"
"ப்ச"
"ப்ம"
"ப்ல"
"ப்வ"
"ப்ற"
"ப்ஸ"
"மஉண"
"மகட"
"மசன"
"மசெ"
"மடய"
"மடன"
"மணய"
"மணை"
"மதற"
"மதஹ"
"மதீ"
"மதெ"
"மபஞ"
"மபட"
"மபம"
"மபொ"
"மயண"
"மயர"
"மயல"
"மயா"
"மயே"
"மயை"
"மரல"
"மரற"
"மலப"
"மலற"
"மவ்"
"மவன"
"மழக"
"மள்"
"மளர"
"மளு"
"மறம"
"மனஎ"
"மனஞ"
"மனண"
"மனல"
"மனன"
"மஸங"
"மஸத"
"மஹ்"
"மிஇ"
"மிவ"
"மீம"
"மீவ"
"மேழ"
"மோம"
"மோல"
"மோஷ"
"ம்ட"
"ம்ல"
"ம்ஜ"
"யகள"
"யகூ"
"யகே"
"யசய"
"யடத"
"யடம"
"யண்"
"யணங"
"யணற"
"யணா"
"யதத"
"யதப"
"யநஞ"
"யநர"
"யநே"
"யபத"
"யபூ"
"யரல"
"யரவ"
"யலத"
"யலப"
"யலம"
"யலய"
"யலன"
"யவ்"
"யவஆ"
"யவல"
"யவொ"
"யழல"
"யள்"
"யளு"
"யறவ"
"யனச"
"யனர"
"யஜ்"
"யஸத"
"யஸம"
"யஹத"
"யிங"
"யிந"
"யிம"
"யிவ"
"யீட"
"யீப"
"யீல"
"யீன"
"யுன"
"யூஞ"
"யூண"
"யூல"
"யூள"
"யெஞ"
"யெத"
"யெர"
"யேம"
"யேர"
"யேவ"
"யைட"
"யைம"
"யைர"
"யைன"
"யொக"
"யொட"
"யொஹ"
"யோந"
"யோய"
"யோள"
"யோற"
"யோஷ"
"ய்ண"
"ய்ற"
"ரஇட"
"ரஇர"
"ரகள"
"ரகே"
"ரசட"
"ரசந"
"ரடப"
"ரடர"
"ரணல"
"ரதோ"
"ரநட"
"ரபண"
"ரபவ"
"ரபன"
"ரபஷ"
"ரமூ"
"ரய்"
"ரயக"
"ரயப"
"ரயர"
"ரயன"
"ரயீ"
"ரயை"
"ரரர"
"ரலஞ"
"ரலத"
"ரலம"
"ரவ்"
"ரவக"
"ரவய"
"ரளன"
"ரறா"
"ரனக"
"ரஜட"
"ரஜர"
"ரஜஸ"
"ரஸவ"
"ரஹந"
"ராழ"
"ரிள"
"ரிற"
"ரீந"
"ரீஷ"
"ருய"
"ருன"
"ரூஞ"
"ரூஸ"
"ரேச"
"ரேற"
"ரொன"
"ரோங"
"ரோள"
"ரோற"
"ரோன"
"ர்ஃ"
"ர்ங"
"ர்ல"
"ர்ள"
"ர்ன"
"ர்ஹ"
"லஅள"
"லஎழ"
"லகஇ"
"லகஸ"
"லகே"
"லசவ"
"லடல"
"லநய"
"லநல"
"லநன"
"லநொ"
"லநோ"
"லபோ"
"லமங"
"லமம"
"லமன"
"லமீ"
"லய்"
"லயல"
"லயா"
"லயு"
"லயே"
"லரண"
"லரல"
"லரொ"
"லலம"
"லவ்"
"லவத"
"லழி"
"லழு"
"லள்"
"லளத"
"லளை"
"லற்"
"லறச"
"லஜி"
"லஹல"
"லாழ"
"லாஹ"
"லிஃ"
"லிஞ"
"லிண"
"லீர"
"லுல"
"லுழ"
"லுஹ"
"லெங"
"லெஸ"
"லேம"
"லைஆ"
"லைஎ"
"லைர"
"லைல"
"லொட"
"லொண"
"லொப"
"லோண"
"லோம"
"லோய"
"லோன"
"ல்ள"
"ல்ஹ"
"வஆய"
"வகவ"
"வகள"
"வகீ"
"வகொ"
"வசண"
"வசல"
"வசெ"
"வசே"
"வடங"
"வணச"
"வணத"
"வணர"
"வதஞ"
"வநல"
"வபம"
"வபற"
"வபொ"
"வயங"
"வயர"
"வயன"
"வரற"
"வலய"
"வலல"
"வலவ"
"வலூ"
"வலொ"
"வவ்"
"வவா"
"வவை"
"வழல"
"வளக"
"வறக"
"வறந"
"வனந"
"வனீ"
"வனொ"
"விஏ"
"வீஉ"
"வீஜ"
"வுஆ"
"வுழ"
"வெஞ"
"வைஎ"
"வைல"
"வைள"
"வொ"
"வொட"
"வொண"
"வொற"
"வோக"
"வோவ"
"வோள"
"வோற"
"வ்ஊ"
"வ்ங"
"வ்த"
"வ்ல"
"வ்ற"
"வ்ன"
"வ்ஹ"
"ழகொ"
"ழடு"
"ழநர"
"ழநல"
"ழநி"
"ழநீ"
"ழபெ"
"ழமூ"
"ழயி"
"ழலக"
"ழலத"
"ழவங"
"ழவெ"
"ழறல"
"ழறு"
"ழ்ஞ"
"ழ்ட"
"ழ்ர"
"ழிஉ"
"ழிஐ"
"ழுண"
"ழுர"
"ழுழ"
"ழுன"
"ழேத"
"ழேம"
"ழைல"
"ளகம"
"ளகள"
"ளதல"
"ளநல"
"ளபி"
"ளபு"
"ளபே"
"ளமங"
"ளமப"
"ளமழ"
"ளமன"
"ளய்"
"ளயு"
"ளயை"
"ளரங"
"ளலர"
"ளலற"
"ளவ்"
"ளவத"
"ளழற"
"ளனு"
"ளஹ்"
"ளிஇ"
"ளிஞ"
"ளெர"
"ளேழ"
"ளேற"
"ளைர"
"ளைல"
"ளோய"
"ள்ட"
"ள்ய"
"ள்ர"
"ள்ல"
"ள்ற"
"றஇச"
"றஇய"
"றகத"
"றகீ"
"றசீ"
"றசூ"
"றசை"
"றடவ"
"றடன"
"றணா"
"றதய"
"றநர"
"றபத"
"றபப"
"றபல"
"றபவ"
"றபற"
"றபு"
"றமன"
"றயோ"
"றரக"
"றரஞ"
"றரவ"
"றரொ"
"றலந"
"றலழ"
"றலன"
"றலொ"
"றவ்"
"றவச"
"றவண"
"றவத"
"றவல"
"றவவ"
"றவெ"
"றழி"
"றளவ"
"றனப"
"றாச"
"றாப"
"றாஹ"
"றிங"
"றிள"
"றீச"
"றீத"
"றீம"
"றீய"
"றீவ"
"றுஒ"
"றுற"
"றுஷ"
"றெக"
"றேல"
"றேஸ"
"றைர"
"றொற"
"றோய"
"றோள"
"ற்ங"
"ற்த"
"ற்ந"
"ற்ய"
"ற்ர"
"ற்ன"
"னஉம"
"னண்"
"னணம"
"னணவ"
"னதக"
"னதட"
"னதூ"
"னதொ"
"னநம"
"னநெ"
"னபத"
"னபன"
"னபீ"
"னபு"
"னமம"
"னமூ"
"னயா"
"னயி"
"னலக"
"னலர"
"னலூ"
"னவக"
"னவத"
"னழை"
"னள்"
"னறத"
"னறு"
"னறோ"
"னனர"
"னஜர"
"னஸன"
"னஹா"
"னாஷ"
"னிஇ"
"னிஈ"
"னிழ"
"னீப"
"னீன"
"னீஷ"
"னுஞ"
"னுல"
"னுவ"
"னுழ"
"னுற"
"னுஹ"
"னூட"
"னூண"
"னெம"
"னெய"
"னேம"
"னேல"
"னேவ"
"னைட"
"னைல"
"னைஸ"
"னோ"
"ன்ஊ"
"ன்ங"
"ன்ஞ"
"ன்ட"
"ன்ண"
"ன்ர"
"ஜதள"
"ஜபக"
"ஜபற"
"ஜபே"
"ஜமன"
"ஜமூ"
"ஜய்"
"ஜயச"
"ஜயீ"
"ஜல்"
"ஜலா"
"ஜவங"
"ஜஹஸ"
"ஜாச"
"ஜிப"
"ஜிம"
"ஜிர"
"ஜிவ"
"ஜிஹ"
"ஜீத"
"ஜீம"
"ஜீன"
"ஜுந"
"ஜூத"
"ஜூப"
"ஜூய"
"ஜெச"
"ஜேன"
"ஜோவ"
"ஜோஹ"
"ஜ்ஞ"
"ஜ்ன"
"ஜ்ஸ"
"ஜ்ஹ"
"ஷடர"
"ஷதி"
"ஷபங"
"ஷபட"
"ஷபன"
"ஷமண"
"ஷமவ"
"ஷமெ"
"ஷய்"
"ஷரஜ"
"ஷரீ"
"ஷஸ்"
"ஷாவ"
"ஷீக"
"ஷீய"
"ஷீன"
"ஷுட"
"ஷேச"
"ஷேட"
"ஷேப"
"ஷேய"
"ஷேவ"
"ஷோர"
"ஷ்ன"
"ஸகஸ"
"ஸநம"
"ஸபர"
"ஸரர"
"ஸலி"
"ஸஹ்"
"ஸாண"
"ஸாவ"
"ஸாஸ"
"ஸிற"
"ஸீல"
"ஸீற"
"ஸுய"
"ஸூல"
"ஸூஜ"
"ஸேர"
"ஸைச"
"ஸைந"
"ஸோன"
"ஸோஸ"
"ஸ்ச"
"ஸ்ற"
"ஸ்ஸ"
"ஹதத"
"ஹதா"
"ஹதி"
"ஹதீ"
"ஹது"
"ஹந்"
"ஹநூ"
"ஹபத"
"ஹமத"
"ஹமஸ"
"ஹலஹ"
"ஹவன"
"ஹாஜ"
"ஹாஹ"
"ஹீண"
"ஹீத"
"ஹீம"
"ஹீய"
"ஹீல"
"ஹுவ"
"ஹெப"
"ஹேய"
"ஹைய"
"ஹைவ"
"ஹோண"
"ஹ்ஃ"
"ஹ்க"
"ஹ்த"
"ஹ்ப"
"ஹ்ர"
"ஹ்ல"
"ஹ்வ"
"்கஅ"
"்கஞ"
"்ங்"
"்சஹ"
"்ஞர"
"்ண்"
"்நச"
"்நத"
"்நப"
"்நர"
"்நழ"
"்ம்"
"்மள"
"்ய்"
"்யொ"
"்ர்"
"்ரங"
"்ரை"
"்ல்"
"்லள"
"்ள்"
"்ளழ"
"்ளற"
"்ளஸ"
"்ற்"
"்றள"
"்ன்"
"்னஉ"
"்னய"
"்ஜய"
"்ஜல"
"்ஜஸ"
"்ஸன"
"்ஸஹ"
"்ஸூ"
"்ஹப"
"்ஹம"
"்ஹீ"
"்ஹோ"
"ாகற"
"ாகொ"
"ாகோ"
"ாசட"
"ாசண"
"ாசீ"
"ாசெ"
"ாஞா"
"ாணட"
"ாணூ"
"ாநத"
"ாநம"
"ாநன"
"ாநூ"
"ாநோ"
"ாபட"
"ாபீ"
"ாபொ"
"ாமஉ"
"ாமஞ"
"ாமய"
"ாமழ"
"ாயஸ"
"ாயீ"
"ாரய"
"ாரள"
"ாரஜ"
"ாலற"
"ாலஜ"
"ாவய"
"ாழல"
"ாழே"
"ாறத"
"ாறர"
"ாறற"
"ானண"
"ானழ"
"ாஸல"
"ாஹீ"
"ாஹோ"
"ிஇச"
"ிஇன"
"ிஈழ"
"ிஉள"
"ிஐந"
"ிஐம"
"ிகந"
"ிகஸ"
"ிகீ"
"ிசச"
"ிசண"
"ிசந"
"ிடய"
"ிடோ"
"ிணக"
"ிணர"
"ிணெ"
"ிணே"
"ிநத"
"ிநர"
"ிநன"
"ிநோ"
"ிபப"
"ிபய"
"ிபழ"
"ிபை"
"ிமழ"
"ியீ"
"ிரற"
"ிலய"
"ிவள"
"ிவொ"
"ிழப"
"ிழவ"
"ிளன"
"ிளஹ"
"ிறஞ"
"ிறய"
"ிறள"
"ினஉ"
"ினஞ"
"ினள"
"ினூ"
"ிஜெ"
"ிஷோ"
"ிஸு"
"ிஸை"
"ீஅஃ"
"ீஉர"
"ீகூ"
"ீகை"
"ீடல"
"ீதச"
"ீதய"
"ீதல"
"ீதூ"
"ீநக"
"ீநற"
"ீநி"
"ீபவ"
"ீபோ"
"ீமோ"
"ீரஸ"
"ீல்"
"ீலு"
"ீவண"
"ீவல"
"ீவெ"
"ீழட"
"ீழப"
"ீழல"
"ீளி"
"ீளெ"
"ீஜய"
"ீஜா"
"ீஷப"
"ீஹி"
"ுஆத"
"ுஆற"
"ுஈர"
"ுஊத"
"ுஒக"
"ுஒன"
"ுகற"
"ுகஸ"
"ுசட"
"ுசண"
"ுசப"
"ுசவ"
"ுஞை"
"ுடட"
"ுடப"
"ுடய"
"ுணக"
"ுணப"
"ுணற"
"ுதஅ"
"ுதஞ"
"ுதஸ"
"ுநு"
"ுநை"
"ுபப"
"ுபல"
"ுபூ"
"ுமப"
"ுமஸ"
"ுமஹ"
"ுயஜ"
"ுயா"
"ுரய"
"ுரற"
"ுரீ"
"ுலய"
"ுலெ"
"ுவ்"
"ுழ்"
"ுளப"
"ுளள"
"ுனத"
"ுனந"
"ுனவ"
"ுனற"
"ுனெ"
"ுஜவ"
"ுஷண"
"ுஷப"
"ுஷெ"
"ுஹை"
"ூகள"
"ூகு"
"ூசக"
"ூசர"
"ூடய"
"ூணன"
"ூதல"
"ூதெ"
"ூதை"
"ூதொ"
"ூநி"
"ூநு"
"ூபய"
"ூபூ"
"ூபை"
"ூயல"
"ூரக"
"ூரங"
"ூரய"
"ூரே"
"ூவண"
"ூவத"
"ூவம"
"ூழட"
"ூழந"
"ூறங"
"ூனக"
"ூஜூ"
"ூஸே"
"ெசா"
"ெசு"
"ெசோ"
"ெடந"
"ெடை"
"ெணப"
"ெணி"
"ெதற"
"ெநா"
"ெபர"
"ெபூ"
"ெபொ"
"ெமக"
"ெமல"
"ெமெ"
"ெயக"
"ெயத"
"ெயவ"
"ெரச"
"ெரண"
"ெரத"
"ெரன"
"ெரீ"
"ெரூ"
"ெரெ"
"ெலங"
"ெலச"
"ெலல"
"ெலழ"
"ெலீ"
"ெலே"
"ெவத"
"ெவர"
"ெவல"
"ெவன"
"ெழக"
"ெழவ"
"ெறற"
"ெனண"
"ெனல"
"ெனவ"
"ெனள"
"ெனற"
"ெனன"
"ெனு"
"ேகள"
"ேகற"
"ேகே"
"ேசீ"
"ேதே"
"ேநி"
"ேபல"
"ேபன"
"ேபு"
"ேமு"
"ேமெ"
"ேமே"
"ேயக"
"ேலஎ"
"ேலந"
"ேவந"
"ேவய"
"ேவழ"
"ேவள"
"ேவொ"
"ேழம"
"ேழல"
"ேளல"
"ேறப"
"ேனவ"
"ேனஜ"
"ேஷட"
"ேஷோ"
"ேஸே"
"ைஆக"
"ைஆச"
"ைஎங"
"ைஎண"
"ைகச"
"ைகத"
"ைகப"
"ைகம"
"ைகய"
"ைகல"
"ைகவ"
"ைசங"
"ைசை"
"ைடத"
"ைடப"
"ைடர"
"ைடன"
"ைடி"
"ைடை"
"ைணா"
"ைதந"
"ைதய"
"ைதை"
"ைதொ"
"ைநச"
"ைநத"
"ைநற"
"ைபச"
"ைபந"
"ைபப"
"ைபூ"
"ைபை"
"ையஞ"
"ைர்"
"ைரச"
"ைரை"
"ைலய"
"ைலவ"
"ைலன"
"ைவங"
"ைவப"
"ைவய"
"ைவவ"
"ைள்"
"ைனை"
"ைஜஸ"
"ொகந"
"ொகய"
"ொகன"
"ொகி"
"ொகோ"
"ொசி"
"ொடத"
"ொடந"
"ொடய"
"ொடல"
"ொண"
"ொணங"
"ொணட"
"ொணா"
"ொதம"
"ொபய"
"ொபர"
"ொமல"
"ொமீ"
"ொயர"
"ொரங"
"ொரல"
"ொரா"
"ொரீ"
"ொலக"
"ொலம"
"ொலல"
"ொழக"
"ொழய"
"ொழ்"
"ொழா"
"ொளப"
"ொளர"
"ொளற"
"ொறத"
"ொறப"
"ொறம"
"ொனன"
"ொனு"
"ொஸல"
"ொஹ்"
"ோகய"
"ோகோ"
"ோச்"
"ோசக"
"ோசத"
"ோசப"
"ோசர"
"ோசா"
"ோசெ"
"ோடச"
"ோணை"
"ோதங"
"ோதந"
"ோந்"
"ோபர"
"ோபோ"
"ோயக"
"ோயே"
"ோரந"
"ோரன"
"ோரொ"
"ோரோ"
"ோலர"
"ோவக"
"ோவர"
"ோவழ"
"ோழ்"
"ோளே"
"ோளோ"
"ோறல"
"ோறொ"
"ோனக"
"ோனெ"
"ோனோ"
"ோஷன"
"ோஸா"
"ௌகி"
"ௌசை"
"ௌமா"
"ௌமு"
"ௌரி"
"ௌவர"
"ௌவு"
"ௌவை"
"ௌன்"
)))
