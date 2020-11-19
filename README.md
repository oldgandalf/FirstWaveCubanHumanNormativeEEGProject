# FirstWaveCubanHumanNormativeEEGProject
This repository contains an EEG resting state Normative dataset obtained at the Cuban Neuroscience Center from the normal Cuban population.

The study was performed in Havana, Cuba from 1988 to 1990. The normative sample was obtained by an exhaustive screening of a random sample from a universe of 116,000 inhabitants of Havana, with stringent criteria for inclusion which rejected 65% of the subjects that were recruited. The age range under study was from 5 to 80 years old, although there are two subjects 85 and 97 years old respectively. The subjects were selected through a quasi-random procedure to guarantee an adequate age representation of the whole age span in the sample. The age range was divided into quasi-logarithmically spaced intervals (yearly from 5 to 15.9; every two years from 16 to 19.9; every five years from 20 to 80) in order to deal with "growth spurts". In each age group, at least 8 subjects were included, so that the sample size was roughly proportional to the rate of variation of the descriptive parameters. The final normative sample consisted in 211 subjects (105 males, 106 females) healthy subjects in the mentioned age range.

The study was performed in collaboration with the Cuban government and the Ministry of Public Health of the Republic of Cuba, with the participation of the Family Doctors system in Havana. A populational sample of more than 600 subjects was selected using the quasi-random procedure explained above. The nurses working with the Family Doctors visited the subjects selected in their locality. They explained the subjects the purpose of the study and informed them about all data acquisition protocols as well as safety measures. Then they asked for the subjects’ informed consent. They also explained the subjects that they would not receive any monetary compensation for participation, but they would receive full salary at work for the days they have to participate at the study.
To those subjects who gave their consent, the nurses applied an exhaustive clinical history with the purpose of selecting subjects who were functionally healthy. Subjects that did not satisfied those requirements did not continue in the normative study. Those who were identified to may have a possible medical condition were referred to the appropriate specialist. The details of the exclusion criteria can be found in (Bosch-Bayard et al., 2020, in preparation).

Subjects’ preparation

The subjects were recorded during the morning to guarantee the state of wakefulness. The following instructions were given prior to the EEG recording and checked for just before the session: a) to go to bed before 11 pm the night before and sleep for at least 8 hours; b) to abstain from alcohol, coffee, black tea, chocolate or soda the day before; c) to have a normal breakfast in the morning. Additionally, before starting the recording at the clinic they were offered a snack to avoid prolongated fasting period.

Data recording and edition

A digital electroencephalograph (MEDICID-3M) was used with gain of 10 000, filters from 0.3 -30 Hz and 60 Hz notch, noise 2 mV RMS, sampling period 10 msec. Nineteen silver disc scalp-electrodes were placed according to the International 10/20 System (impedance below 5 KΩ). Recordings were performed with monopolar linked ear reference. Bipolar, average reference and Laplacian montages can be calculated off-line.

Ten to twelve minutes of EEG were recorded in a dimly lit room, with the subject in resting state, under constant surveillance to prevent drowsiness and in order to control hyperventilation. Samples of EEG were recorded for each subject, in the following states: eyes closed (EC, 5 minutes); eyes open (EO, 3 minutes); hyperventilation (HV, 3 minutes).
Eye movements and blinking were monitored by electro-oculogram (EOG). Expert electroencephalographers carefully edited the EEG signals and visually selected 24 artifact free segments of 2.56s duration; 24 segments for EC, EO and HV.

Transformation to the frequency domain

Data analysis sample spectra were calculated by the Fast Fourier Transform (FFT) and cross-segment averaging (Brillinger, 1974). Cross-spectral matrices were calculated for every 0.39 Hz, from 0.39 to 19.11 Hz. As pointed out in (Pascual-Marqui, Gonzalez-Andino, & Valdes-Sosa, 1988) the sample spectra show a considerable degree of smoothness which make them amenable to parametric descriptions.
By means of appropriate transformation matrices (Katznelson, 1981) cross spectral matrices for the linked earlobe reference can be transformed to average reference montage or the Laplacian (Pascual-Marqui et al., 1988).

Data sharing: format and accessibility

The dataset shared in this contribution contains 198 for Eyes Close and 211 for Eyes Open cross-spectral matrices obtained from the normative sample. The files are saved in MAT Matlab format. The files are compressed as ZIP files, one for Eyes Close (EyesClose.zip) and the second one for Eyes Open (EyesOpen.zip). Inside the ZIP files, the subjects’ data are saved in MAT Matlab format. The name of each file starts with an 'A' for Eyes Close and with 'B' for Eyes Open, followed by the subject's code and ending with '_cross.mat'.
Inside each MAT file, there are three variables: the subject's age and sex and the cross spectral matrices for the whole frequency range (MCross).

MCross is a 3D matrix of 19 x 19 x 49, where 19 is the number of electrodes and 49 is the number of frequencies, equally spanned from 0.39 to 19.11 each 0.39 Hz. The elements of MCross are real values in the diagonal, for the values of the power spectrum foe each electrode and frequency. Outside the diagonal, the MCross values are complex number containing the cross-spectral values for each pair of electrodes and frequency.

This dataset is accompanied by a XLS file which contains the list of all subjects, including Code, Age, Sex and whether the Eyes Close and Eyes Open data are available.


Suggested EEG spectra baseline standardization

One of the common problems when using EEG data coming from different sources is how to make them comparable. EEGs coming from different devices may be different due to external factors not related to neurophysiology but to hardware differences, amplifiers, noise, and other factors. Additionally, factors like the skull thickness, the hair, skin conductance, etc. may be the source of other differences in the EEG spectra.  A random general scale factor (GSF) affecting EEG records due to non-neurophysiological differences  has been described in (Hernández et al., 1994). It was shown that the maximum likelihood estimate of GSF for an individual is the average of all log power values across all derivations. Correcting the EEG recordings by this factor may help to eliminate those differences among individuals making them more comparable for statistical purposes. In the shared code in GitHub we have included the MATLAB code for calculating the GSF from the cross-spectral matrices like the ones we are sharing. Before calculating the GSF, the procedure involves first re-referencing the data to the Average Reference (Mardia, Kent, & Bibby, 1997).

With this data we are also including the MATLAB code for changing the reference of the datat to the Average reference and for re-escaling the cross-spectral matrices by the Global Scale Factor.

References

Hernández, J. L., Valdés, P., Biscay, R., Virues, T., Szava, S., Bosch, J., … Clark, I. (1994). A global scale factor in brain topography. The International Journal of Neuroscience, 76(3–4), 267–278. Retrieved from http://www.ncbi.nlm.nih.gov/pubmed/7960483

Mardia, K. V., Kent, J. T., & Bibby, J. M. (1997). Multivariate analysis. (Z. W. Birnbaum & E. Lukacs, Eds.) (6th ed.). London: Academic Press.


Citations

Please, cite this data as:

Bosch-Bayard J, Galan L, Aubert Vazquez E, Virues Alba T and Valdes-Sosa PA (2020) Resting State Healthy EEG: The First Wave of the Cuban Normative Database. Front. Neurosci. 14:555119. doi: 10.3389/fnins.2020.555119

