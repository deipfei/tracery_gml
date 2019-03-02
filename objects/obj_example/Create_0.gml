//*****************************************
//*             GML Tracery               *
//*           Port by deipfei             *
//*       Original by Kate Compton        *
//* https://github.com/galaxykate/tracery *
//*****************************************

//Add me to your room to test me out!

//randomize to get different traces each time.
//You may do this in your own code, or uncomment this if just testing the library
//randomize();

//load a stringified JSON object, or read from a JSON file
//ANY MODIFIERS MUST MATCH THE NAME OF THE SCRIPT IN MODIFIERS/UNIVERSAL GROUP
//unfortunately, a script name of "a" or "s" did not seem like a great idea, so I changed
//this from the default Tracery library
tracery = instance_create_depth(0, 0, 0, obj_tracery);
var json = "{\"name\": [\"arjun\",\"yuuma\",\"darcy\",\"mia\",\"chiaki\",\"izzi\",\"azra\",\"lina\"],\"animal\": [\"unicorn\",\"raven\",\"sparrow\",\"scorpion\",\"coyote\",\"eagle\",\"owl\",\"lizard\",\"zebra\",\"duck\",\"kitten\"],\"mood\": [\"vexed\",\"indignant\",\"impassioned\",\"wistful\",\"astute\",\"courteous\"],\"story\": [\"#hero# traveled with her pet #heroPet#.  #hero# was never #mood#, for the #heroPet# was always too #mood#.\"],\"origin\": [\"#[hero:#name.capitalize#][heroPet:#animal.s#]story#\"]}";

//create a grammar object
grammar = instance_create_depth(0, 0, 0, obj_grammar);

//load the json decoded into a ds_map
grammar_load_from(grammar, json_decode(json));

//for each new trace, call grammar_flatten.
var result = grammar_flatten(grammar);
show_debug_message(result);

//#origin# will be the default tag to start with, but you may change it to suit your needs
result = grammar_flatten(grammar, "#origin#");
show_debug_message(result);

instance_destroy(grammar);