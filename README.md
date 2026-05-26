# 🏢 Consulta CNPJ

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue?style=for-the-badge&logo=flutter" />
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart" />
  <img src="https://img.shields.io/badge/Architecture-Cubit%2FBLoC-purple?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=for-the-badge" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" />
</p>

---

# 🚀 Sobre o projeto

O **Consulta CNPJ** é uma aplicação desenvolvida em Flutter com foco em simplificar consultas de CNPJ para o time de suporte da **SoftwareShow** by **CacauShow**, proporcionando uma experiência rápida, organizada e responsiva.

O projeto nasceu com o objetivo de otimizar o fluxo de consultas realizadas diariamente, centralizando informações importantes de empresas em uma interface moderna e intuitiva.

Além da versão mobile, a aplicação também possui adaptação para desktop e web.

---

# ✨ Funcionalidades

- 🔎 Consulta de CNPJ em tempo real
- 📄 Exibição de dados empresariais
- 🏢 Exibição de inscrições estaduais
- ⚠️ Tratamento de erros HTTP
- ⌨️ Máscara automática no campo de busca
- 📱 Layout responsivo
- 🔄 Gerenciamento de estados
- ⏳ Loading states durante requisições
- 🧩 Arquitetura escalável
- 🌐 Deploy Web disponível

---

# 🛠️ Tecnologias utilizadas

- Flutter
- Dart
- Dio
- ChangeNotifier
- Cubit / BLoC
- Repository Pattern

---

# 🧠 Arquitetura

O projeto foi estruturado utilizando:

- **Cubit/BLoC** para gerenciamento de estado
- **Repository Pattern** para desacoplamento da camada de dados
- Separação por responsabilidades
- Estrutura escalável visando manutenção e evolução contínua

---

# 📂 Estrutura de pastas

```bash
# 📂 Estrutura de pastas

```bash
lib/
 └── src/
      ├── cubit/
      │    ├── cnpj_cubit.dart
      │    └── cnpj_state.dart
      │
      ├── data/
      │    ├── models/
      │    │    ├── cnpj_data_model.dart
      │    │    ├── cnpj_validation_model.dart
      │    │    ├── error_request_model.dart
      │    │    ├── estado_ie_model.dart
      │    │    └── inscricao_estadual_model.dart
      │    │
      │    └── repositories/
      │         └── cnpj_repository.dart
      │
      ├── pages/
      │    └── home_page.dart
      │
      ├── utils/
      │    ├── enums/
      │    ├── app_assets.dart
      │    ├── app_colors.dart
      │    ├── app_sizes.dart
      │    ├── app_text_styles.dart
      │    │
      │    └── validations/
      │         ├── validation_cnpj_mixin.dart
      │         └── validation_mask.dart
      │
      ├── widgets/
      │    ├── layouts/
      │    ├── error_validation.dart
      │    ├── footer.dart
      │    ├── forms.dart
      │    ├── header.dart
      │    ├── ie_content.dart
      │    └── response_card.dart
      │
      └── main.dart

```

     
   🌐 API utilizada   

Este projeto utiliza a API pública da CNPJ.ws:

🔗 https://docs.cnpj.ws/

____________________________________________________________________________________________________________________________


  🚧 Status do projeto

O projeto está atualmente em desenvolvimento e recebendo melhorias contínuas.

____________________________________________________________________________________________________________________________

🗺️ Roadmap

- Sistema de cache para reduzir limite da API
- Histórico de consultas
- Melhorias de performance
- Testes automatizados
- Internacionalização

____________________________________________________________________________________________________________________________
 
💻 Deploy Web

🔗 https://lucasbatistax.github.io/ConsultaCNPJ/

____________________________________________________________________________________________________________________________

👨‍💻 Autor

Desenvolvido por Lucas Batista.

____________________________________________________________________________________________________________________________


💼 LinkedIn:
https://www.linkedin.com/in/lucasbatista-apk/

📂 GitHub:
https://github.com/LucasBatistaX/Consulta_CNPJ

____________________________________________________________________________________________________________________________

📄 Licença

Este projeto está sob a licença MIT.

📸 Preview

<img width="1000" height="500" alt="image" src="https://github.com/user-attachments/assets/75603937-7e45-4053-93e4-2acfdf0243f5" />


