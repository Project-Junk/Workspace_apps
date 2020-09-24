.class public Lcom/android/settings/webview/WebViewAppPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/webview/WebViewAppPicker$a;
    }
.end annotation


# instance fields
.field private c:Lcom/android/settings/webview/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x400000

    .line 3094
    invoke-static {p0, p1, v0}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 155
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const p1, 0x7f12190c

    .line 157
    new-array v1, v3, [Ljava/lang/Object;

    .line 158
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 157
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v1

    if-nez v1, :cond_0

    const p1, 0x7f12190a

    .line 161
    new-array v1, v3, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 161
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private j()Lcom/android/settings/webview/a;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->c:Lcom/android/settings/webview/a;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Lcom/android/settings/webview/a;

    invoke-direct {v0}, Lcom/android/settings/webview/a;-><init>()V

    .line 1112
    iput-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->c:Lcom/android/settings/webview/a;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->c:Lcom/android/settings/webview/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/b;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 69
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->j()Lcom/android/settings/webview/a;

    .line 71
    invoke-static {v8}, Lcom/android/settings/webview/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 73
    iget-object v3, p0, Lcom/android/settings/webview/WebViewAppPicker;->a:Landroid/content/pm/PackageManager;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-static {v8, v1}, Lcom/android/settings/webview/WebViewAppPicker;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1141
    new-instance v10, Lcom/android/settings/webview/WebViewAppPicker$a;

    iget v4, p0, Lcom/android/settings/webview/WebViewAppPicker;->h:I

    .line 1142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    move-object v1, v10

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/webview/WebViewAppPicker$a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 73
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.WEBVIEW_SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->j()Lcom/android/settings/webview/a;

    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121414

    const/4 v1, 0x0

    .line 2103
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2105
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->j_()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->j()Lcom/android/settings/webview/a;

    invoke-static {p1}, Lcom/android/settings/webview/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->j()Lcom/android/settings/webview/a;

    invoke-static {}, Lcom/android/settings/webview/a;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x195

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15013d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/webview/WebViewAppPicker;->g:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
