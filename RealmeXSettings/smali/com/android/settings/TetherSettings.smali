.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$a;,
        Lcom/android/settings/TetherSettings$b;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:Landroidx/preference/TwoStatePreference;

.field private e:Landroidx/preference/TwoStatePreference;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/os/Handler;

.field private k:Lcom/android/settings/TetherSettings$a;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/android/settings/datausage/c;

.field private s:Z

.field private t:Landroidx/preference/Preference;

.field private u:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 472
    new-instance v0, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 109
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->j:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->u:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 422
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 424
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->p:Z

    .line 425
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 426
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->k:Lcom/android/settings/TetherSettings$a;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->j:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->d()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->e()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .line 3047
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_mobile_hotspot_provision_app"

    .line 3048
    invoke-static {p0, v1}, Lcom/android/settingslib/m/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 3047
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "net.tethering.noprovisioning"

    .line 3049
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "carrier_config"

    .line 4035
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_2

    .line 4036
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 4040
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v5, "require_entitlement_checks_bool"

    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 3057
    array-length v0, v0

    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    .line 4406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "com.android.internal.R.array.config_mobile_hotspot_provision_app"

    .line 4407
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4406
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 4408
    array-length v2, v0

    if-lt v2, v3, :cond_4

    .line 4411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4412
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4413
    aget-object v3, v0, v1

    aget-object v0, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 4415
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 4416
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    move p0, v4

    goto :goto_4

    :cond_4
    move p0, v1

    :goto_4
    if-nez p0, :cond_5

    return v4

    :cond_5
    return v1
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->o:Z

    return p1
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->o:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 343
    :goto_0
    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, p1, v4

    .line 344
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->g:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    move v5, v2

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v10, v7, v5

    .line 345
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v9, :cond_1

    .line 347
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v6}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_1

    .line 353
    :cond_3
    array-length p1, p2

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, p1, :cond_6

    aget-object v5, p2, v3

    .line 354
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->g:[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    move v4, v2

    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v9, v6, v4

    .line 355
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_3

    .line 359
    :cond_6
    array-length p1, p3

    move p2, v2

    :goto_5
    if-ge p2, p1, :cond_8

    aget-object v3, p3, p2

    .line 360
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->g:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_6
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 361
    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 366
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 367
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_9
    if-eqz v0, :cond_a

    .line 369
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 370
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 372
    :cond_a
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 373
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;)V
    .locals 1

    const/4 v0, 0x2

    .line 62
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->a(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 378
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    if-eqz v1, :cond_3

    .line 390
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->u:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 193
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->s:Z

    .line 194
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->s:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->t:Landroidx/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->s:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final b(IZ)V
    .locals 0

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onAttach(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->m:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150127

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f121693

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 127
    new-instance p1, Lcom/android/settings/datausage/c;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->r:Lcom/android/settings/datausage/c;

    .line 128
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->r:Lcom/android/settings/datausage/c;

    .line 1070
    iget-object p1, p1, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->s:Z

    const-string p1, "disabled_on_data_saver"

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->t:Landroidx/preference/Preference;

    const/4 p1, 0x1

    .line 1252
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->b:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->q:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->u:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    const-string/jumbo v0, "usb_tether_settings"

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    const-string v0, "enable_bluetooth_tethering"

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    .line 148
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->r:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->a(Lcom/android/settings/datausage/c$a;)V

    const-string v0, "connectivity"

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    .line 152
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->g:[Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->h:[Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->g:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->h:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 158
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->m:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    if-nez v2, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_7

    .line 168
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 171
    :cond_7
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    :goto_2
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->r:Lcom/android/settings/datausage/c;

    .line 2070
    iget-object p1, p1, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->a(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->r:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->b(Lcom/android/settings/datausage/c$a;)V

    .line 182
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    .line 185
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->d:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_1

    .line 437
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->a(I)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->e:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_3

    .line 443
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->a(I)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 450
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 4

    .line 276
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 278
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->q:Z

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f121697

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/android/settings/TetherSettings$a;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherSettings$a;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->k:Lcom/android/settings/TetherSettings$a;

    .line 290
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->o:Z

    .line 291
    new-instance v1, Lcom/android/settings/TetherSettings$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/TetherSettings$b;-><init>(Lcom/android/settings/TetherSettings;B)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 295
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_STATE"

    .line 296
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SHARED"

    .line 300
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    .line 301
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 302
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 306
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 309
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->d()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 316
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 318
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->f:Landroid/content/BroadcastReceiver;

    .line 323
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->k:Lcom/android/settings/TetherSettings$a;

    return-void
.end method
