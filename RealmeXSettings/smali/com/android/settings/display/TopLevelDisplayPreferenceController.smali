.class public Lcom/android/settings/display/TopLevelDisplayPreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelDisplayPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/settings/display/TopLevelDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 39
    new-instance v0, Lcom/android/settings/display/WallpaperPreferenceController;

    iget-object v1, p0, Lcom/android/settings/display/TopLevelDisplayPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "dummy_key"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/settings/display/TopLevelDisplayPreferenceController;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->areStylesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120808

    goto :goto_0

    :cond_0
    const v0, 0x7f120807

    .line 42
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/TopLevelDisplayPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120806

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
