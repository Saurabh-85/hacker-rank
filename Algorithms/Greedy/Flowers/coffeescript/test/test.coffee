flowers = require '../src/main'
assert  = require 'assert'

describe 'Flowers', ->
    describe 'Provided Test Cases', ->
        it 'Test Case 1', ->
            assert.equal(13, flowers.flowers(3,[2,5,6]))

        it 'Test Case 2', ->
            assert.equal(15, flowers.flowers(2,[2,5,6]))

        it 'Test Case 3', ->
            assert.equal(45811982, flowers.flowers(32, [
                900364,876803,469727,818827,521363,797927,293011,358419,935006,687468,225943,717791,817443,52028,894472,
                388300,746898,856300,67397,109579,183142,445096,197134,72657,651485,265216,672456,768500,304900,704585,175389,
                208681,544236,516977,942016,68247,561081,4643,210958,439703,134808,865683,877072,860491,86416,251878,456221,
                147352,966386,133889,828636,353217,264427,835373,812136,431841,827640,904164,487820,503493,502328,714555,
                573933,309284,792413,517291,442503,197627,145980,428669]))

        it 'Test Case 4', ->
            assert.equal(300504932, flowers.flowers(4,[
                780999,307463,538091,620991,464358,412141,468672,769644,683101,865778,771022,149027,674981,742164,843060,
                252022,681057,737745,941805,930317,630992,245238,745878,32699,153436,466246,645069,425148,655503,662211,
                133685,408141,727397,838748,422485,730216,141692,731378,345504,732699,747304,832840,33679,1604,263331,
                45064,465643,680875,40801,257708,600999,451132,527490,520015,215337,141471,692193,65553,190121,362166,
                156297,772384,493106,392882,563080,502058,927750,668946,302939,844572,904735,991162,301512,241941,94287,
                562860,688651,98284,416776,841701]))

        it 'Test Case 5', ->
            assert.equal(163578911, flowers.flowers(3, [
                390225,426456,688267,800389,990107,439248,240638,15991,874479,568754,729927,980985,132244,488186,5037,
                721765,251885,28458,23710,281490,30935,897665,768945,337228,533277,959855,927447,941485,24242,684459,
                312855,716170,512600,608266,779912,950103,211756,665028,642996,262173,789020,932421,390745,433434,350262,
                463568,668809,305781,815771,550800]))

    describe 'Groupings', ->
        it 'should satisfy less than 1 group', ->
            assert.equal(35, flowers.flowers(3, [15,20]))

        it 'can do a single group', ->
            assert.equal(44, flowers.flowers(3, [21,22,1]))

        it 'can do two groups', ->
            assert.equal(13, flowers.flowers(2, [1,2,3,4]))

        it 'can do three groups', ->
            assert.equal(72, flowers.flowers(3, [1..9]))

        it 'can do larger groups with left overs', ->
            assert.equal(94, flowers.flowers(3, [1..10]))

    describe 'Empty List', ->
        it 'works with an empty list of 1 group', ->
            assert.equal(0, flowers.flowers(1, []))

        it 'works with an empty list of 2 group', ->
            assert.equal(0, flowers.flowers(2, []))

        it 'works with an empty list of 3 group', ->
            assert.equal(0, flowers.flowers(3, []))
