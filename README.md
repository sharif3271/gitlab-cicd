# gitlab-cicd
**An example for ci/cd using gitlab for front projects.**

This repository serves as a comprehensive guide and example for dockerizing front-end projects, enabling you to containerize your web applications with ease. Dockerization provides numerous benefits, including improved portability, reproducibility, and scalability. Whether you're a beginner or an experienced developer, this repository will help you understand and implement Docker for your front-end projects.

First and foremost, it's important to highlight that I was specifically tasked with installing GitLab on the company's domain instead of utilizing gitlab.com. While the reasons behind this requirement are beyond the scope of this guide, it's worth mentioning that such scenarios may not commonly arise in typical use cases. BTW, the gitLab-ce folder contains Docker Compose files and accompanying descriptions. These resources simplify the configuration and launch of the GitLab CE environment using Docker Compose. Follow the provided instructions for an effortless setup process.

## Docker
Put the **nginx.default.conf** and **Dockerfile** in the root directory of your project.
The output directory for the built project is designated as /build.

You can build image of your project by

```
sudo docker build .
```






## CI/CD
for continuous deployment, we need to put '.gitlab-ci.yml' in the root directory of the project.
