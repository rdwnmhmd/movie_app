import 'package:arx/config/constants/constants.dart';
import 'package:arx/theme/colors.dart';
import 'package:arx/widgets/shimmer/shimmer_container.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBankAccount extends StatefulWidget {
  const ShimmerBankAccount({Key? key}) : super(key: key);

  @override
  State<ShimmerBankAccount> createState() => _ShimmerBankAccountState();
}

class _ShimmerBankAccountState extends State<ShimmerBankAccount> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: XColors.shimmerBaseColor,
      highlightColor: XColors.shimmerHighlightColor,
      child: ListView(
        children: [
          const XShimmerContainer(
            height: 226,
            width: double.infinity,
            radius: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(Constants.kPaddingL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const XShimmerContainer(height: 14, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 14, width: 150),
                const SizedBox(height: Constants.kPaddingL),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    XShimmerContainer(height: 12, width: 110),
                    XShimmerContainer(height: 12, width: 80),
                  ],
                ),
                const SizedBox(height: Constants.kPaddingXL),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: 200),
                const SizedBox(height: Constants.kPaddingXL),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: 200),
                const SizedBox(height: Constants.kPaddingXL),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: double.infinity),
                const SizedBox(height: Constants.kPaddingS),
                const XShimmerContainer(height: 10, width: 200),
                const SizedBox(height: Constants.kPaddingXL),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
