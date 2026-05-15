import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';
import 'package:voucher_hub/voucher/ui/list/voucher_list_bloc.dart';
import 'package:voucher_hub/voucher/ui/widget/voucher_item.dart';

class VoucherListScreen extends StatelessWidget {
  const VoucherListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.vouchers)),
      body: BlocBuilder<VoucherListBloc, VoucherListState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () async {
              VoucherListBloc bloc = context.read();
              bloc.add(const VoucherListEvent.refreshVouchers());
            },
            notificationPredicate: (_) => state.maybeMap(
              success: (_) => true,
              empty: (_) => true,
              failure: (_) => true,
              orElse: () => false,
            ),
            child: state.maybeMap(
              loading: (_) => _loadingVoucherListPage(),
              success: (state) => _successVoucherListPage(state.vouchers),
              empty: (_) => _emptyVoucherListPage(),
              failure: (state) => _errorVoucherListPage(state.error),
              orElse: () => _defaultVoucherListPage(context),
            ),
          );
        },
      ),
    );
  }

  Widget _loadingVoucherListPage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successVoucherListPage(List<Voucher> vouchers) {
    return ListView.separated(
      padding: ScreenPaddingDefaults.padding,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: vouchers.length,
      itemBuilder: (context, index) {
        final voucher = vouchers[index];

        return VoucherItem(
          onPressed: () => {
            context.push(RoutePaths.voucherDetails, extra: voucher.id),
          },
          voucher: voucher,
        );
      },
    );
  }

  Widget _emptyVoucherListPage() {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.noVouchers)),
        );
      },
    );
  }

  Widget _errorVoucherListPage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultVoucherListPage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.vouchers)),
        );
      },
    );
  }
}
