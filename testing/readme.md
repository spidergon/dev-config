# JS and React Testing

## Documentation

- [Jest](https://facebook.github.io/jest), pour les options, la configuration, le détail des assertions prédéfinies, et les aspects avancés comme le module mocking.
- [Chai](http://chaijs.com), pour le détail des assertions prédéfinies, chaînes de langage et plugins disponibles.
- [Enzyme](http://airbnb.io/enzyme), pour le détail de l’API du Shallow Renderer, le fonctionnement du Mount Renderer si vous avez besoin du DOM, etc.
- [Chai-Enzyme](https://github.com/producthunt/chai-enzyme#readme), pour les assertions correspondantes fournies par le plugin
- [Sinon](http://sinonjs.org), pour le détail des système de spies, stubs et mocks, la simulation du temps et des accès réseau, et le super système de sandboxes.
- [Sinon-Chai](https://github.com/domenic/sinon-chai#readme), pour les assertions correspondantes fournies par le plugin.

## Tutos

- [Réalisez une application web avec React.js -> Découvrez les tests automatisés](https://openclassrooms.com/fr/courses/4664381-realisez-une-application-web-avec-react-js/4664906-decouvrez-les-tests-automatises)
- [Testez l'interface de votre site](https://openclassrooms.com/fr/courses/3504461-testez-linterface-de-votre-site)
- [React Testing Cookbook](https://egghead.io/courses/react-testing-cookbook)

## Outils

- [Services dédiés](https://github.com/marketplace/category/code-review) à l'intégration du suivi de couverture de tests avec la gestion des sources.
- [Code Coverage Done Right](https://codecov.io)

## Setup

### Installation des outils

```bash
yarn add -D chai chai-enzyme@beta chai-jest-diff chai-jest-snapshot dirty-chai enzyme enzyme-adapter-react-16 enzyme-to-json react-test-renderer sinon sinon-chai
```

### Avec Gatsby

- [Gatsby Testing](https://www.gatsbyjs.org/docs/testing/)
