.class final Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController$1;
.super Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
.source "ColorDisplayRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 66
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/br;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120bee

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
