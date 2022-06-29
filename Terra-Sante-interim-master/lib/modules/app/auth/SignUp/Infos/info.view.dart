import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Infos/info.controller.dart';
import 'package:flutter_application_1/shared/utils/theme.utils.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class InfoView extends GetView<InfoController> {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ThemeUtils.appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: size.height * 0.15),
                  Text(
                    controller.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    controller.bonjour,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.08),
                  Obx(
                    () => DropdownButton(
                      iconSize: 24,
                      hint: const Text(
                        'Sex',
                      ),
                      onChanged: (newValue) {
                        controller.setSelected(newValue);
                      },
                      value: controller.selected.value,
                      items: controller.dropdownText
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  RoundedInputField(
                    textEditingController: controller.prenomEditingController,
                    icon: Icons.person,
                    hintText: "Prénom*",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    textEditingController: controller.nomEditingController,
                    icon: Icons.add_reaction_sharp,
                    hintText: "Nom*",
                    onChanged: (value) {},
                  ),
                  const Text(
                    "Choissiez votre date de naissance*",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(1958, 1, 1),
                          maxTime: DateTime(2098, 9, 10), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.fr);
                    },
                    child: const Text('Calendrier'),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(() => Checkbox(
                          value: controller.isChecked.value,
                          onChanged: (value) {
                            controller.toggleIsChecked(value);
                          })),
                      SizedBox(
                        height: 22,
                        child: RichText(
                          text: TextSpan(
                            text: 'J\'accepte les ',
                            style: Get.textTheme.bodyText1,
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.dialog(
                                        Scaffold(
                                          body: SingleChildScrollView(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(24.0),
                                              child: Column(
                                                children: const [
                                                  Text(
                                                    "Accord de confidentialité",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "Cette application respecte et protège la vie privée de tous les utilisateurs du service. Afin de vous fournir des services plus précis et personnalisés, cette application utilisera et divulguera vos informations personnelles conformément à la présente politique de confidentialité. Toutefois, cette application traitera ces informations avec un haut degré de diligence et de prudence. Sauf disposition contraire de la présente politique de confidentialité, cette application ne divulguera ni ne fournira ces informations à des tiers sans votre autorisation préalable. Cette application mettra à jour cette politique de confidentialité de temps à autre. En acceptant le présent accord d'utilisation des services de l'application, vous êtes réputé avoir accepté l'intégralité du contenu de la présente politique de confidentialité. La présente politique de confidentialité fait partie intégrante du présent contrat d'utilisation des services applicatifs.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                  Text(
                                                    "1. Portée de l'application                                                                ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "a) Après avoir utilisé ce service web d'application, vous serez en mesure d'obtenir les données de votre réseau pour vous aider à choisir l'opérateur fiable.",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "2. Utilisation des informations                                                        ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "a) Cette application ne fournit pas, ne vend pas, ne loue pas, ne partage pas ou n'échange pas vos informations personnelles à un tiers non lié, à moins que vous n'ayez obtenu votre permission au préalable, ou que le tiers et cette application (y compris les affiliés de cette application) soient individuellement ou conjointement Vous fournissez le service, et après que le service soit terminé, il sera bloqué pour accéder à tout ce matériel auquel il a pu accéder auparavant.",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "b) Cette application ne permet pas non plus à un tiers de collecter, modifier, vendre ou distribuer vos informations personnelles par quelque moyen que ce soit. Tout utilisateur de cette plate-forme d'application qui s'engage dans les activités ci-dessus, une fois trouvé, l'application a le droit de résilier immédiatement l'accord de service avec l'utilisateur.",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "c) Dans le but de servir l'utilisateur, l'application peut utiliser les informations que vous utilisez pour vous fournir des informations qui vous intéressent, y compris, mais sans s'y limiter, pour vous envoyer des informations sur les produits et services, ou pour partager des informations avec le partenaire de l'application afin qu'il puisse vous envoyer des informations sur ses produits et services (ce dernier point nécessite votre consentement préalable).",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "3. Divulgation d'informations                                                        ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "Dans les circonstances suivantes, cette application divulguera vos informations personnelles, en tout ou en partie, conformément à vos souhaits personnels ou à la loi :",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "a) pour les divulguer à des tiers avec votre consentement préalable;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "b) pour fournir les produits et services que vous demandez, vous devez partager vos informations personnelles avec des tiers ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "c) divulgation à des tiers ou à des autorités administratives ou judiciaires conformément aux dispositions pertinentes de la loi, ou à la demande des autorités administratives ou judiciaires ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "d) Si vous êtes un plaignant qualifié en matière de propriété intellectuelle et que vous avez déposé une plainte, celle-ci doit être divulguée au défendeur à la demande du plaignant afin que les deux parties puissent traiter les éventuels litiges relatifs aux droits ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "e) Autres divulgations que cette application considère appropriées conformément aux lois, règlements ou politiques du site web.",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "4. Sécurité des informations                                                        ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "a) Nous ne soumettrons pas ou ne téléchargerons pas vos informations, celles-ci sont donc absolument sûres.",
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                text: 'conditions générales',
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(() => controller.errorMessage.isNotEmpty
                      ? Text(
                          controller.errorMessage.value,
                          style: const TextStyle(color: Colors.red),
                        )
                      : SizedBox(height: size.height * 0.03)),
                  RoundedButton(
                    text: controller.enregistrer,
                    onTap: () => controller.validateForm(),
                  ),
                ]),
          ],
        ),
      ),
    )));
  }
}
