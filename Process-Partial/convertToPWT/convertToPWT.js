

const fs = require('fs')

const main = () => {
  const files = fs.readdirSync(__dirname + '/assets/json/').filter(item => item !== '.gitignore');

  files.forEach((filename) => {
    console.log(filename)
    const inObj = JSON.parse(fs.readFileSync(__dirname + '/assets/json/' + filename, 'utf8')).extracted_partials;
    const times = inObj.times;
    const amp2d = inObj.amps;
    const freqs = inObj.freqs;
    const duration = times[times.length - 1] * 1000;
    const numberOfVoices = inObj.amps.length;
    const outObj = {
      duration,
      numberOfVoices,
      pitch: {},
      magnitude: {}
    }

    const MAX_VOICES = 15;  //Our synth can play up to 15 voices
    const numberOfColumns = times.length;

    for (let i = 0; i < MAX_VOICES; i++) {
      outObj.pitch[i] = Array(numberOfColumns).fill(0);
      outObj.magnitude[i] = Array(numberOfColumns).fill(0);
    }

    amp2d.forEach((amps, i) => {
      outObj.magnitude[i] = amps;
      outObj.pitch[i] = times.map(() => ftom(freqs[i]));
    });
    fs.writeFileSync(__dirname + '/output/original_pitch/' + filename, JSON.stringify(outObj));  
  })
}


/**
 * Convert frequency number in Hz into MIDI Note Number
 * @param {number} freq in Hz
 * @return {number} midi note number in decimal
 */
const ftom = (freq) => {
  const getBaseLog = (x, y) => {
    return Math.log(y) / Math.log(x);
  }
  const midiNoteNumber = 12 * getBaseLog(2, freq / 440) + 69;
  if (midiNoteNumber < 0) {
    return 0;
  }
  if (midiNoteNumber > 127) {
    return 127;
  }
  return midiNoteNumber;
}

main();