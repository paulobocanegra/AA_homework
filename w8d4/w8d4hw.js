
function titleize(array, callBack){
    let newNames = array.map(name => `Mx. ${name} Jingleimer Schmidt`);
    callBack(newNames);
}


function putsName(names){
    names.forEach(name => console.log(name));
}

// titleize(["diego", "paulo"], putsName)



// > titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx.Mary Jingleheimer Schmidt
// Mx.Brian Jingleheimer Schmidt
// Mx.Leo Jingleheimer Schmidt
// undefined


// new_names = array.map { |name| `Mx. ${name} Jingleimer Schmidt`}
//prc.call(newNames)
// nil
// names.each { |name| puts name }

// arr = ["Mary", "Brian", "Leo"]


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}


Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elphant goes 'PHRRRRRRR!!!!'`);
};

Elephant.prototype.grow = function() {
    this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
};

// arr[Math.floor(Math.random() * arr.length)]

Elephant.prototype.play = function() { 
    let ranTrick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
    console.log(`${this.name} is ${ranTrick}`)
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// Elephant.herd = [ellie, charlie, kate, micah];

// ellie.trumpet()
// ellie.play()
// ellie.grow()
// console.log(ellie.height)

Elephant.paradeHelper = function(helephant) {
    console.log(`${helephant.name} is trotting by!`);
};

Elephant.parade = function() {
    Elephant.herd.forEach(currentElephant => Elephant.paradeHelper(currentElephant));
            // arr.  each   {   |ele|                   prc.call      (ele)     }
};

// Elephant.parade();



// > Elephant.paradeHelper(micah);
// Micah is trotting by!
// undefined



// function dinerBreakfast(){ 
//     let order = "I'd like cheesy scrambled eggs please";


//      return function bfastOrder(newOrder){
//         order = `${order} and ${newOrder}`;
//         console.log(newOrder)
//     }
    
// }

// // console.log(dinerBreakfast()("raw pollo"));
// // console.log(dinerBreakfast()("dsfdsf"));console.log(originalOrder += `, and ${args}`, 'please!')

// function breakfastDinner(args) {
//     // let args = Array.from(arguments)[0];
//     let originalOrder = "I'd like cheesy scrambled eggs";
//     let variableO = function(food){
//         return `, and ${food}`
//     }
    
//     return console.log(originalOrder += variableO(), " please!")
// }

// let stephenHawking = breakfastDinner();
// // stephenHawking;
// stephenHawking("raw Pollo");
// stephenHawking("Godridita crunch");



function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};


let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
