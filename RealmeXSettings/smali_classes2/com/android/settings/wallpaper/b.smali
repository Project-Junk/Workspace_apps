.class public abstract Lcom/android/settings/wallpaper/b;
.super Landroid/app/Activity;
.source "StyleSuggestionActivityBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static b(Landroid/content/Context;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "com.android.internal.R.bool.config_enableWallpaperService"

    .line 79
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/b;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/android/settings/display/WallpaperPreferenceController;

    const-string v2, "dummy key"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/settings/display/WallpaperPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/b;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/b;->a(Landroid/content/Intent;)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/b;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1069
    :cond_0
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v2, 0x7f1218f0

    .line 2063
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x23

    .line 1072
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1073
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->b(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1074
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/b;->finish()V

    return-void
.end method
