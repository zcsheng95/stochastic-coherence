# Stochastic-coherence

## Plan before midterm

- Quantified learned latent space
- **ZS**: Modify Encoder to output parameters from z0 and zT
- **TZ**: Modify Decoder to allow customized trajectories
- **CJ**: Try extract latent space from existing encoders / Play with Dialo-GPT


## Midterm Experiments
### Experiment I
- Extract lantent space from training set i.e. $\{z_0, z_1, z_2, ..., z_T \}$, and generate lantent space $\{b_0, b_1, b_2, ..., b_T \}$ using test set given $b_0$ and $b_T$
- Compare two latent trajectories with true Brownian Bridge and evaluate their similarities
- Evaluate coherence for training sequence and generated test sequence
- To see if we can find correlation between the coherence and similarity to Brownian Bridge

### Experiment II
- Sample artificial trajectories from learned latent space with varying standard deviation (e.g. 0.5 $\sigma^2, 2 \sigma^2, ...$)
- Tune different proportion of the samples to have different standard deviations along the sequence
- Evaluate how tuning variance can affect the generated text coherence


## Final Experiments
### Generate text
Genarate 5 documents each from 2 dataset(TM2, TicketTalk) and employ the following 5 settings:
  - Normal bridge features
  - Zoomed bridge features (sigma = 2)
  - Zoomed bridge features (sigma = 3)
  - Random features
  - True embeddings

### Evaluations
1. Evaluate topic change using K-means clustering algorithm and calculate the cosine similarity between the centroids
2. Evaluate the topic with pre-trained LDA model
3. Human evaluation
4. ChatGPT evaluation



