// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }
// ----------------------------------------------------------------------------
// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."

// function madLib(verb, action, noun){
//     console.log(`We shall ${verb.toUpperCase()} the ${ action.toUpperCase()} ${ noun.toUpperCase()}`);
// }
// madLib(`make`, `best`, `guac`)

function isSubstring(searchString, subString){
    return searchString.includes(subString);
}

// console.log(isSubstring("time to program", "time"))
// console.log(isSubstring("Jump for joy", "joys"))




function fizzBuzz(array){
    let final=[]
    array.forEach(ele => {
        if (ele % 3 === 0 || ele % 5 === 0){
            final.push(ele);
        }
    });
    return final
}

console.log(fizzBuzz([1,2,3,4,5,6]))