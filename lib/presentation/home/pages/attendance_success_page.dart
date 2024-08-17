import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AttendanceSuccessPage extends StatelessWidget {
  final String status;
  const AttendanceSuccessPage({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.success.image(),
            const Text(
              'Asiap !',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(8.0),
            Center(
              child: Column(
                children: [
                  Text(
                    'Anda telah melakukan Absensi $status Pukul ${DateTime.now().toFormattedTime()}.',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0,
                      color: AppColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  if (status == 'Berhasil Checkin')
                    const Text(
                      'Selamat bekerja',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        color: AppColors.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  if (status == 'Berhasil Checkout')
                    const Text(
                      'Selamat Beristirahat',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        color: AppColors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            ),
            const SpaceHeight(80.0),
            Button.filled(
              onPressed: () => context.popToRoot(),
              label: 'Oke, dimengerti',
            ),
          ],
        ),
      ),
    );
  }
}