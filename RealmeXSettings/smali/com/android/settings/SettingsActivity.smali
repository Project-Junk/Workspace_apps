.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/android/settings/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$a;
    }
.end annotation


# static fields
.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_HIDE_DRAWER:Ljava/lang/String; = ":settings:hide_drawer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":settings:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":settings:show_fragment_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RESID:Ljava/lang/String; = ":settings:show_fragment_title_resid"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RES_PACKAGE_NAME:Ljava/lang/String; = ":settings:show_fragment_title_res_package_name"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "SettingsActivity"

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field protected mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/b;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mFocusOnListener:Lcom/android/settings/SettingsActivity$a;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mNextButton:Landroid/widget/Button;

.field private mSMQ:Lcom/android/settings/k;

.field private mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 159
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private doUpdateTilesList()V
    .locals 14

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 654
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 655
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 660
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.hardware.wifi"

    .line 661
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 659
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    .line 663
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isCheckBluetoothSettingsActivityTile()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 664
    new-instance v5, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 665
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "android.hardware.bluetooth"

    .line 666
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 664
    invoke-direct {p0, v3, v5, v0, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v7

    .line 670
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/k;

    invoke-virtual {v0}, Lcom/android/settings/k;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    new-instance v0, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$SMQQtiFeedbackActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/k;

    invoke-virtual {v5}, Lcom/android/settings/k;->a()Z

    move-result v5

    invoke-direct {p0, v3, v0, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v7

    .line 676
    :cond_5
    :goto_3
    new-instance v0, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 677
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/android/settings/m;->b()Z

    move-result v5

    .line 676
    invoke-direct {p0, v3, v0, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v7

    .line 681
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isCheckConnectedDeviceDashboardActivityTile()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 682
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 684
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v5

    xor-int/2addr v5, v7

    .line 682
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v0, v6

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v7

    .line 688
    :cond_a
    :goto_7
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isCheckSimSettingsActivityTile()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 689
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 690
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p0}, Lcom/android/settings/m;->e(Landroid/content/Context;)Z

    move-result v5

    .line 689
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    move v0, v6

    goto :goto_9

    :cond_c
    :goto_8
    move v0, v7

    .line 695
    :cond_d
    :goto_9
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 696
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 695
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    move v0, v6

    goto :goto_b

    :cond_f
    :goto_a
    move v0, v7

    .line 699
    :goto_b
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 700
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/android/settings/m;->b()Z

    move-result v5

    .line 699
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_11

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    move v0, v6

    goto :goto_d

    :cond_11
    :goto_c
    move v0, v7

    .line 704
    :goto_d
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 705
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 707
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v7

    goto :goto_e

    :cond_12
    move v5, v6

    .line 704
    :goto_e
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_14

    if-eqz v0, :cond_13

    goto :goto_f

    :cond_13
    move v0, v6

    goto :goto_10

    :cond_14
    :goto_f
    move v0, v7

    .line 710
    :goto_10
    invoke-static {p0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 711
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v7

    goto :goto_11

    :cond_15
    move v4, v6

    :goto_11
    if-eqz v4, :cond_18

    .line 714
    new-instance v5, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 715
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-direct {p0, v3, v5, v4, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v0, :cond_16

    goto :goto_12

    :cond_16
    move v0, v6

    goto :goto_13

    :cond_17
    :goto_12
    move v0, v7

    .line 721
    :cond_18
    :goto_13
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/backup/UserBackupSettingsActivity;

    .line 722
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_14

    :cond_19
    move v0, v6

    goto :goto_15

    :cond_1a
    :goto_14
    move v0, v7

    .line 724
    :goto_15
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isCheckWifiDisplaySettingsActivityTile()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 725
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 726
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Landroid/content/Context;)Z

    move-result v5

    .line 725
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_16

    :cond_1b
    move v0, v6

    goto :goto_17

    :cond_1c
    :goto_16
    move v0, v7

    :cond_1d
    :goto_17
    if-nez v1, :cond_23

    .line 734
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/b;

    invoke-interface {v4}, Lcom/android/settings/dashboard/b;->a()Ljava/util/List;

    move-result-object v4

    .line 735
    monitor-enter v4

    .line 736
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/h/b;

    .line 737
    invoke-virtual {v8}, Lcom/android/settingslib/h/b;->b()I

    move-result v9

    move v10, v0

    move v0, v6

    :goto_19
    if-ge v0, v9, :cond_21

    .line 739
    invoke-virtual {v8, v0}, Lcom/android/settingslib/h/b;->b(I)Lcom/android/settingslib/h/c;

    move-result-object v11

    .line 1130
    iget-object v11, v11, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 740
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 741
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 742
    sget-object v13, Lcom/android/settings/core/a/a;->b:[Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 744
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    if-nez v12, :cond_20

    .line 747
    invoke-direct {p0, v3, v11, v6, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_1f

    if-eqz v10, :cond_1e

    goto :goto_1a

    :cond_1e
    move v10, v6

    goto :goto_1b

    :cond_1f
    :goto_1a
    move v10, v7

    :cond_20
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_21
    move v0, v10

    goto :goto_18

    .line 752
    :cond_22
    monitor-exit v4

    goto :goto_1c

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_23
    :goto_1c
    if-eqz v0, :cond_24

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabled state changed for some tiles, reloading all categories "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    .line 757
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    return-void

    :cond_24
    const-string v0, "SettingsActivity"

    const-string v1, "No enabled state changed, skipping updateCategory call"

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    if-nez v0, :cond_0

    .line 815
    const-class v0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    .line 816
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->bind(Ljava/lang/Object;)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    return-object v0
.end method

.method private getMetaData()V
    .locals 3

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    .line 794
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get Metadata for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "com.android.settings."

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v0, "com.android.settings.RunningServices"

    .line 561
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.applications.StorageUse"

    .line 562
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :cond_2
    const-class p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    if-nez p4, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/a/a;->b:[Ljava/lang/String;

    .line 772
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 775
    :cond_0
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 776
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 779
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 781
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return p3
.end method

.method private setTitleFromBackStack()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v0, :cond_0

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 449
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V

    return-void
.end method

.method private setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .line 455
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    if-lez v0, :cond_0

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 459
    :cond_0
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const-string v2, ":settings:show_fragment_title_resid"

    .line 401
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 403
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 404
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v2, ":settings:show_fragment_title_res_package_name"

    .line 406
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 410
    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 410
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 413
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 417
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Could not find package"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_0
    iget p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_1

    .line 423
    :cond_1
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title"

    .line 424
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 426
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p1, "Done setting title"

    .line 428
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;
    .locals 5

    const v0, 0x7f121163

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 589
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.DEFAULT"

    .line 590
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-object v2

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->processTargetFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Switching to fragment "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isCheckSimSettingsActivityTile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "extphone"

    .line 602
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/f$a;->a(Landroid/os/IBinder;)Lorg/a/a/f;

    move-result-object v0

    .line 604
    :try_start_0
    const-class v3, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, "com.qualcomm.qti.simsettings"

    .line 605
    invoke-interface {v0, v3}, Lorg/a/a/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "switchToFragment, launch simSettings  "

    .line 606
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v0, "couldn\'t connect to extphone service, launch the default sim cards activity"

    .line 617
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_4

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 623
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid fragment for this activity: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 626
    :cond_4
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->attachFragmentToBaseLayout()Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f0a0198

    goto :goto_1

    :cond_5
    const p3, 0x7f0a03c7

    :goto_1
    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-lez p4, :cond_6

    .line 630
    invoke-virtual {p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    :cond_6
    if-eqz p5, :cond_7

    .line 632
    invoke-virtual {p2, p5}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    .line 634
    :cond_7
    :goto_2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string p2, "Executed frag manager pendingTransactions"

    .line 636
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateTilesList()V
    .locals 1

    .line 644
    new-instance v0, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected attachFragmentToBaseLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 0

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 531
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 536
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, ":settings:show_fragment"

    .line 537
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 540
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 542
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v3, "intent"

    .line 544
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance p1, Lcom/android/settingslib/core/instrumentation/e;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/d;)V

    return-object p1

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/SettingsBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 523
    :goto_0
    sget-object v2, Lcom/android/settings/core/a/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 524
    sget-object v2, Lcom/android/settings/core/a/a;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isValidFragment(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$onCreate$0$SettingsActivity(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$SettingsActivity(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$SettingsActivity(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v0, ":settings:show_fragment_args"

    .line 388
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    .line 389
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    return-void

    :cond_0
    const p1, 0x7f1206a0

    .line 393
    iput p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 394
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object p1

    const-class p2, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->getSwitchDefaultFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 372
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 376
    instance-of v2, v1, Lcom/android/settings/core/b;

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v1, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f130249

    const/4 v1, 0x1

    .line 366
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SettingsActivity"

    const-string v1, "Starting onCreate"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/b;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/b;

    .line 239
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:ui_options"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 246
    :cond_0
    new-instance v1, Lcom/android/settings/k;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/k;

    const-string v1, ":settings:show_fragment"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    instance-of v2, p0, Lcom/android/settings/SubSettings;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    .line 255
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v5

    const v6, 0x7f130407

    invoke-virtual {v5, v6}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->getSubSettingsTheme(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->setSubActivityTheme(ZLjava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->attachFragmentToBaseLayout()Z

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x7f0d02d4

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_5

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v1, ":settings:categories"

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 281
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    goto :goto_2

    .line 286
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V

    .line 289
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result p1

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 293
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 294
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 295
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_7
    const p1, 0x7f0a06b7

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 298
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_8

    .line 299
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    :cond_8
    const-string p1, "extra_prefs_show_button_bar"

    .line 303
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f0a0104

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 307
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a00c2

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 310
    new-instance v1, Lcom/android/settings/-$$Lambda$SettingsActivity$xj33YuwAAWABRerpKy-5E-8fkjk;

    invoke-direct {v1, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$xj33YuwAAWABRerpKy-5E-8fkjk;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a061b

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 315
    new-instance v2, Lcom/android/settings/-$$Lambda$SettingsActivity$DprhoLIEb9VcKgAzJHK8h9J6b8M;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$DprhoLIEb9VcKgAzJHK8h9J6b8M;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0457

    .line 319
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 320
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/-$$Lambda$SettingsActivity$1W-97zC8WEIU323IiggDWF3SpYA;

    invoke-direct {v4, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$1W-97zC8WEIU323IiggDWF3SpYA;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "extra_prefs_set_next_text"

    .line 326
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_a

    .line 327
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 329
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 331
    :cond_9
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    const-string v2, "extra_prefs_set_back_text"

    .line 334
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 335
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 337
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 339
    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_4
    const-string p1, "extra_prefs_show_skip"

    .line 342
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 343
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getAdaptor()Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->supportFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->onCreate(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 850
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onDestroy()V

    .line 851
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->unbind()V

    .line 853
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->unbind()V

    .line 857
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mSettingsAdaptor:Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 502
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onPause()V

    .line 503
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 505
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 2

    .line 189
    new-instance v0, Lcom/android/settings/core/f;

    invoke-direct {v0, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p2}, Lcom/android/settings/core/f;->a(Landroidx/preference/Preference;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 194
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p2

    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settingslib/core/instrumentation/b;

    .line 196
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 1063
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 484
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onResume()V

    .line 486
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 492
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 841
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 842
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mFocusOnListener:Lcom/android/settings/SettingsActivity$a;

    if-eqz p1, :cond_0

    .line 843
    invoke-interface {p1}, Lcom/android/settings/SettingsActivity$a;->a()V

    :cond_0
    return-void
.end method

.method public registerFocusOnLister(Lcom/android/settings/SettingsActivity$a;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mFocusOnListener:Lcom/android/settings/SettingsActivity$a;

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    const-string v1, ":settings:categories"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08072f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/Bitmap;)V

    .line 517
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method protected supportFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterFocusOnListener()V
    .locals 1

    const/4 v0, 0x0

    .line 836
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFocusOnListener:Lcom/android/settings/SettingsActivity$a;

    return-void
.end method
