.class public abstract Lcom/android/settings/applications/AppInfoBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/settingslib/g$a;

.field protected b:Z

.field protected c:Lcom/android/settings/applications/q;

.field protected d:Lcom/coloros/settingslib/applications/ApplicationsState;

.field protected e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field protected f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field public g:Landroid/content/pm/PackageInfo;

.field protected h:I

.field public i:Ljava/lang/String;

.field protected j:Landroid/hardware/usb/IUsbManager;

.field protected k:Landroid/app/admin/DevicePolicyManager;

.field protected l:Landroid/os/UserManager;

.field protected m:Landroid/content/pm/PackageManager;

.field protected n:Z

.field protected o:Z

.field protected final p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 325
    new-instance v0, Lcom/android/settings/applications/AppInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppInfoBase$1;-><init>(Lcom/android/settings/applications/AppInfoBase;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroidx/fragment/app/Fragment;",
            "II)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 251
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 256
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "uid"

    .line 257
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    new-instance p2, Lcom/android/settings/core/f;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 264
    invoke-virtual {p0, p6}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p2, 0x0

    .line 2063
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    .line 268
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 3034
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_1

    .line 3036
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 3038
    :cond_1
    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 269
    invoke-virtual {p0, p4, p5}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "AppInfoBase"

    const-string p1, "startAppInfoFragment: source is null or context is null"

    .line 252
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 5

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "package"

    .line 133
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 136
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AppInfoBase"

    if-eqz v2, :cond_4

    const-string v0, "retrieveAppEntry, get package name failed, will finish;"

    .line 142
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    const-string v0, " "

    return-object v0

    :cond_4
    const/4 v2, -0x1

    .line 149
    iput v2, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    if-eqz v0, :cond_5

    const-string v2, "android.intent.extra.user_handle"

    .line 150
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 152
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 159
    invoke-static {v0}, Lcom/color/compat/content/IntentNative;->getOppoFlags(Landroid/content/Intent;)I

    move-result v2

    sget v4, Lcom/color/compat/content/IntentNative;->OPPO_FLAG_MUTIL_APP:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 160
    invoke-static {v0}, Lcom/color/compat/content/IntentNative;->getColorUserId(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    goto :goto_2

    .line 163
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    .line 165
    :goto_2
    iget v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    if-gez v0, :cond_8

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    .line 168
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retrieveAppEntry: u: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    invoke-virtual {v0, v2, v4}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_9

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->m:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v2, 0x8001200

    iget v4, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->g:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when retrieving package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_9
    const-string v0, "Missing AppEntry; maybe reinstalling?"

    .line 181
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->g:Landroid/content/pm/PackageInfo;

    .line 185
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(I)V
    .locals 3

    .line 198
    invoke-static {p1}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->a(I)Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "dialog "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appChanged="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInfoBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    .line 191
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const/4 v1, -0x1

    .line 193
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->n:Z

    return-void
.end method

.method protected abstract b(I)Lcolor/support/v7/app/AlertDialog;
.end method

.method protected abstract b()Z
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->n:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->c:Lcom/android/settings/applications/q;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    const-string v0, "device_policy"

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->k:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "user"

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->l:Landroid/os/UserManager;

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->m:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "usb"

    .line 104
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->j:Landroid/hardware/usb/IUsbManager;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->a()Ljava/lang/String;

    .line 1304
    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->o:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1307
    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->o:Z

    .line 1308
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 1309
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1314
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1317
    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->o:Z

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppInfoBase;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    const-string v2, "no_control_apps"

    .line 114
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->a:Lcom/android/settingslib/g$a;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/AppInfoBase;->h:I

    .line 116
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->b:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppInfoBase;->a(Z)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
