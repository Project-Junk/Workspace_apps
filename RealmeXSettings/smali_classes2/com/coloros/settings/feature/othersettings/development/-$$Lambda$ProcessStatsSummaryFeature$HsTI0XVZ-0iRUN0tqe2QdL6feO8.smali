.class public final synthetic Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

.field private final synthetic f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

.field private final synthetic f$2:Lcom/android/settings/applications/ProcessStatsSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$2:Lcom/android/settings/applications/ProcessStatsSummary;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$1:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;->f$2:Lcom/android/settings/applications/ProcessStatsSummary;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->lambda$null$0$ProcessStatsSummaryFeature(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsSummary;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
