.class public Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorDisplayRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "display_bottom_recommended"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "display_bottom_recommended"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "display_bottom_recommended"

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oppo.launcher.intent.action.LAUNCHER_MODE_SETTINGS"

    .line 55
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oppo.launcher"

    .line 56
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v7, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController$1;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;->mContext:Landroid/content/Context;

    const v2, 0x7f120bef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "launcher_mode"

    const-string v6, "display_settings"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.color.intent.action.SET_WALLPAPER_DETAILS"

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.wallpaper.livepicker"

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance v2, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayRecommendedController;->mContext:Landroid/content/Context;

    const v4, 0x7f12142c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "set_wallpaper"

    const-string v5, "display_settings"

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
