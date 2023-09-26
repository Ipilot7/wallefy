import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/common/components/profile_menu.dart';
import 'package:wallefy/common/edit_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
 SizedBox(
                                  width: 145.w,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: CircleAvatar(
                                          radius: 67.r,
                                          child:
                                             

                                              ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                            child: 
                                            // '' != null
                                            //     ? CachedNetworkImage(
                                            //         imageUrl:'',
                                            //             // state.data?.image ?? '',
                                            //         width: 134.r,
                                            //         fit: BoxFit.cover,
                                            //         height: 134.r,
                                            //       )
                                            //     : 
                                                Image.asset(
                                                    width: 134.r,
                                                    fit: BoxFit.cover,
                                                    height: 134.r,
                                                    Assets.images.defUser),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 40.h,
                                          right: 0,
                                          child: EditButton(
                                            onTap: () async {
                                              // final pickedFile =
                                              //     await picker.pickImage(
                                              //         source:
                                              //             ImageSource.gallery);
                                              // if (pickedFile?.path != null) {
                                              //   _image = File(
                                              //       pickedFile?.path ?? '');

                                              //   //rasm yuklash
                                              //   context.read<ProfileBloc>().add(
                                              //       UpdateImageEvent(
                                              //           imagePath:
                                              //               pickedFile?.path ??
                                              //                   ''));

                                              //   prefs.setString('userImage',
                                              //       _image?.path ?? '');
                                              // }
                                            },
                                          ))
                                    ],
                                  ),
                                ),
                // Container(
                //     width: 120.w,
                //     height: 115.h,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //         color: AppColors.white,
                //         borderRadius: BorderRadius.circular(29.r)),
                //     child: SvgPicture.asset(Assets.icons.profile)),
                SizedBox(height: 13.h),
                Text(
                  'Julia',
                  style:
                      AppTextStyles.body20wB.copyWith(color: AppColors.blue2),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 21.h),
            padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 15.w),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              children: [
                const ProfileMenu(
                  leading: 'Name:',
                  trailing: 'Julia',
                ),
                const ProfileMenu(
                  leading: 'Email Address:',
                  trailing: 'dfdf@vn.com',
                ),
                const ProfileMenu(
                  leading: 'Currency',
                  trailing: 'US dollars',
                  toRight: true,
                ),
                const ProfileMenu(
                  leading: 'Daily limit',
                  trailing: '\$ 5000',
                  toRight: true,
                ),
                ProfileMenu(
                  contentPadding: EdgeInsets.zero,
                  leading: 'Use FaceID',
                  widget: CupertinoSwitch(
                    activeColor: AppColors.green,
                    onChanged: (value) {},
                    value: true,
                  ),
                ),
                const ProfileMenu(
                  leading: 'Set your pin',
                ),
                const ProfileMenu(
                  leading: 'User devices',
                ),
                const ProfileMenu(
                  leading: 'Quit',
                  disableDivider: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
