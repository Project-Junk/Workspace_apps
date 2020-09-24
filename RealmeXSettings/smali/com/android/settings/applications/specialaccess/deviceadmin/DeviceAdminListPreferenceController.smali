.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
.super Lcom/android/settings/core/a;
.source "DeviceAdminListPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "DeviceAdminListPrefCtrl"


# instance fields
.field private final mAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/specialaccess/deviceadmin/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field protected mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mProfileOwnerComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    sput-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    .line 82
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    .line 84
    new-instance p2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string p2, "device_policy"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo p2, "user"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 107
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private addActiveAdminsForProfile(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v2, 0xc8080

    invoke-interface {v1, v0, v2, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;-><init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to load component: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceAdminListPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 286
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 290
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;-><init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private bindPreference(Lcom/android/settings/applications/specialaccess/deviceadmin/a;Landroidx/preference/TwoStatePreference;)V
    .locals 3

    .line 2062
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 2066
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->c:Ljava/lang/CharSequence;

    .line 204
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2078
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->d:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3074
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->e:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 206
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4070
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->f:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4082
    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->e:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 208
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 209
    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;Lcom/android/settings/applications/specialaccess/deviceadmin/a;)V

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    sget-object p1, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$km1xGgD4wmcfa_hK12gqjXdyDbw;->INSTANCE:Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$km1xGgD4wmcfa_hK12gqjXdyDbw;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 1

    .line 314
    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 316
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Skipping "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceAdminListPrefCtrl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$bindPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private refreshData()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 162
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 163
    invoke-direct {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->updateAvailableAdminsForProfile(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private refreshUI()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f120e77

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setVisible(Z)V

    .line 177
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 181
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 182
    instance-of v5, v4, Landroidx/preference/TwoStatePreference;

    if-eqz v5, :cond_2

    .line 185
    check-cast v4, Landroidx/preference/TwoStatePreference;

    .line 186
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    .line 1062
    iget-object v4, v3, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a:Ljava/lang/String;

    .line 190
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/TwoStatePreference;

    if-nez v4, :cond_4

    .line 192
    new-instance v4, Landroidx/preference/SwitchPreference;

    invoke-direct {v4, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 193
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 195
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->bindPreference(Lcom/android/settings/applications/specialaccess/deviceadmin/a;Landroidx/preference/TwoStatePreference;)V

    goto :goto_1

    .line 197
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    .line 198
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private updateAvailableAdminsForProfile(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->addActiveAdminsForProfile(Ljava/util/List;I)V

    .line 233
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$bindPreference$0$DeviceAdminListPreferenceController(Lcom/android/settings/applications/specialaccess/deviceadmin/a;Landroidx/preference/Preference;)Z
    .locals 4

    .line 4086
    new-instance p2, Landroid/os/UserHandle;

    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->a(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    .line 4090
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/a;->b:Landroid/app/admin/DeviceAdminInfo;

    .line 4091
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 211
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-object p0
.end method

.method updateList()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->refreshData()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->refreshUI()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 138
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->updateList()V

    return-void
.end method
