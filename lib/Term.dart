import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangedStep;
  const TermScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  late ScrollController _scrollController;
  bool _termsReading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termsReading = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text(
            'Term & Condition',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                          'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veritatis, soluta asperiores praesentium, adipisci sint fuga vel consequuntur nostrum mollitia reiciendis quisquam? Praesentium ut eaque qui cum, dolore, voluptatibus itaque laboriosam illum, aliquid eius nulla! Qui id, cumque quam nesciunt ex minima odio veniam delectus error recusandae eaque voluptatem illo nobis, in, dolorem nisi vero quibusdam? Totam, saepe quasi fuga recusandae aliquid deleniti aperiam pariatur consequuntur hic? Enim suscipit vel accusantium expedita harum quos eligendi aut optio hic. Ab, ut ipsa exercitationem soluta voluptatem beatae quos? Eos necessitatibus, sint laudantium maiores non modi itaque eum quibusdam tenetur a sunt amet, labore possimus totam consectetur maxime similique provident in. Laudantium velit hic aperiam sapiente blanditiis voluptatibus optio consequuntur eligendi accusamus sed doloribus saepe porro, enim quod laborum quo officiis cupiditate. Accusamus, nihil sed. Soluta, repellat aspernatur quos error labore repellendus perspiciatis corrupti aliquid tenetur dolorem velit officiis. Accusantium alias error laudantium pariatur iusto consequatur velit laboriosam assumenda, delectus qui tenetur quibusdam ex repellat dolorum est quia, reiciendis dolore libero ipsam repudiandae adipisci corrupti! Nam exercitationem perspiciatis maiores qui expedita aliquam explicabo, odio facilis in harum ea. Officia quam eveniet quod amet ut similique in repellat debitis quos, qui illum saepe esse perferendis quis! Magnam et, adipisci enim error sit iusto nisi optio dolores, repellat aut nemo, in similique reiciendis qui soluta. Minima reiciendis rerum perspiciatis, impedit temporibus facilis nobis expedita! Beatae atque eos quaerat, alias, animi recusandae voluptas mollitia, consectetur perferendis tempore perspiciatis inventore. Laboriosam odit nisi recusandae, consequatur unde distinctio dolorum aliquid, itaque eum facilis, quisquam eligendi! Aperiam, sint cum. Cumque iure perferendis aperiam. Sit voluptatem hic modi placeat provident rem? Facere quaerat quia eum dignissimos error ea repellendus, in nostrum harum vitae soluta eligendi rerum, qui molestiae! Minima, quo assumenda deleniti nisi quibusdam maxime. Hic, quae corporis doloremque, minima molestias eos alias nemo voluptate enim ea aliquid accusamus officiis non, similique doloribus. Iure deserunt numquam cum nulla, dolorem illo corporis, voluptatum vitae necessitatibus aliquid, reiciendis officia expedita commodi sequi dolores animi perferendis sit soluta nostrum quibusdam. Repellat optio molestias minima possimus dolor fuga sapiente cupiditate eveniet vitae nulla, porro culpa error! Doloribus cupiditate ab aperiam totam ratione! Voluptas, ut provident tempora adipisci fuga, dolore dolor quod ad est reiciendis soluta repellat necessitatibus ex neque delectus minima hic iste. Libero, odio? Quam nemo cum beatae repellat dicta explicabo neque alias officiis magni ea, consequatur sed soluta, dolorem ducimus quos labore, accusantium porro? Atque eaque excepturi voluptatum labore doloremque vel veritatis! Harum adipisci similique praesentium ipsam doloribus, sit placeat unde suscipit soluta ipsa, dolorem accusamus reiciendis quidem autem possimus delectus itaque repellat hic sapiente. Magni alias voluptatibus accusamus consectetur iusto dignissimos! Accusamus consequuntur eum velit fuga quibusdam nobis aut! Non, doloremque! Similique maxime fugit at excepturi totam ducimus mollitia. Amet eligendi eos saepe, ipsum excepturi cum! Fugiat odit quos architecto inventore, corrupti quibusdam adipisci enim nobis minus? Doloremque, ullam quis necessitatibus provident ducimus mollitia officia obcaecati sed tempora deserunt harum temporibus. Quia eveniet officiis ipsa sed voluptates dolorum velit, labore cumque non fugiat consectetur natus cum fuga aliquid accusamus similique repellendus nisi corrupti quidem ex earum consequuntur! Esse asperiores, dolore repudiandae itaque illum nisi sunt sint dolorem, quis hic commodi tempore consequuntur! Ex suscipit aut voluptas dignissimos cum at facere dicta possimus inventore ad! Repellendus deserunt culpa, quibusdam officiis eius esse asperiores accusantium sit sint incidunt. Esse corporis eos, possimus quia impedit amet similique dolorem facilis fuga delectus omnis dolorum, ex aspernatur earum porro ea! Quo, odit. Beatae officia, quia asperiores sint odit suscipit. Fugiat facilis adipisci, maiores officia rem commodi sunt in totam vero, harum reprehenderit vitae dolorum dolorem cum tempora amet. Nobis aspernatur autem molestias fugit dicta? Pariatur adipisci autem soluta sequi, vitae voluptatem beatae deleniti numquam tempore quos dolorum, explicabo dolorem aliquid, deserunt molestias porro accusamus quibusdam magnam laudantium magni mollitia! Illum accusantium provident voluptates nisi cupiditate possimus molestiae? Molestiae, sequi iusto error laboriosam natus et repellat pariatur, debitis dolor facere, libero aliquid atque iste. Esse similique dolor dolorum itaque eveniet alias quidem a vel placeat et omnis aut qui aliquam reprehenderit, ut dolore excepturi nulla sapiente nesciunt culpa explicabo nostrum ea! Quae eveniet tempora deserunt doloremque facilis, aliquid quidem voluptates aspernatur placeat iusto, odio vero officiis mollitia impedit aliquam ad laudantium, voluptatibus recusandae delectus velit? Deleniti quasi, dolores exercitationem praesentium cupiditate eos. Voluptates veniam obcaecati illum voluptate sit! Minima fugiat quas dignissimos recusandae vero, quod esse! Corrupti libero cumque ducimus voluptatibus quasi, rerum officiis repellat eos dolorem numquam autem, ratione vitae officia provident commodi minima vel aut cum nisi dicta placeat culpa tempora odit molestiae! Ipsum qui rerum dolorum natus corrupti illum soluta ab, nostrum provident iusto totam ratione consequatur dolore impedit architecto porro a! Debitis dignissimos aliquid vel, nam quia incidunt quisquam nisi dolores totam quae magnam praesentium eos dicta explicabo illum non voluptate doloribus expedita dolorum consequatur. Voluptatum odit perspiciatis fugit ad possimus molestiae dolorum illum commodi animi doloremque sit, officiis mollitia nam incidunt, ut porro veritatis dolore, asperiores neque minus voluptatibus ab labore impedit. Maxime, accusantium ratione, neque odit error explicabo adipisci, sed dicta eligendi earum nulla. Corporis nam beatae exercitationem eveniet enim esse doloremque iusto animi sequi, magnam quis, laboriosam, doloribus aliquid. Saepe ratione, ad cum labore dolorem at necessitatibus maxime dolorum molestiae earum unde explicabo quaerat corrupti quia. Quibusdam ipsum, facilis cupiditate totam quae soluta illo odit obcaecati. Explicabo atque maiores quidem nostrum adipisci iusto et quas praesentium excepturi nesciunt quibusdam quae in, at dicta quaerat facere unde, consectetur recusandae harum! Distinctio aut mollitia perferendis dolorum fugiat ea et, pariatur voluptas, neque iure temporibus molestiae, tempora nobis vero reiciendis esse veniam eius? Rem perspiciatis alias, natus vero animi at neque minima id fuga consequuntur, fugit quae dignissimos nam eaque amet tenetur placeat autem asperiores atque. Quasi rem culpa, labore vero cum adipisci cupiditate. Enim rem voluptatibus dignissimos quas nemo velit at aliquam possimus, consectetur sequi ratione. Exercitationem a necessitatibus molestias optio commodi! Maiores, ab esse consequuntur unde quas officia excepturi, doloremque voluptas suscipit soluta doloribus dolorem praesentium fugiat, vel a error in fuga.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
                onPressed:
                    !_termsReading ? null : () => widget.onChangedStep(2),
                child: Text(
                  'accepte & continuer'.toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
