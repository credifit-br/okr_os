# OKR OS - an open source OKR management system

![Flutter CI](https://github.com/credifit-br/okr_os/workflows/Flutter%20CI/badge.svg)
[![codecov](https://codecov.io/gh/credifit-br/okr_os/branch/master/graph/badge.svg)](https://codecov.io/gh/credifit-br/okr_os)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

## About OKR OS

OKR OS is inspired in tools such as [Perdoo](https://www.perdoo.com), based in the concept of [OKR (Objectives and Key Results)](https://en.wikipedia.org/wiki/OKR).

### Open Source

The idea behind this project is to have an excellent OKR tool, that will always be free, and permanently improved.

We with to have many active contributors that focus on its own problems, and therefore, most likely solving problems of many other people.

### OKR

"Objectives and key results (OKR) is a framework for defining and tracking objectives and their outcomes.

OKRs comprise an objective — a clearly defined goal — and one or more key results — specific measures used to track the achievement of that goal. The goal of OKR is to define how to achieve objectives through concrete, specific and measurable actions. Key results can be measured on a 0-100% scale or any numerical unit. Objectives should also be supported by initiatives, which are the plans and activities that help to achieve the objective and move forward the key results." _(source: wikipedia)_

## Coding

This project is being developed using:

- Toolkit: Flutter (focus on [Flutter-web](https://flutter.dev/web) and [Flutter-desktop](https://flutter.dev/desktop))
- Project Structure: [Modular](https://pub.dev/packages/flutter_modular)
- Package manager and template generator: [Slidy](https://pub.dev/packages/slidy)

## Debug

Use port 65123 to debug, since Firebase Auth is set to localhost:65123

`flutter run -d chrome --web-port 65123`

Since Google Sign In cannot be done in a browser running on debug mode, you need to open a new instance of Chrome and access `localhost:65123` to test it.

### Login with Email and Password

- Username: test@test.com.br
- Password: test123

## How to contribute

We wish to make this tool useful to ourselves! Therefore, the main idea behind contributing is getting things done to be used right away.

Check the [project page](https://github.com/credifit-br/okr_os/projects) and see if you can help in any of the issues already in the backlog.

Or, simply fork the project and fire the Pull Requests!
