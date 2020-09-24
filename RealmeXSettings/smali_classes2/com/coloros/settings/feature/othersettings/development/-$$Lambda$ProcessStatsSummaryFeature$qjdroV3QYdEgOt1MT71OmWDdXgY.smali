.class public final synthetic Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/ProcessStatsSummary;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/android/settings/applications/ProcessStatsSummary;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$1:Lcom/android/settings/applications/ProcessStatsSummary;

    iput p3, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$2:I

    iput-object p4, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$0:Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$1:Lcom/android/settings/applications/ProcessStatsSummary;

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$2:I

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;->f$3:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->lambda$refreshUIAsyn$3$ProcessStatsSummaryFeature(Lcom/android/settings/applications/ProcessStatsSummary;ILandroid/content/Context;)V

    return-void
.end method
