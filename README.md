# Velocity Publisher

## What?

This repository contains a script and a patch to publish the internal
sources of [Velocity](https://github.com/PaperMC/Velocity) to my
[Reposilite repository](https://repo.diogotc.com).

## Why?

[Triton](https://github.com/tritonmc/Triton) requires access to internal
classes (mainly in the `proxy` package) that are not available in Velocity's
public API.  
Since Velocity does not provide a repository with access to their internal API,
I had to create my own.

## How?

This is mainly intended for me to use, since it's hardcoded to my repository.
However, if needed, that can be easily changed in the patches.

To publish a new version, just run the `publish.sh` script.

Credentials for the repository must be setup at `~/.gradle/gradle.properties`:

```
diogotcRepositoryUsername = CHANGE_ME
diogotcRepositoryPassword = CHANGE_ME
```

## Troubleshooting

It is possible that Velocity can only be build with the latest Java LTS release,
which means the `JAVA_HOME` env variable might have to be changed accordingly.
