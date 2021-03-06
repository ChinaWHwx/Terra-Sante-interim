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
                    hintText: "Pr??nom*",
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
                                                    "Accord de confidentialit??",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "Cette application respecte et prot??ge la vie priv??e de tous les utilisateurs du service. Afin de vous fournir des services plus pr??cis et personnalis??s, cette application utilisera et divulguera vos informations personnelles conform??ment ?? la pr??sente politique de confidentialit??. Toutefois, cette application traitera ces informations avec un haut degr?? de diligence et de prudence. Sauf disposition contraire de la pr??sente politique de confidentialit??, cette application ne divulguera ni ne fournira ces informations ?? des tiers sans votre autorisation pr??alable. Cette application mettra ?? jour cette politique de confidentialit?? de temps ?? autre. En acceptant le pr??sent accord d'utilisation des services de l'application, vous ??tes r??put?? avoir accept?? l'int??gralit?? du contenu de la pr??sente politique de confidentialit??. La pr??sente politique de confidentialit?? fait partie int??grante du pr??sent contrat d'utilisation des services applicatifs.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                  Text(
                                                    "1. Port??e de l'application                                                                ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "a) Apr??s avoir utilis?? ce service web d'application, vous serez en mesure d'obtenir les donn??es de votre r??seau pour vous aider ?? choisir l'op??rateur fiable.",
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
                                                    "a) Cette application ne fournit pas, ne vend pas, ne loue pas, ne partage pas ou n'??change pas vos informations personnelles ?? un tiers non li??, ?? moins que vous n'ayez obtenu votre permission au pr??alable, ou que le tiers et cette application (y compris les affili??s de cette application) soient individuellement ou conjointement Vous fournissez le service, et apr??s que le service soit termin??, il sera bloqu?? pour acc??der ?? tout ce mat??riel auquel il a pu acc??der auparavant.",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "b) Cette application ne permet pas non plus ?? un tiers de collecter, modifier, vendre ou distribuer vos informations personnelles par quelque moyen que ce soit. Tout utilisateur de cette plate-forme d'application qui s'engage dans les activit??s ci-dessus, une fois trouv??, l'application a le droit de r??silier imm??diatement l'accord de service avec l'utilisateur.",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "c) Dans le but de servir l'utilisateur, l'application peut utiliser les informations que vous utilisez pour vous fournir des informations qui vous int??ressent, y compris, mais sans s'y limiter, pour vous envoyer des informations sur les produits et services, ou pour partager des informations avec le partenaire de l'application afin qu'il puisse vous envoyer des informations sur ses produits et services (ce dernier point n??cessite votre consentement pr??alable).",
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
                                                    "Dans les circonstances suivantes, cette application divulguera vos informations personnelles, en tout ou en partie, conform??ment ?? vos souhaits personnels ou ?? la loi :",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    "a) pour les divulguer ?? des tiers avec votre consentement pr??alable;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "b) pour fournir les produits et services que vous demandez, vous devez partager vos informations personnelles avec des tiers ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "c) divulgation ?? des tiers ou ?? des autorit??s administratives ou judiciaires conform??ment aux dispositions pertinentes de la loi, ou ?? la demande des autorit??s administratives ou judiciaires ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "d) Si vous ??tes un plaignant qualifi?? en mati??re de propri??t?? intellectuelle et que vous avez d??pos?? une plainte, celle-ci doit ??tre divulgu??e au d??fendeur ?? la demande du plaignant afin que les deux parties puissent traiter les ??ventuels litiges relatifs aux droits ;",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "e) Autres divulgations que cette application consid??re appropri??es conform??ment aux lois, r??glements ou politiques du site web.",
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Text(
                                                    "4. S??curit?? des informations                                                        ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "a) Nous ne soumettrons pas ou ne t??l??chargerons pas vos informations, celles-ci sont donc absolument s??res.",
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                text: 'conditions g??n??rales',
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
