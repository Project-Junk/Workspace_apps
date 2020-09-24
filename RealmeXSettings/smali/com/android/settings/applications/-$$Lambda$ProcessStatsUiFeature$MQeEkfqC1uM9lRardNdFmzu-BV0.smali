.class public final synthetic Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/ProcessStatsUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/android/settings/applications/ProcessStatsUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;->f$1:Lcom/android/settings/applications/ProcessStatsUi;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;->f$1:Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->lambda$displayPreference$1$ProcessStatsUiFeature(Lcom/android/settings/applications/ProcessStatsUi;Landroid/view/View;)V

    return-void
.end method
