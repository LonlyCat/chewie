import 'package:flutter/material.dart';

class PreviewSettings {
  const PreviewSettings({
    this.duration,
    this.previewDuration,
    required this.isPreview,
    required this.previewCompletedBuilder,
  });

  /// 标记源是否为预览视频
  final bool isPreview;

  /// 视频总时长，为空时使用视频时长
  final Duration? duration;

  /// 视频可预览时长，为空时代表不做限制
  final Duration? previewDuration;

  /// 视频完成预览后的构建器, 将填充在视频上层
  final Widget Function(BuildContext context) previewCompletedBuilder;
}
