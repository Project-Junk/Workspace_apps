.class public final synthetic Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/ProcessStatsDetailFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/ProcessStatsDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ProcessStatsDetailFeature;Lcom/android/settings/applications/ProcessStatsDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;->f$0:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;->f$1:Lcom/android/settings/applications/ProcessStatsDetail;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;->f$0:Lcom/android/settings/applications/ProcessStatsDetailFeature;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;->f$1:Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->lambda$createDetails$0$ProcessStatsDetailFeature(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/view/View;)V

    return-void
.end method
