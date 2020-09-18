window.setTimeout(function(){alert("Hammer Time")},10000);


function hammerTime(time){
    window.setTimeout(function(){alert(`${time} is HAMMER TIME `)}, 3000);
}

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

offerBrunch = function (callBack){
    reader.question("Would you like some tea?", 
    function(firstAns){reader.question("Would you like some biscuit?", 
    function(secondAns){
        callBack(firstAns, secondAns);
    });
    });
}

offerBrunch(function(firstAns, secondAns){
    console.log(`I am glad you said ${firstAns} for tea because you are a thirsty, and I am glad you said ${secondAns} for a biscuit `);
    reader.close();
})