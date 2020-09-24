.class public final synthetic Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/ProcessStatsUi;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/android/settings/applications/ProcessStatsUi;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$1:Lcom/android/settings/applications/ProcessStatsUi;

    iput p3, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$2:I

    iput-boolean p4, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$0:Lcom/android/settings/applications/ProcessStatsUiFeature;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$1:Lcom/android/settings/applications/ProcessStatsUi;

    iget v2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$2:I

    iget-boolean v3, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsUiFeature;->lambda$refreshUIAsyn$3$ProcessStatsUiFeature(Lcom/android/settings/applications/ProcessStatsUi;IZ)V

    return-void
.end method
