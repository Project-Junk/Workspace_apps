.class public Lcom/coloros/settings/feature/homepage/TopLevelMultiAppPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelMultiAppPreferenceController.java"


# static fields
.field private static final ACTION_MULTI_APP:Ljava/lang/String; = "oppo.intent.action.OPPO_MULTI_APP"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 42
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.OPPO_MULTI_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
