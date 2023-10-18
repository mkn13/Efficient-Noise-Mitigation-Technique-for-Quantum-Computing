# Efficient-Noise-Mitigation-Technique-for-Quantum-Computing\
We published a [paper in Nature]([https://arxiv.org/abs/2109.05136](https://www.nature.com/articles/s41598-023-30510-5))...\
\
Here's our abstract:\
**Quantum computers have enabled solving problems beyond the current machines’ capabilities. However, this requires handling noise arising from unwanted interactions in these systems. Several protocols have been proposed to address efficient and accurate quantum noise profiling and mitigation. In this work, we propose a novel protocol that efficiently estimates the average output of a noisy quantum device to be used for quantum noise mitigation. The multi-qubit system average behavior is approximated as a special form of a Pauli Channel where Clifford gates are used to estimate the average output for circuits of different depths. The characterized Pauli channel error rates, and state preparation and measurement errors are then used to construct the outputs for different depths thereby eliminating the need for large simulations and enabling efficient mitigation. We demonstrate the efficiency of the proposed protocol on four IBM Q 5-qubit quantum devices. Our method demonstrates improved accuracy with efficient noise characterization. We report up to 88% and 69% improvement for the proposed approach compared to the unmitigated, and pure measurement error mitigation approaches, respectively.**

We, then, enhanced the model, which is a linear regression one, by using a neural network. Similarly, the neural network estimates the average output of a noisy quantum device, but this time it does so by taking a distribution at a certain circuit depth *m<sub>1</sub>* along with *&Delta;m = *m<sub>2</sub>* - *m<sub>1</sub>** as input. In the forward pass, it outputs the estimated distribution at *m<sub>2</sub>*. These outputs are seen as the average outputs at various depths.
