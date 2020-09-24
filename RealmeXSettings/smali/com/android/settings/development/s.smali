.class public final Lcom/android/settings/development/s;
.super Lcom/android/settingslib/development/b;
.source "ShortcutManagerThrottlingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/android/settings/development/s;->c()Landroid/content/pm/IShortcutService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/s;->a:Landroid/content/pm/IShortcutService;

    return-void
.end method

.method private static c()Landroid/content/pm/IShortcutService;
    .locals 1

    :try_start_0
    const-string v0, "shortcut"

    .line 78
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "reset_shortcut_manager_throttling"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reset_shortcut_manager_throttling"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1063
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/s;->a:Landroid/content/pm/IShortcutService;

    if-eqz p1, :cond_1

    .line 1067
    :try_start_0
    invoke-interface {p1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 1068
    iget-object p1, p0, Lcom/android/settings/development/s;->mContext:Landroid/content/Context;

    const v1, 0x7f12124c

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1069
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ShortcutMgrPrefCtrl"

    const-string v1, "Failed to reset rate limiting"

    .line 1071
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
