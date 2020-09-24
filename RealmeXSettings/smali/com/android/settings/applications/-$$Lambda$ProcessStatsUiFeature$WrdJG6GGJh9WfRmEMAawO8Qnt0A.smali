.class public final synthetic Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

.field private final synthetic f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

.field private final synthetic f$2:Lcom/android/settings/applications/ProcessStatsUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$2:Lcom/android/settings/applications/ProcessStatsUi;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;->f$2:Lcom/android/settings/applications/ProcessStatsUi;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/applications/ProcessStatsUiFeature;->lambda$null$0$ProcessStatsUiFeature(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
