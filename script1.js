window.addEventListener('DOMContentLoaded', () => {
  // Progress Container 1
  let progressElement1 = document.querySelector(".circular-progress");
  let valueContainer1 = progressElement1.querySelector(".value-container");
  let progressValue1 = parseInt(progressElement1.getAttribute("data-progress-value"));
  let progressEndValue1 = parseInt(progressElement1.getAttribute("data-progress-end-value"));
  let speed1 = 50;

  let progress1 = setInterval(() => {
    valueContainer1.textContent = progressValue1 === 0 ? "0" : progressValue1;
    progressElement1.style.background = `conic-gradient(
      #4d5bf9 ${progressValue1 * 3.6}deg,
      #cadcff ${progressValue1 * 3.6}deg
    )`;
    if (progressValue1 == progressEndValue1) {
      clearInterval(progress1);
    } else {
      progressValue1++;
    }
  }, speed1);

  // Progress Container 2
  let progressElement2 = document.querySelector(".circular-progress1");
  let valueContainer2 = progressElement2.querySelector(".value-container1");
  let progressValue2 = parseInt(progressElement2.getAttribute("data-progress-value"));
  let progressEndValue2 = parseInt(progressElement2.getAttribute("data-progress-end-value"));
  let speed2 = 50;

  let progress2 = setInterval(() => {
    valueContainer2.textContent = progressValue2 === 0 ? "0" : progressValue2;
    progressElement2.style.background = `conic-gradient(
      #4d5bf9 ${progressValue2 * 3.6}deg,
      #cadcff ${progressValue2 * 3.6}deg
    )`;
    if (progressValue2 == progressEndValue2) {
      clearInterval(progress2);
    } else {
      progressValue2++;
    }
  }, speed2);

  // Progress Container 3
  let progressElement3 = document.querySelector(".circular-progress2");
  let valueContainer3 = progressElement3.querySelector(".value-container2");
  let progressValue3 = parseInt(progressElement3.getAttribute("data-progress-value"));
  let progressEndValue3 = parseInt(progressElement3.getAttribute("data-progress-end-value"));
  let speed3 = 50;

  let progress3 = setInterval(() => {
    valueContainer3.textContent = progressValue3 === 0 ? "0" : progressValue3;
    progressElement3.style.background = `conic-gradient(
      #4d5bf9 ${progressValue3 * 3.6}deg,
      #cadcff ${progressValue3 * 3.6}deg
    )`;
    if (progressValue3 == progressEndValue3) {
      clearInterval(progress3);
    } else {
      progressValue3++;
    }
  }, speed3);

  // Progress Container 4
  let progressElement4 = document.querySelector(".circular-progress3");
  let valueContainer4 = progressElement4.querySelector(".value-container3");
  let progressValue4 = parseFloat(progressElement4.getAttribute("data-progress-value"));
  let progressEndValue4 = parseFloat(progressElement4.getAttribute("data-progress-end-value"));
  let speed4 = 50;
  
  let progress4 = setInterval(() => {
    valueContainer4.textContent = progressValue4.toFixed(1);
    progressElement4.style.background = `conic-gradient(
      #4d5bf9 ${progressValue4 * 75}deg,
      #cadcff ${progressValue4 * 75}deg
    )`;
    if (progressValue4 >= progressEndValue4) {
      clearInterval(progress4);
    } else {
      progressValue4 += 0.1; // Adjust the increment as needed
    }
  }, speed4);
  
});
