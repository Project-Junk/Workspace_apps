.class public Lcom/android/settings/Settings$ColorFontSizeSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorFontSizeSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 722
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 728
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 730
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    .line 731
    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    .line 732
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    :cond_1
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    .line 737
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Settings"

    const-string v3, "getIndexForCurrent Unable to retrieve font size"

    .line 739
    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_1
    aget v1, v0, v1

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .line 742
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 743
    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    aget v5, v0, v1

    sub-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2

    sub-int/2addr v1, v2

    return v1

    .line 746
    :cond_2
    aget v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 749
    :cond_3
    array-length p0, v0

    sub-int/2addr p0, v2

    return p0
.end method
