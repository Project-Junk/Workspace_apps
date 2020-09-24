.class public abstract Lcom/android/settings/utils/ManagedServiceSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$a;,
        Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private final b:Lcom/android/settings/utils/ManagedServiceSettings$a;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/admin/DevicePolicyManager;

.field private e:Lcom/android/settingslib/applications/e;

.field private f:Landroid/util/IconDrawableFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->a()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 115
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->c:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 117
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 120
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->c:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 121
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 120
    invoke-virtual {v6, v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings;->c:Landroid/content/pm/PackageManager;

    .line 121
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "ManagedServiceSettings"

    const-string v8, "can\'t find package name"

    .line 124
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :goto_1
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v7, Lcom/android/settings/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v7, v5}, Landroidx/preference/TwoStatePreference;->setPersistent(Z)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings;->f:Landroid/util/IconDrawableFactory;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 131
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 130
    invoke-virtual {v5, v2, v8, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/TwoStatePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-virtual {v7, v4}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v7, v6}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 136
    :cond_0
    invoke-virtual {v7, v6}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/16 v5, -0x2710

    if-eq v0, v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings;->d:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 141
    invoke-virtual {v5, v2, v0}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f121aa0

    .line 143
    invoke-virtual {v7, v2}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    .line 145
    :cond_1
    new-instance v2, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;

    invoke-direct {v2, p0, v4, v3}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    invoke-virtual {v7, v2}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method private synthetic a(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 146
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$S90bZ4juN1ePBLHYv9kcvG7YSL8(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$h5u_uXCMEGQV-n5R68nj-L8QdFU(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/android/settings/utils/ManagedServiceSettings$a;
.end method

.method protected a(Landroid/content/ComponentName;)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/e;->a(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 173
    iget-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    invoke-virtual {p2, p1, v1}, Lcom/android/settingslib/applications/e;->a(Landroid/content/ComponentName;Z)V

    return v0

    .line 176
    :cond_0
    iget-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/applications/e;->a(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 180
    :cond_1
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 181
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->a(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "dialog"

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method

.method protected b(Landroid/content/ComponentName;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/e;->a(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    .line 72
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->c:Landroid/content/pm/PackageManager;

    .line 73
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->d:Landroid/app/admin/DevicePolicyManager;

    .line 74
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->f:Landroid/util/IconDrawableFactory;

    .line 75
    new-instance p1, Lcom/android/settingslib/applications/e$a;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/e$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$a;->d:Ljava/lang/String;

    .line 1210
    iput-object v0, p1, Lcom/android/settingslib/applications/e$a;->d:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$a;->c:Ljava/lang/String;

    .line 2205
    iput-object v0, p1, Lcom/android/settingslib/applications/e$a;->c:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$a;->e:Ljava/lang/String;

    .line 2215
    iput-object v0, p1, Lcom/android/settingslib/applications/e$a;->e:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$a;->b:Ljava/lang/String;

    .line 3200
    iput-object v0, p1, Lcom/android/settingslib/applications/e$a;->b:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$a;->a:Ljava/lang/String;

    .line 4195
    iput-object v0, p1, Lcom/android/settingslib/applications/e$a;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/android/settingslib/applications/e$a;->a()Lcom/android/settingslib/applications/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    .line 82
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    new-instance v0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$h5u_uXCMEGQV-n5R68nj-L8QdFU;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$h5u_uXCMEGQV-n5R68nj-L8QdFU;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/e;->a(Lcom/android/settingslib/applications/e$b;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/e;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onResume()V

    .line 95
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/e;->a()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->e:Lcom/android/settingslib/applications/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/e;->a(Z)V

    return-void

    :cond_0
    const v0, 0x7f1207f9

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->a(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$a;->h:I

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->a(I)V

    return-void
.end method
