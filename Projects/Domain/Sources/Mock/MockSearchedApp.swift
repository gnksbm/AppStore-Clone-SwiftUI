//
//  MockSearchedApp.swift
//  Domain
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public extension SearchedApp {
    static let sampleDatas: [Self] = [
        SearchedApp(
            iconURL: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/21/eb/24/21eb24df-221e-221b-8933-2ee6c06fa5b8/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-85-220.png/60x60bb.jpg")!,
            title: "카카오톡",
            category: "소셜 네트워킹",
            rating: 2.964710000000001,
            ratingCount: 131745,
            developer: "Kakao Corp.",
            screenshotList: [
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/82/ca/dd/82cadd77-8cd1-262a-ee97-f2306153d388/a7f2e38b-8f00-4746-8914-6ac3a7e3e909_Kakaotalk_iOS_SC_KR_01.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/1d/86/25/1d86253d-577e-1835-3ab5-7c1fba72fb39/6ee05292-ada3-45db-affb-c3bafac99dc4_Kakaotalk_iOS_SC_KR_02.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/92/16/73/92167303-0d5c-dfa0-0fa4-cc47573b4bae/8b27e50b-fc64-41f0-8c49-9f678dd59fa4_Kakaotalk_iOS_SC_KR_03.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/02/fc/46/02fc469b-e28f-968b-19aa-cf5dba61c0b5/7d727ad7-1a9a-4d7d-a5aa-b98a6244bfd8_Kakaotalk_iOS_SC_KR_04.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/37/3a/1e/373a1ed5-d22b-abce-a1f1-c72c5576a3cd/a8804301-6e1c-4318-ad0c-13c89e9de9dd_Kakaotalk_iOS_SC_KR_06.jpg/392x696bb.jpg")!
            ]
        ),
        SearchedApp(
            iconURL: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/e0/a0/b6/e0a0b60c-f7cf-a11a-cf7a-4b9f5a39c057/AppIcon-0-1x_U007emarketing-0-7-0-85-220-0.png/60x60bb.jpg")!,
            title: "카카오맵 - 대한민국 No.1 지도앱",
            category: "내비게이션",
            rating: 4.694059999999999,
            ratingCount: 142785,
            developer: "Kakao Corp.",
            screenshotList: [
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/b0/cd/f2/b0cdf2b6-3d66-e678-fdb6-582c00a6ae61/70c8141b-d792-44ee-aadd-ddfd34c0b7dc_1.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/1b/14/3e/1b143eb6-dfc9-ca61-4062-c581614784ef/40aa77e2-e5ef-4f54-acdf-22eee876e1ea_2.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/e1/2e/bf/e12ebf8a-3114-cb91-9a4d-848be35baf72/7e87309b-65b2-4933-b694-703a4f146953_4.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/7e/f3/58/7ef35807-7f6b-63a9-432e-0ab3c8f19928/c5748110-bc09-4da0-87b4-759ea318a0b6_3.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/8d/87/03/8d870335-b3af-1ca9-7519-8f18905213a7/66ab3365-a653-4244-9a71-d19aec610522_7.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/5c/59/a8/5c59a80f-4766-1c59-8455-da5dc2293c3e/6479dade-0291-40d3-88bc-3475e69460cd_8.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/e5/59/a4/e559a4b6-2699-3ad1-da7b-4fa6cd66a98c/9ed3cd0b-1ba0-4577-ae1b-59737eabde47_4.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/f8/08/b6/f808b624-f5dc-6a4b-df39-1e85ae1a6426/ede54016-b6e1-4edb-9b49-078b45b2c58f_5.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/cf/bd/52/cfbd52f9-1335-b074-7dcd-73d2b921bac4/7a457121-8f9b-4e75-b85b-ace5f4a067cd_6.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/3e/b9/e4/3eb9e450-a07c-9aca-b36e-6725bc9b7d71/bc42b811-345e-418f-a0e9-db41bb109d59_10.png/392x696bb.png")!
            ]
        ),
        
        SearchedApp(
            iconURL: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/5b/15/fd/5b15fd02-8cf2-8f1f-55b6-fbfe13e17c65/AppIcon-0-0-1x_U007emarketing-0-6-0-sRGB-85-220.png/60x60bb.jpg")!,
            title: "카카오 T - 택시, 대리, 주차, 바이크, 항공, 퀵",
            category: "여행",
            rating: 4.732010000000001,
            ratingCount: 465526,
            developer: "Kakao Mobility Corp.",
            screenshotList: [
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/f2/db/8b/f2db8b97-051a-7962-4c4a-9d56f9cf9c5d/6b76965c-bf20-46de-b040-7580ed48677f_1_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/5e/3b/c1/5e3bc17f-555f-95e6-d2ce-8c333c69b4ae/1a2101ab-1e9a-473a-a930-b077eb66c403_2_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/73/26/83/73268364-fe14-fa24-30dc-ef88a4957cc1/5b590ca0-d506-41d3-ad13-1e691f0adc95_3_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/6a/e6/b0/6ae6b092-d55e-db3e-a73d-39a85bb05a8c/589d1ee0-2a28-4b3b-8bb3-3a732324a613_4_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/88/0b/cd/880bcd94-71d5-9c48-d1b4-3e014df3ad48/7083cc52-8a0a-44a9-83b4-f09c0ab67d89_5_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/f6/ee/40/f6ee40ea-eafe-2424-b475-b34d7387ceaa/dfd9f5b6-643f-49da-b500-a5507c63f8b1_6_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/e4/20/86/e4208618-d70e-cb0a-d15e-307d54257ba0/210f205f-418e-4ccb-a340-eaaffa804e5d_7_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/db/b2/0c/dbb20cef-8fee-441d-0d8a-8ddab5deda57/c021fbcc-cd72-4b2e-abf1-f038ce14e768_8_1242_2208.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/89/41/88/894188f2-4f40-53d2-6698-c49b68691e0f/bc208eaa-4c08-4f1d-b07f-828f268ef49e_9_1242_2208.jpg/392x696bb.jpg")!
            ]
        ),
        SearchedApp(
            iconURL: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/26/f0/e1/26f0e1c2-a136-66ff-4dc9-953062a5621f/AppIcon-0-1x_U007emarketing-0-10-0-85-220.png/60x60bb.jpg")!,
            title: "카카오페이",
            category: "금융",
            rating: 4.6844100000000015,
            ratingCount: 28087,
            developer: "kakaopay corp.",
            screenshotList: [
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/72/90/36/72903671-3c36-c36d-4286-0e19eca4b4bf/b216f9a9-9ba2-43a9-a6d0-a01df8b1fe95_iOS_1242x2208_01__U1112_U1169_U11b7__U1109_U116d_U11ba_U110f_U1165_U11ba8_U1100_U1162.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/e9/72/68/e97268d2-1915-d182-a367-4cfca113dd49/d2becf9e-1728-41b2-811e-dfbe85483336_iOS_1242x2208_02__U1112_U1168_U1110_U1162_U11a8.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/c0/87/3e/c0873ef9-4804-a5a6-2271-bf27d1dd2a3f/12ac4c39-447c-4531-9fce-78a3b0a893b9_iOS_1242x2208_02__U1100_U1167_U11af_U110c_U1166.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/1f/1a/11/1f1a113c-f6f9-61d9-a812-983264b597c5/e4b86f55-c8c7-4b6a-8aac-7f539ee086f7_iOS_1242x2208_04__U110c_U116e_U1109_U1175_U11a8.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/84/21/9e/84219e93-bf79-f062-01fc-46a4dad9368b/302f7e57-8eae-4949-87f7-14275eeb8e49_iOS_1242x2208_05__U1111_U1166_U1109_U1169.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/4c/8e/f6/4c8ef620-ec14-eb4d-e415-c89da445bc22/7bb6e185-4c71-4c25-bb51-9ff902b9884f_iOS_1242x2208_06__U1106_U1162_U110b_U1175_U11af_U1106_U1169_U110b_U1173_U1100_U1175.jpg/392x696bb.jpg")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/7e/ca/09/7eca09a4-316e-b445-1ffa-d625c7b48234/c9d848c9-3648-4a7f-b0f8-ee572e9e2c46_iOS_1242x2208_07__U1106_U1161_U11ab_U1107_U1169_U1100_U1175.jpg/392x696bb.jpg")!
            ]
        ),
        SearchedApp(
            iconURL:
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/3c/6d/3c/3c6d3c44-627b-ea58-1b13-63962a92954f/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/60x60bb.jpg")!,
            title: "카카오웹툰 – KAKAO WEBTOON",
            category: "엔터테인먼트",
            rating: 4.087080000000002,
            ratingCount: 27964,
            developer: "Kakao Entertainment Corp.",
            screenshotList: [
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/48/c5/79/48c57955-652e-b5dc-2c74-a95802c34622/6bb154b1-7fa1-4382-95d3-16c347b5e428_04-1.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/23/6b/9f/236b9f32-0d55-e20c-1aff-4e02aa4cbff5/d4bf06cd-300a-424f-9d3b-9d56400fcea3_04-2.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/b9/cf/8a/b9cf8aa6-fa08-d2d4-deb3-9ff7e898e023/99e7de4c-f2cd-4de6-bd8c-0221a7627645_04-3.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/99/aa/27/99aa270d-c703-0e5c-0af3-202185fdeba2/43e149a2-0bd5-495e-aa82-99bae8e08add_04-4.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/dc/c9/9c/dcc99c07-f771-fca6-f1c7-bc7fd11b2c4f/c78e9fcb-6eaa-4403-af57-08c4c87e2987_04-5.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/3a/95/dd/3a95dd26-7039-cc5a-e8f8-fafd8fcb3cf1/f4ec117d-9b1c-49e0-b546-9cc85bf9e769_04-6.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/a3/8a/f4/a38af446-f709-ff65-b515-045e57b974c3/48c402f3-b3c9-44a6-8f11-cb50298ad562_04-7.png/392x696bb.png")!,
                URL(string: "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/69/74/51/697451dd-deb5-9df2-3cfe-adefc4038282/67d5964a-216b-43a4-acb8-747a2a97ed09_04-8.png/392x696bb.png")!
            ]
        )
    ]
}
