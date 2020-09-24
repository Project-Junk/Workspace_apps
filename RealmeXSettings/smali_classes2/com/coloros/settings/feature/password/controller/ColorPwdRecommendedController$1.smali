.class final Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;
.super Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
.source "ColorPwdRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;->a:Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.coloros.safecenter"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;->a:Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->access$000(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->access$100(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY"

    goto :goto_0

    :cond_0
    const-string v1, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;->a:Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->access$200(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static synthetic lambda$gPxIusq0Y2G2GewpZbs-VHoMSGc(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;->b()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 64
    new-instance v0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$ColorPwdRecommendedController$1$gPxIusq0Y2G2GewpZbs-VHoMSGc;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/controller/-$$Lambda$ColorPwdRecommendedController$1$gPxIusq0Y2G2GewpZbs-VHoMSGc;-><init>(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method
