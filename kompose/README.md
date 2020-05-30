# kompose plugin

This plugin adds completion for the [kompose](http://kompose.io/) - is a tool to help users who are familiar with docker-compose move to Kubernetes. kompose takes a Docker Compose file and translates it into Kubernetes resources.

To use it, add `kompose` to the plugins array in your zshrc file:

```zsh
plugins=(... kompose)
```

inspired by [ohmyzsh/plugins/kubectl](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl)
