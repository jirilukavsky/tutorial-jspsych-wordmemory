# tutorial-jspsych-wordmemory

Coding materials for jsPsych workshop (May 24, 2024).

## Links

- [jsPsych](https://www.jspsych.org/)
- [JATOS](https://www.jatos.org/)
- [vscode](https://code.visualstudio.com/)
    - [LiveServer](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
- R packages
    - [jatosR](https://github.com/visionlabels/jatosR)
    - [jspsychread](https://github.com/visionlabels/jspsychread)

## Steps

1. Create a clean folder (like this one)
2. [Download jspsych.zip](https://www.github.com/jspsych/jspsych/releases/latest/download/jspsych.zip) ([alternatives](https://www.jspsych.org/7.3/tutorials/hello-world/), [walkthrough](https://www.jspsych.org/7.3/tutorials/hello-world/#option-2-download-and-host-jspsych))
3. Unpack zip file into this directory, i.e. you should see the following file `./jspsych/dist/jspsych.js`
4. *Optional*: delete `examples`

5. Minimal examples `experiment_00.html` and `experiment_01.html` (hello world)
6. Simple timeline with variables (`experiment_02.html`)
7. Getting responses, larger texts (`experiment_03.html`)
8. Feedback (`experiment_04.html`)
9. Instructions (`experiment_05.html`)
10. Building timeline variables from arrays (`experiment_06.html`)
11. JATOS-ify your code (`experiment_07.html`)

12. Let's import the results for analysis (for RStudio use `tutorial-jspsych-wordmemory.Rproj`)
13. Install package jspsychread (see GitHub for [instructions](https://github.com/visionlabels/jspsychread))
14. Run `analysis/analysis.R`
