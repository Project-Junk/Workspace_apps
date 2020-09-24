.class public Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;
.super Lcom/android/settings/SettingsActivity;
.source "WifiCallingSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 27
    invoke-static {p0}, Lcom/android/ims/e;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 28
    invoke-static {p0}, Lcom/android/ims/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/android/ims/e;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0}, Lcom/android/ims/e;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method
