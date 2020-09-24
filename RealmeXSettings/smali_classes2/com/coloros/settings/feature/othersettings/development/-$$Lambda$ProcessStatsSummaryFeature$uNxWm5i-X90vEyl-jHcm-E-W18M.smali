.class public final synthetic Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/ProcessStatsSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/android/settings/applications/ProcessStatsSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;->f$1:Lcom/android/settings/applications/ProcessStatsSummary;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;->f$1:Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->lambda$displayPreference$1$ProcessStatsSummaryFeature(Lcom/android/settings/applications/ProcessStatsSummary;Landroid/view/View;)V

    return-void
.end method
