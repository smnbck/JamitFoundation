//  Copyright © 2020 Jamit Labs GmbH. All rights reserved.

import JamitFoundation
import UIKit

final class SampleListViewController: ListViewController<ListItemView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ListViewController"

        model = ListViewModel.init(
            height: .constant(60),
            items: [
                ListItemViewModel(title: "TableView"),
                ListItemViewModel(title: "ActionView"),
                ListItemViewModel(title: "ScrollView")
            ]
        )

        tableView.separatorStyle = .none
        tableView.delegate = self
    }

    private func showTableView() {
        let viewController = TableViewController.instantiate()
        viewController.model = .init(
            items: [
                .title(.init(title: "Lorem ipsum")),
                .item(.init(
                    imageURL: URL(string: "https://picsum.photos/id/233/200/300"),
                    description: "Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla."
                    )
                ),
                .item(.init(
                    imageURL: URL(string: "https://picsum.photos/id/234/300/200"),
                    description: "Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus."
                    )
                ),
                .title(.init(title: "Vivamus integer")),
                .item(.init(
                    imageURL: URL(string: "https://picsum.photos/id/235/300/200"),
                    description: "Vivamus integer non suscipit taciti mus etiam at primis tempor sagittis sit, euismod libero facilisi aptent elementum felis blandit cursus gravida sociis erat ante, eleifend lectus nullam dapibus netus feugiat curae curabitur est ad."
                    )
                )
            ]
        )
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func showActionView() {
        let viewController = ActionViewController.instantiate()
        viewController.model = .init(
            imageURL: URL(string: "https://picsum.photos/id/235/300/200")
        )
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func showScrollView() {
        let viewController = MyScrollViewController.instantiate()
        viewController.model = .init(
            text: """
                Lorem ipsum dolor sit amet consectetur adipiscing elit, ad lectus ante nisi fringilla pharetra praesent ligula, donec malesuada et penatibus augue iaculis. Ligula aliquet mi maecenas est facilisis interdum vestibulum sed venenatis justo ipsum, faucibus varius tortor senectus lorem convallis nam blandit penatibus. Litora congue habitant rutrum nibh elit ante, eu tristique mi ornare neque auctor eget, viverra commodo ultrices mus ad. Vivamus pharetra eleifend class platea fermentum nunc venenatis massa, donec natoque mollis lacus dui sed urna ullamcorper mus, iaculis suscipit tortor pellentesque eu sagittis phasellus. Rutrum torquent aptent pulvinar neque litora amet cum cras, scelerisque curabitur semper quisque maecenas donec lacinia ipsum, dolor eleifend habitant libero natoque sem tortor. Urna justo ullamcorper cum nulla velit vitae iaculis morbi, nostra sit ridiculus faucibus bibendum dapibus nisi.\n\nVestibulum at enim cras ultrices magnis nisl tristique iaculis, sed diam est congue viverra luctus himenaeos. Facilisis ligula inceptos felis sit blandit vulputate non, donec odio consectetur tellus platea gravida montes, aliquet ad malesuada per lorem eros, eu suspendisse himenaeos mauris porttitor fusce. Duis imperdiet mus felis tempus nostra rutrum orci auctor convallis, sapien pulvinar purus justo feugiat habitant sociis elit, massa integer hac elementum dui iaculis molestie maecenas. Scelerisque euismod dignissim suscipit parturient tempus justo aptent, cursus amet vestibulum dui mattis praesent ridiculus hac, posuere adipiscing mauris rhoncus montes iaculis. Dictumst lectus molestie cras platea ad adipiscing ultricies aenean, facilisi etiam iaculis purus libero vivamus nisi nunc, pulvinar non est malesuada semper litora consectetur. Aliquet inceptos dis risus fermentum ultricies egestas libero dolor sociis, magnis odio eleifend porta a posuere laoreet tellus vel, nam malesuada diam felis ridiculus dignissim habitasse nunc. Rhoncus cubilia aliquet magna quam venenatis fames faucibus condimentum interdum arcu ac, urna penatibus pretium fringilla himenaeos tempor velit cum nulla.\n\nMassa nibh natoque dictumst varius laoreet proin augue condimentum, nascetur platea sodales amet duis posuere vivamus donec sem, scelerisque felis tortor at iaculis lectus egestas. Penatibus dictumst faucibus fames magna viverra convallis aliquet ac, facilisis quisque turpis dapibus porttitor auctor. Luctus nisi at diam feugiat nostra nullam scelerisque, rutrum nisl bibendum morbi iaculis dolor lobortis, blandit tristique ultrices duis suscipit lorem. Vel dapibus nisl ac molestie scelerisque venenatis rutrum donec, at ridiculus maecenas tincidunt platea phasellus enim vivamus, commodo dolor odio auctor cubilia quam elementum. Pretium imperdiet sociis habitant vehicula mollis fringilla tellus viverra felis, neque et elementum risus blandit mi turpis sit sed, dictum scelerisque aliquam lectus vulputate arcu odio ultrices. Consectetur iaculis tincidunt elit vehicula primis mi posuere tempus fringilla at faucibus, felis integer aenean conubia tristique suspendisse fusce himenaeos neque quisque, feugiat hac dictum lacinia proin cubilia pellentesque etiam viverra pulvinar. Natoque consectetur quis ullamcorper ipsum duis, dis sollicitudin aptent maecenas faucibus bibendum, condimentum diam rhoncus taciti. Mattis orci interdum ad diam cursus nisl commodo semper rhoncus, amet sapien at ipsum vestibulum montes eros conubia, phasellus congue urna primis inceptos convallis mollis ornare.\n\nFringilla purus facilisis porta mus eget ad vulputate, molestie ridiculus interdum accumsan aliquam habitant hac massa, nulla sapien augue maecenas fermentum bibendum. Blandit lacinia nam metus bibendum tristique hendrerit nisi senectus elit, congue inceptos dignissim tincidunt rutrum ligula imperdiet vestibulum quisque, ornare nec primis lobortis neque cubilia sodales donec himenaeos, ultrices magna maecenas lorem commodo taciti tortor auctor. Et euismod neque dolor fringilla eleifend, etiam luctus aliquam dictum, duis tristique praesent aenean. Senectus lorem iaculis luctus interdum sapien inceptos, faucibus orci aenean ut molestie, mattis velit fames facilisis tristique. Ac nascetur sociis montes lectus maecenas torquent pretium fermentum, vel amet quis luctus dictum enim. Sociis iaculis ridiculus facilisi nascetur lectus purus mattis suscipit metus, phasellus diam vitae enim dignissim parturient inceptos mollis scelerisque, donec eu pulvinar integer odio sed platea ultricies. Dictum dis mi ut consectetur blandit nascetur lorem adipiscing vestibulum interdum, aliquet elit rutrum fames fermentum aenean proin mollis risus at vitae, quis sapien dolor metus hac potenti pharetra phasellus vehicula. Fringilla rhoncus nisl primis felis bibendum tristique taciti sed dignissim imperdiet lobortis, condimentum mattis nascetur vitae pharetra rutrum adipiscing torquent fusce ut.
            """
        )
        let scrollViewController = ScrollViewController(contentViewController: viewController)
        navigationController?.pushViewController(scrollViewController, animated: true)
    }
}

extension SampleListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            showTableView()

        case 1:
            showActionView()

        case 2:
            showScrollView()

        default:
            break
        }
    }
}
