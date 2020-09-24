.class public Lcom/coloros/settings/feature/homepage/TopLevelWrapperPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelWrapperPreferenceController.java"


# static fields
.field private static final EXTRA_PICTORIAL_SUPPORT:Ljava/lang/String; = "pictorial_support"

.field public static final PICTORIAL_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.pictorial"

.field public static final PICTORIAL_TITLE_RES_IDENTIFIER:Ljava/lang/String; = "actionbar_title"

.field public static final WALLPAPER_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field public static final WALLPAPER_TITLE_RES_IDENTIFIER:Ljava/lang/String; = "lockscreen_and_wallpaper_settings_title"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTargetIntent()Landroid/content/Intent;
    .locals 3

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.color.intent.action.WALLPAPER_CATEGORY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/coloros/settings/utils/bh;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pictorial_support"

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 48
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
