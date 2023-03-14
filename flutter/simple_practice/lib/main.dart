import 'package:flutter/material.dart';

void main() {
  runApp(MyAppBar());
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp 안드로이드 스타일 앱 제작 위젯
    return MaterialApp(
      // title : 앱의 제목
      title: "모바일 ID",
      // theme : 앱의 색상, 글꼴 / ThemeData 객체
      // debug ~ : 디버그 모드 배너 여부
      debugShowCheckedModeBanner: false,
      // routes 생략
      // locale : 앱의 언어를 사용하는 언어에 맞게 설정 할 수 있다.
      // home : 앱 실행시 표시되는 위젯

      home: Scaffold(
        endDrawer: Drawer(),
         appBar: AppBar(
           leading: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKoAAACuCAMAAACROWamAAAAdVBMVEX///8AV6aPtdgfa7Hv9PkPYat/q9IFWqj7/P4LXqovdrYGW6ifwN32+fzf6vQjbrKHsNXn7/dvoM0/gby/1elflsfX5fETZK1Hhr9Pi8KyzOQpcrRnm8rP3+42e7moxuHH2uujwt+uyuNhl8i70ud2pc+WutoQywhCAAAYQUlEQVR4nNVdh5KruBJF5JyjCcbY8P+f+BRBgOQw47mvtqt279hgOEitzmoU5UuUjNe4a7K2MjwAyTOqNmu6+Dom37rDN6j006yC8KqhLuZYXfzbzV/UeC7qAX+dpX75/8YIaYxrA4CoMadeFx3X+8lsIgCMOh7/MbQdjGtRASczH0KQuzMfZuaAqri+PPMvKLg2Hmjn3H73B3Y+t8BrrsFfohLQWDjAjcNPfxbGLnCK8Q8ASShYXKCZopUSDBoiRXE1Hf93ptLUgLv8m6FNZsOqL+J5D4HlQlIUA+j4PxHZl9oy5r+XYWHnOek28eF+bEOgkT/EUAP2gGHqeN3H7PMRJalVmRyAm1XvjnNQh8zaQS1bNVG1hX3UzcpK/25kA9NxzN1IJRbYDSsH1YDilj/36kANBvztCx1d7Y949qpZKbt5aNb1DGewAakE6okBdH+AmmvuuW9SS7v+AdAyAzUbQTu1ANT0VankwOAHRg41mNu2UWcNgFEJVrhlDbJv61w7dqLL+qkAw6joNWigVAILd5ocagplgwGi8dHB6UE/pHTRnPhtLfIO9YOVbqOXAxddvQSVoiygfQtqBXJF8R0HjWEN1O1AkFoDxxS/JdVpR+5jDGYFQ4UoAwNh2KA6BSbrCNUFF/zLFK1Fa7f0x9ZRle+Q3oBut1IXMMBRhQwQK2hmG+5UA2CqvCPUh2WoiV4AOP8m0MbdDYIONF+xY0bNmA7YDZCpqQYawgYWJ8sDHdOJAUJldNEzWHCuoUkI9uJYmYwD+h+R7w0ntZLDhQwiJCMTqNEJO+zpCDXS5jKfi7RHnF6NXXw4Pxw8X/kd2Sm4o8k/oLX7HK2PvLGg3QKqsyA/QA1S6A5kPv5ciB5NCe4g/ZUkCGoPc/xFwPjIvgLDLYATeh6Qm2/j/1ayL9C8dYpcCRwglqSqV/9CdyWu8UD/LoD8y1GZGsC5YymjguK9q6nw2SJzPDyYWdAnehjuj42CMtIQFsgE8N+Jk0mKnsGbqnR+9eNjyKnv4APuF7udgYx+02vRD1VXqUWIRYMGwKdVQWRzz+zWUny2roehrksYrwfOYZrtO2AIw0j7Eda+wvORDKAO0MCWk7MJLQGQoPfNYoioZIU+ajQUpt8fgMFlevplDAw6ZYlb/UBzUaRlBDobDuyQxJaRy05Obp1rAUvLilm9TZc8v0w3dS4yDX7pdrdNftgV2F/ERzeZHGv5OdZQw0hzA6qkxIXapAMyRspnuFzabhkFCzgYl64FwJ0pwMDcC/8biNCveo1JsMTVPvQOkihCSK+WN0GeBV5fw3EVndhDuw7690+XboLiBdosGK7copZLCEcj4O/8Nunk2XQATbwHtN2ABZpkKboDBwTQWq6OX4op7yow+Py4L4lSGsgmGNHkQ4siI9/D+fzAILBrg0x2A6rYcqYcgNRH4Sdw458nrkB2fT9kMWWAc8x6oD0iUNtKWAHoCtgNiOiR0qjf11udxVgL+RgjHFe1A5Xaz8wcVbBr5HUfipayc5yZgV0syMO6orcIL5QMxnqx3OreveKyWfa664aL51wKwqoVoN/bauX9xOFMUs+IV+0E1xLUAK2ObmlxgnrZuRZPaPR29gQcyt4EWD8nlkvv0oLuh0ow6Szm+sD12hWggqviAvZ2xOyNb11Ly3gzowFtGFotQmrXhFeTBmS/8DH6DK5RcivIXw4E1TsHa8vOtDdGws6q3Vl3qKFjPCFQEWCD/1pVv7Qtb1VFnGp4Sai8dY33JDAlVfZ6acXWXvjYmOdjZP1isx8als2voyJwXgoiuGa4bBX1fsKVg6P1faLeMs9fXoDVQc8O2b596/zWXMfkOxHhoZvlCcMWpvWCx4J2EA18CkWqi5bo5LRfCjGULrV+8ko4gPbQPre0Z0eMJLzg702m/r5AkE/JBJatYCLh147IsVmpt5555HYHhBf9KZmA8KhEj6rPWMAe3Cfrzm7e9Cpt339PM/pW8+x+7iA/qIJRfjConYv86EZJDP1tzXxLSjycZ67fCKRzrBup7BCSt84bJpTu1x5xAqzaf8NAyp3sCdbUkF2iq+QXt5vXSJOF4STk1ctLMzl3nvCAbkjslvLZmiqs57NvY1/gTO6rzNbFeuKaq5ZYINWt/KKxICyxwezj2hHhJOTU8fgE7u2JXrLbWvT1CCbR15gmqZQKRrUx5DBX97VWRa4XJhPIo+wTGAXf1q70B6UjnKTkmg7ea5iMrCG9Cnm3kOgdRK5gWJ8MatC6xxHRH3GjvY9yI62JT9njwG2l61k0rA0/qOFOTxQG/9TJ5YcoebzmhZe7pbGbNZ3nFfdoH8Llz3l4KgCc1TJxzt9S/xLlRlVtrve48uyaO4CLBdxOQqDTuEWKnNPV1Umq7bnCb+EktAEqOHu+gUc2oWBrB9mqO7zEQCHwcf0ll4D+MtQNns6NRwGPcBI+PoQO1d3ni+atKvbCz82XoXL3nMCqYkoX1NwR/RCGbg/SaOWGQOOlhf5dqPwdGy043x1TwWfGoKSSKfiYz598GarD3yj0ZEorByP3qYskpyUHY+urUI3dpWdDZjdG3MIKDNkTpQdj620UxZInelAuQhtGCFWvZCZozKWcL0BirCXHWXlilXCUTcgL92M4TPYsP03bXzv2JMMaAi4TLVP/6TEl9YZlAlzM9ygNh9dq9y7UQDqs7rropfOvO0eDqhLc0YmGpjNr9omIlsmCf+MVoEsf7wBVMR2JKbBxwEOS9ILS9jglB7XapldWX2fS2xPrIbc2LGRYzf4ad9nu98e51GVCoFx1Zypb/9opGxKdRqaYbA4qTZIlZPSJx3nFf1M5rudL50igQu0uARIx1mglPPIAJ0dctKAr1WZQBzrElBuIkBl5qHgEZFB7IMmGpVQL8AtsR815tYlljxsSqMzsnOj3EwXwLlSBxUeIiSjfErsSund2CyVisioRVIOKvIBioXm/y/tQF0+8sAIaLOkkQYwbOMs5mUSPdHOzG2PAzz/9+BbUZJcX4Wgg15KxapOdv2NQ0Y31JI8HhjU1GTIoH8lXzCbO3oeqZBIOIMyqW8jKOw984AhyBzxUTBeGq1stI3U/qCH4AOrioauMpxTT1UIAH3ie41OQSahtsyNUFMfHtBW4UCTMeug+gUqWeA80dT92CeauuEJ/Q9PbcJvZzzFidJ5Q2p6hskFcReKFnkKhE2XwLlTCjQH8jbHWcwZodiukHYqMxwCA5zYF4phWFC8SQA2o4mTD0JCPNI4baudfPINKmDLt1QhYzYhi0DGOsGTIDHDxqqq08WYWA+W8grHwG1AZNpbSJ6NIqzzCVb29CfXKHtme4JKNHDZhKTzZxqn4gNWf6FBVZ8hhFBuGIqhU+9OglsojzfGjax9ATTh9dMdnRRni+sWzISOj4Qj5HJePPD+zElxICJXoeOYPI/Flkb8Dk4SJlg+gKhoz5uwUGr43VKUR6MhrCfF/aM1xUGOk+xthDE4E9cEzJxJNLjEdrnTyK/8TqDWVrEGzzg25bq74Hvqc8KVvDdK0rTC/IYJKzBFac7sAF/N4sKxcek8/gToTwYNymjwCG6pWEx+yjc1b0B2oaW1xQPUl1Aca0eBScJ5N7n4C9YYtklID1l4DRabSEfVZbGlOnKYsxe72Swaww4u5D7NHRCa8C3XEdv4MnIM9CK2AhkDsLZo6DWaAkgUPga0igTpxy4qKKp6W2/EXT6ESvTSfCoMgTmqzIJFjZelcVETsLJboOkKo1JDCDPM4IdWCRga1VUTkoYn3TzY2tP/W5WPSASFWaiz2HURQC/LViP5eTlD9xJNBFd9CQ9Nztp7mlihXTGHaekAjJYnoyLtQ6Z2xYRUfkQ7MRngbKtaeZ6jQVDHEGaC7wFgVQ+0ZJkTmAalT2hQY56YbT6FibT9V9wNa1VBEVqmisNV2pJO9us4/mZzjqPqKT//ajJ81RieGiu98TuksjiJJSL0NlS4kWpR+3SOdVz8LbF5R/hbUYxLFBxzU8KqqD2bK129CHels0tP3sWJcru7snkUhdRBPoBb1CWoS7KCWNZYAFa2Ceg9qMlNp77H4zMAhhbKl9wCLELG4U7gqMqFBRKD6oEln04xVdfH9GOUpNqiXVcOQGt0XDDCgfQrN5r+uYiRfdYBxRRkpeIjFue5oXO1piwUZwlvgO/tgR/gbuqzg01v3XLdDVSOGywuoB+JO9glWC5eMIemvqutp0TCssbaqeg51yLJscF1X0zQPQYXLigirjMXFFH3A4ywRVmKouzx5mdZZsWDOxLFV1R4EP7EumgQqFlYLb4IECCIUVlgF9FzxYGIg6S9RAaIEmyfb2kN8VRWV6p6QLooMKlYB6ilcBlUAVqwxn+hOkW0jUaxnqF5BHvLk3uh0PcEh0YvDj7QLupRzujy+RYwBHeNocOywuXLnHakJ+SsScwWakcZG2nBfqz7MQ03bla0mzGB5wxmGGq5i1fbJoJWwuTK5x1w5NFcwFxf8r3J0dYkRaEiEIRKgxhb1wO4mDxWO7DQ3mTtkBdt7LYGa0NDXcZYgThxcS3lgV1SsKDGtn0FFGf/Zf+SXfTGDrMpEAnWUhNDh7Jvo3j6fnWwQSonDYj2FKqQnUEURSuKwnI9AT9a30DYvb6sFu5CdiWI3UKYNvwcVu4HBqT7WtnzqXKerI+t7xEsSOtfB30PFGh16ls5QxFO5DiByrknIImhBu5Rhv8DlQCochSEL/btQRfEbHLJY9arVNuZCNpSF0MHGmnUT0y25wEN0ob+HSgJBUz7ezKZlAi4ggSAaXlMCEwtCY6ZmoDC8Fv451CvPFXY5xYVrsfAaDVqiA6PvcwUuoqDll6EKij7Ts0JP0NrBlkF8ZsoESWFRKLj/c6iyxAQ2Vc56qcTJA1HU8s+hkgD7Yh6PEB12YMpEHUjGSZS2KIHExvgBVEcEFactQm/VxkxYkbQFP+a6D71n1EcFHRAkgxJA/f3fQ4UiWmBm4Pk06W/GATi0FouyMLYCdNqexGkuMbBG9L0oxVYBWRr0U6gPkcNCUmwRYTKcp6dROxqu8tGg927mka4o0E0j34sSl41wL/BPoM6n3cwKTVwm5P4XCzhFTbZJs8QlYeUWDAvmhxqwGjBBOhiqkUps85PM9QzcRa0y0zSLBv6vlkK1KyDY/oPTwT0O1aJyuxI9ETprXeKYWWN6yRtYDXBBkl13gCTGAaFqXZKD5JbntaqO011VQ1MKFT7zuaaCJNlLoCWKTwsDSeR/lbZYgiZkuegV536eSxdQvEETLiyIapjCXFOGAq4YK4QDGuHQihAqOnJWMaR0AQ64VeFsOIaKbIK1dIEvCCkAV+6knmt0EgcAoZTGDODnkTLcoalYlAjkTcqr8IlPxSZrQQiOJlEPekFzvBWEcGU2j5WD0DSfy2xIXkokBChUS7+MEOoFxdmSRgb1YQFBhfVaZjPeG7qJMIiQ8cwVWq3FS3BeiDANFlxUfCpeQjsythoFAVQwxGYADBvK54xEJwVQw2pXIMtuLiheSvEUcj7husBSHHyyH3eDCKVTSRi6DzzWniUugxq7cwnFEOQTs5QIq6QVPu25JMyeMZvwFSuMA0YUsR1TyPKD+sC3OBbaIXqQrZIiqMsFLHZwBx2KCPqTGKqOTONzuQwrtOvzdSaT64Jz63xvF1q+6AID4eQaVR3LFzGhgP9pK/+qApxDkuUIFRvxgvjzjNdZCY8ah+fgyxdpUSjO5Ef7RlX7olBKaGkdd2C/q61KlCUUlH6RolBdQ/FYZ3fPfVEoKbVNgZYehf6+1JbHetjX/ibU3BAjpaW2d8u3k2w9QUf32JfakgLm63bzZPJp+f5FuBcC+rUsP/0R1NgSzz4tYCYCX3ew6rHHFO0cPRYw78vCcxzGsYqQPK7IB36g0eHDVO9AxYL21BYD35+UhdckDD/cc7UbHBLpPpaF74rtcVhUay1SOsMX23NUtuik7bZvQH1oAh4nVGAdmdPNkjTpbaA+Kqdie34LA1Q0HqpxCRa8x3y/v2CjAEciizUS+Aqqft+dvyN6izt6/GxMjGhozIk803kLw2bxhda6YsIIpyP2G0M2uqEEhHZ7D+oNDalkD+y2MQSzXsPfTlAmuG63mTn53ONYlmC7DX0UnBzMytdQS3zmIH7k3XabqWWJBPIRjOcfsE1MA+B8KmLZSjYxQVrQ6vJQn7NnUPUUxUmkraAKhxeR9gLHf+3xJtrEBAUFGVaNFyYhKUK+SreGhdh6MtRADjVQsdlSy/YJxoRRHwWbuiA20N43HBESxQogt0ZYCLQ7G68ilkksK4GEghevVy2TQSV7iSLp1kI6DNDa2qpq0DSg7X92JM5J0W2MzQ6qSh/1yTZGO35Z1+7E0i2gdBsjtGF2S67U0BzLtjHSbaMLm+ydWHm6OZTwopSe9S5km0Obo7bF0RTpxlpyRHfozst6j/XpltuwOBetMKDFk82sbMvtTNZyube35Vtu4YCOCgtuoI5ru4NBfSzS2VEpBmsVzzbpPyjSG/T64EDoLelDQ7llfNZ9A28PDyJvxGmnw+ZCu7Gebg8vuxMbvGh34lt0D38eO8Bb7BqQBqJkjJ5uD6eb7nvHqNFSOHo/9v3Fpvtk3u3GqF50Lo3B1hgCmbEuC+uQIXm66R51EUHDgLxbYQPHl60MAn8N1Lv+i1PXVgZ4DaA8JzWpYxwiKr2nrQyQDkUPqhqSqZ4c91WDCNSbF3dZe06l6xAr6GIQ2Yn2EGHnv/dQJxPbfdEgAp6HH5XVu5rNQYb00eu2G/qyvNxvv7bd0Oe1b5jvAAi/r7CeNb2XrV3iXcZSH9ZYSkmWI7T9vtPMZH2abq1TGVF4iFiebzQzUex61yIGYqUsM7FWKdeqkmrZ9+i2u0K4RclQKSjm4KR6p/vSvvEO0ni4SagOlyhtZPK1xjuUhq1zHO2Y817jHdTOaKfOgh63emuAV1iMTy+R9YV2RowFVK5SSR/QzdL32hmJezTFyPCEvETr36Cd5v2k33MyewY1XeyuopATi7OfEgkACXXWUdTkFp6YpFqjYvr8k9Zb3tp6y0aGbkMEabbvHfhB662toRmjpAIevurCjSTq91xPHzQ0q7dO0+hXD6gtPJwnVXe1ah81NGNt4ta7ZMDj+rvOMb3hT9vEhXQ0UT831IM54Qu1PmsTd2yBB/WIf1vbDkJBuLlJfVqBqpieXlyfCnjSGmMKZgeM9AgydKE04Tjg0+Z7a0tDTBOO2/es/DmowG6GUHN91NLw2BMSn9vjlobtzA29/XC2PFCJkjBdvHLA5y0N10aR6C8DYAnC2HcBNHewQQv9DgdbsjtqFPnI8wdqFHnHe0HbzucaRT7QT30+vop8M4txwK+aWiqqsw8x2xG7bjnwqyEY/bkYorWO0tGGYvZ3LUz0tHLwfAyA6/Fixw7bR/gzpGtTU2TxHLas0Mv1QNQ9MtCTMEx0oVkUUqjj/pJ6XOA+9z9tarq2ioVmGp+tdFdGS8GThiliiqk7vMs5Mfp5q1g0H8SdCgeQsVY/j3Vnlc5a5sXm8z5ApTkw1gxpxW1inLv2PpyfN+Dd2hoHHXQ/yO2ytWraBDQlAtdZJ8IahLhRs44qLguKYqApCJYe3+h3bY3xpidi+l1pW3vInzSECWXWulFjlyKe5juxFEKo42iGGW1loo9FliJcnDsnD5rBv2sWrZxacJvAoVdc1jbh2b6pru6xZ0jpNpUJoLffZOj0VTHte0N+oQW3cmxsXrDBsDXGbYFzCGgNzLFV6TaVwBiSgvrANdurXHPlvd9pbH5oF7/2Nb2tMis/VnbUbFR9dnIBQhxed3v4HX0uJOrItHytXbyCSrJbphhDj9iSdrvKLBMcypwKNt4TK8p5IE8pQBsC0sRjv9MWutexlez4+BFxrzaYLHAfk7xeZdaRVZE5Q9HkrCjHrjDTou72mkY5IKD/fPfVBlj5aVQ29jSSyhbwiVUhk9Bj/coaHTEbsA7dmfhff2GEsnsNR3KZ/FVmnVl1XU2oLq9kJ5nrZbgA/l+8hgMR/3KTvlkrM06sClcOrd3TtwZO2pp9nNYGr3/1chPl8MqYkkE9sSpcTaz8fTP2UjAezvrLV8YouCtxtX+/DRL4xwDGyObd3rpL53tzHDlmP+qL/AEdXm+ErYPxcI7O6sbUzdYbQcVFdv7B640Q7V8aFTzm4SQVG2BBmamblrVGvC6PdVD/1UujMLzDq7hOwgYVUngasOaMVktx9C9fxYXpxQvObL/JavgwyUFf/vMXnGH6z7w2DtN/5WV8lP4jrzhk9B95ceRKf/86zv8B3kxpqv7Td88AAAAASUVORK5CYII='),
        title: Center(
            child: Text(
              '모바일 ID',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: SizedBox(),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
                bottom: 60,
              ),
            child: AppBar(
              automaticallyImplyLeading: false,
              leading: null,
              backgroundColor: Colors.white,
            ),
          ),
          ),
          // drawer : 서랍, 사이드 메뉴 등

        // bottomNavigationBar : 화면 이동 네비게이션
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.mobile_friendly),
              label: "모바일ID",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: "D-Food",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: "D-pay",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chair),
              label: "좌석배정",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              label: "환경설정",
              icon: Icon(Icons.settings),
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}



