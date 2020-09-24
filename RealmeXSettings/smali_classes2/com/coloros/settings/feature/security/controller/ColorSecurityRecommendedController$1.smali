.class final Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;
.super Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
.source "ColorSecurityRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;->a:Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.coloros.safecenter"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;->a:Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;->access$000(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;->access$100(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY"

    goto :goto_0

    :cond_0
    const-string v1, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;->a:Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;->access$200(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static synthetic lambda$Td050cpgBmQWXwXHEMIfK8ztxLQ(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;->b()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 63
    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorSecurityRecommendedController$1$Td050cpgBmQWXwXHEMIfK8ztxLQ;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorSecurityRecommendedController$1$Td050cpgBmQWXwXHEMIfK8ztxLQ;-><init>(Lcom/coloros/settings/feature/security/controller/ColorSecurityRecommendedController$1;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method
