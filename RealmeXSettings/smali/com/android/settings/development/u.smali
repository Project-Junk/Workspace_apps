.class public final Lcom/android/settings/development/u;
.super Lcom/android/settingslib/development/b;
.source "WebViewAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Lcom/android/settings/webview/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/u;->a:Landroid/content/pm/PackageManager;

    .line 48
    new-instance p1, Lcom/android/settings/webview/a;

    invoke-direct {p1}, Lcom/android/settings/webview/a;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/u;->b:Lcom/android/settings/webview/a;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "select_webview_provider"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 2069
    invoke-static {}, Lcom/android/settings/webview/a;->a()Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2070
    new-instance v0, Lcom/android/settingslib/applications/b;

    iget-object v1, p0, Lcom/android/settings/development/u;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/development/u;->a:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    .line 1076
    invoke-virtual {v0}, Lcom/android/settingslib/applications/b;->a()Ljava/lang/CharSequence;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/u;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p1, "WebViewAppPrefCtrl"

    const-string v0, "No default app"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/android/settings/development/u;->d:Landroidx/preference/Preference;

    const v0, 0x7f1201ce

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
