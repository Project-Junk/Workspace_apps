.class public Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.super Lcom/android/settings/core/a;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;,
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;,
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field private static final EXTRA_UNINSTALL_MULTI_APP:Ljava/lang/String; = "uninstall_multi_app"

.field private static final EXTRA_UNINSTALL_MULTI_APP_LABEL:Ljava/lang/String; = "uninstall_multi_app_label"

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AppButtonsPrefCtl"


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field private mAdaptor:Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

.field mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAppLaunchIntent:Landroid/content/Intent;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/q;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/g$a;

.field private mAppsControlDisallowedBySystem:Z

.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field mDisableAfterUninstall:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field public final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field final mHomePackages:Ljava/util/HashSet;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToPackageRemove:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private final mOverlayManager:Landroid/content/om/OverlayManager;

.field mPackageInfo:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRequestRemoveDeviceAdmin:I

.field private final mRequestUninstall:I

.field private mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field mState:Lcom/coloros/settingslib/applications/ApplicationsState;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUpdatedSysApp:Z

.field private final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState;II)V
    .locals 2

    const-string v0, "action_buttons"

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    .line 724
    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 845
    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    instance-of v0, p2, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;

    if-eqz v0, :cond_2

    .line 151
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 153
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/q;

    .line 154
    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    const-string p5, "device_policy"

    .line 155
    invoke-virtual {p1, p5}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo p5, "user"

    .line 156
    invoke-virtual {p1, p5}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 157
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 158
    const-class p5, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, p5}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/om/OverlayManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    .line 159
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 161
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 164
    instance-of p1, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p1, :cond_0

    .line 165
    check-cast p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    .line 171
    :goto_0
    iput p6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    .line 172
    iput p7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    .line 173
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 176
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {p1, p4, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 177
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p1, p0, p3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 178
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return-void

    .line 147
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment should implement AppButtonsDialogListener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSingleUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/g$a;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/g$a;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/d;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    return p0
.end method

.method private getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    if-nez v0, :cond_0

    .line 861
    const-class v0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    .line 862
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->bind(Ljava/lang/Object;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    return-object v0
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInstantApp()Z
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSingleUser()Z
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 721
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isSystemModule()Z
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settingslib/applications/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshAndFinishIfPossible()V
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 548
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    return-void

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->startListeningToPackageRemove()V

    return-void
.end method

.method private setIntentAndFinish(Z)V
    .locals 2

    .line 540
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    .line 541
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return-void
.end method

.method private showDialogInner(I)V
    .locals 3

    .line 710
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->a(I)Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 712
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "dialog "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startListeningToPackageRemove()V
    .locals 3

    .line 787
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 790
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 791
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 792
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    .line 797
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 801
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->displayPreference(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_buttons"

    .line 195
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f120beb

    .line 197
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f080836

    .line 198
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/appinfo/-$$Lambda$AppButtonsPreferenceController$3KnAdyp9VBFGOLuqK-nGRpE1vD4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppButtonsPreferenceController$3KnAdyp9VBFGOLuqK-nGRpE1vD4;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 199
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f121754

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f080823

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f120a1f

    .line 203
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f08082a

    .line 204
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 205
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_0
    return-void
.end method

.method forceStopPackage(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 637
    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 639
    invoke-virtual {v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v3

    const/16 v2, 0x327

    const/4 v5, 0x0

    move-object v4, p1

    .line 636
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 644
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping package "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 647
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->f(Ljava/lang/String;I)V

    .line 651
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 653
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemModule()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getAvailabilityStatus(I)I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    const-string v1, "action_buttons"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 328
    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    if-ne p1, p2, :cond_1

    .line 329
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 331
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p3, p3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    return-void

    .line 335
    :cond_1
    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    if-ne p1, p2, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    :cond_2
    return-void
.end method

.method public handleDialogClick(I)V
    .locals 5

    const/16 v0, 0x36a

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 351
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 345
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method handleDisableable()Z
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f080829

    const v3, 0x7f080826

    const v4, 0x7f1208d1

    const v5, 0x7f1207e8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 665
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 666
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v6, v7}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isColorSpecifiedPackage(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setUninstallText(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 684
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/q;

    invoke-interface {v0}, Lcom/android/settings/applications/q;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 687
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v1, v0

    goto :goto_1

    .line 689
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setUninstallText(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 691
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    .line 668
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v1, v6}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->handleDisableable(ZLcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 669
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_4

    .line 670
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setUninstallText(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 672
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    .line 676
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setUninstallText(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 677
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 678
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_5
    :goto_1
    return v1
.end method

.method isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 701
    invoke-static {p1, p2, p3}, Lcom/android/settings/m;->a(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$displayPreference$0$AppButtonsPreferenceController(Landroid/view/View;)V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method public launchApplication()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchApplication, ActivityNotFoundException :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppButtonsPrefCtl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

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

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

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

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    const-string v2, "no_control_apps"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/g$a;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method refreshUi()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->retrieveAppEntry()V

    .line 757
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    goto :goto_1

    .line 761
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 763
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 764
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 765
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 766
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 767
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    const-string v5, "android.app.home.alternate"

    .line 772
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 774
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateOpenButton()V

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUninstallButton()V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 782
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->refreshUi()V

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method retrieveAppEntry()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_1

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v2, 0x401240

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 414
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when retrieving package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :cond_1
    return-void
.end method

.method uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "uninstall"

    const-string v2, "1"

    .line 595
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "20012"

    const-string v3, "click_app_info_items"

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 598
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 600
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 602
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 604
    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    const/4 v0, 0x0

    const-string/jumbo v2, "uninstall_multi_app"

    const/16 v3, 0x3e7

    if-ne p2, v3, :cond_1

    .line 608
    sget-boolean p2, Lcom/coloros/settings/a;->a:Z

    if-eqz p2, :cond_0

    .line 609
    new-instance v1, Landroid/content/Intent;

    const-string p2, "com.oppo.settings.action.EXP_UNINSTALL_MULTI_APP"

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package_name"

    .line 610
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 612
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 624
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    const-string/jumbo p2, "uninstall_multi_app_label"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/16 v2, 0x368

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p2, v2, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 630
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 631
    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    return-void
.end method

.method updateForceStopButton()V
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppButtonsPrefCtl"

    if-eqz v0, :cond_0

    const-string v0, "User can\'t force stop device admin"

    .line 558
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "App is not explicitly stopped"

    .line 563
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    return-void

    .line 566
    :cond_1
    new-instance v5, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "package"

    .line 567
    invoke-static {v6, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending broadcast to query restart status for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getForceStopUserHandle(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/settings/SettingsActivity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method updateForceStopButtonInner(Z)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 580
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isForbidForceStop(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setForceStopButtonEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    .line 582
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setForceStopButtonEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 583
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_2
    :goto_1
    return-void
.end method

.method updateOpenButton()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    .line 429
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->performOpenButton(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_1
    return-void
.end method

.method updateUninstallButton()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDisableable()Z

    move-result v3

    goto :goto_1

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 442
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->initUninstallButtonForUserApp1(Z)Z

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    .line 450
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->initUninstallButtonForUserApp(Z)Z

    move-result v3

    if-eqz v0, :cond_3

    .line 454
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v2

    .line 461
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/settings/m;->a(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    .line 466
    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/m;->a(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    .line 472
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v2

    .line 476
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->initUninstallButtons(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 484
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_7

    .line 488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_8

    .line 493
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-le v3, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_2

    .line 497
    :cond_8
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_9
    move v1, v3

    .line 502
    :goto_2
    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v3, :cond_a

    move v1, v2

    .line 510
    :cond_a
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v0, :cond_b

    goto :goto_3

    .line 514
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 515
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 516
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {v4, v0, v3}, Landroid/content/om/OverlayManager;->getOverlayInfo(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 517
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 518
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v4, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 520
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 519
    invoke-virtual {v3, v0, v4}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    move v2, v1

    .line 528
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->setUninstallButtonEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 529
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_d
    return-void
.end method
