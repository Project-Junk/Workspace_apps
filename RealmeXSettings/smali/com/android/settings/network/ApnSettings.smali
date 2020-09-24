.class public Lcom/android/settings/network/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnSettings$a;,
        Lcom/android/settings/network/ApnSettings$b;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;

.field private static g:Z


# instance fields
.field private h:Landroid/os/UserManager;

.field private i:Lcom/android/settings/network/ApnSettings$b;

.field private j:Lcom/android/settings/network/ApnSettings$a;

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/telephony/SubscriptionInfo;

.field private m:I

.field private n:Lcom/android/internal/telephony/uicc/UiccController;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/IntentFilter;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:Landroid/os/PersistableBundle;

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "apn"

    const-string/jumbo v3, "type"

    const-string v4, "mvno_type"

    const-string v5, "mvno_match_data"

    const-string v6, "edited"

    const-string v7, "bearer"

    const-string v8, "bearer_bitmask"

    .line 86
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->d:[Ljava/lang/String;

    const-string v0, "content://telephony/carriers/restore"

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->e:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 117
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    .line 152
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/android/settings/network/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$1;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/ApnSettings;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/settings/network/ApnSettings;->m:I

    return p1
.end method

.method private a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 668
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subId/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    const-string v0, "state"

    .line 6193
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6195
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 6197
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method private static a([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 497
    array-length v1, p0

    .line 498
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ruleArray size = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApnSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    .line 499
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 501
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->g()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 9

    .line 423
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->y:Landroid/os/PersistableBundle;

    const-string v1, "ApnSettings"

    const-string v2, "include_common_rules"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->y:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 431
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apn hidden rules specified iccid, include common rule: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->y:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 433
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 434
    invoke-static {v5}, Lcom/android/settings/m;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    iget-object v6, p0, Lcom/android/settings/network/ApnSettings;->y:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <> \""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v0, v3

    .line 454
    :cond_2
    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->x:[Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 455
    invoke-static {v4}, Lcom/android/settings/network/ApnSettings;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 456
    iget-object v5, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 457
    :goto_1
    invoke-static {v4, v5}, Lcom/android/settings/network/ApnSettings;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 458
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v2, "false"

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    move v0, v3

    .line 460
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apn hidden rules in iccids, include common rule: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v4, p1}, Lcom/android/settings/network/ApnSettings;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->w:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 473
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 474
    invoke-static {v0, p1}, Lcom/android/settings/network/ApnSettings;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    :cond_7
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 480
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    invoke-static {v1}, Lcom/android/settings/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 484
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 486
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " <> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "iccid"

    .line 510
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 511
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ","

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 513
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 514
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0xf

    return p0

    :pswitch_6
    const/16 p0, 0xd

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_11
    const/4 p0, 0x2

    return p0

    :pswitch_12
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/network/ApnSettings;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settings/network/ApnSettings;->m:I

    return p0
.end method

.method static synthetic b(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->a(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/network/ApnSettings;)V
    .locals 1

    const/16 v0, 0x3e9

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->g:Z

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/android/settings/network/ApnSettings;->g:Z

    return v0
.end method

.method static synthetic f()Landroid/net/Uri;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/settings/network/ApnSettings;->e:Landroid/net/Uri;

    return-object v0
.end method

.method private g()V
    .locals 17

    move-object/from16 v0, p0

    .line 317
    iget-object v1, v0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 319
    :goto_0
    sget-object v2, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 320
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 326
    invoke-static {v10, v3}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Lcom/android/ims/e;->a()Z

    move-result v3

    .line 328
    iget-boolean v4, v0, Lcom/android/settings/network/ApnSettings;->t:Z

    if-nez v4, :cond_1

    invoke-static {v10}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    :cond_1
    const-string v4, " AND NOT (type=\'ims\')"

    .line 329
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_2
    invoke-direct {v0, v2}, Lcom/android/settings/network/ApnSettings;->a(Ljava/lang/StringBuilder;)V

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "where = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ApnSettings"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/settings/network/ApnSettings;->d:[Ljava/lang/String;

    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "name ASC"

    .line 336
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v4, "apn_list"

    .line 341
    invoke-virtual {v0, v4}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 342
    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->h()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/network/ApnSettings;->q:Ljava/lang/String;

    .line 351
    iget-object v7, v0, Lcom/android/settings/network/ApnSettings;->q:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/network/ApnPreference;->a(Ljava/lang/String;)V

    .line 352
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    .line 354
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 355
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 356
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 357
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    .line 358
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x4

    .line 359
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/android/settings/network/ApnSettings;->o:Ljava/lang/String;

    const/4 v15, 0x5

    .line 360
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/android/settings/network/ApnSettings;->p:Ljava/lang/String;

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/android/settings/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 365
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object v8, v11

    :cond_3
    const/4 v11, 0x7

    .line 368
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v15, 0x8

    .line 369
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 370
    invoke-static {v11}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v16

    or-int v7, v16, v15

    move-object/from16 v16, v4

    .line 371
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 372
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v4

    .line 371
    invoke-static {v4}, Lcom/android/settings/network/ApnSettings;->b(I)I

    move-result v4

    .line 373
    invoke-static {v7, v4}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v11, :cond_4

    if-eqz v15, :cond_6

    :cond_4
    if-nez v4, :cond_5

    if-nez v11, :cond_6

    if-nez v4, :cond_6

    .line 378
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    move-object/from16 v4, v16

    goto :goto_1

    .line 382
    :cond_6
    new-instance v4, Lcom/android/settings/network/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v4, v12}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v4, v8}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    .line 386
    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    .line 387
    invoke-virtual {v4, v0}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3147
    iput v1, v4, Lcom/android/settings/network/ApnPreference;->a:I

    .line 389
    iget-boolean v8, v0, Lcom/android/settings/network/ApnSettings;->v:Z

    if-eqz v8, :cond_7

    if-nez v14, :cond_7

    const/4 v8, 0x1

    .line 3151
    iput-boolean v8, v4, Lcom/android/settings/network/ApnPreference;->c:Z

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    .line 392
    invoke-virtual {v4, v9}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v13, :cond_9

    const-string v9, "mms"

    .line 395
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    move v9, v7

    goto :goto_5

    :cond_9
    :goto_4
    move v9, v8

    :goto_5
    if-eqz v3, :cond_c

    if-eqz v9, :cond_c

    .line 396
    invoke-static {v10}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v13, :cond_b

    const-string v9, "ims"

    .line 397
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    move v9, v7

    goto :goto_7

    :cond_b
    :goto_6
    move v9, v8

    .line 399
    :cond_c
    :goto_7
    invoke-virtual {v4, v9}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    if-eqz v9, :cond_e

    .line 401
    iget-object v7, v0, Lcom/android/settings/network/ApnSettings;->q:Ljava/lang/String;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4091
    invoke-virtual {v4}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/network/ApnPreference;->b:Ljava/lang/String;

    .line 404
    :cond_d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 406
    :cond_e
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_f
    move-object/from16 v16, v4

    .line 410
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    move-object/from16 v4, v16

    .line 413
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    :cond_10
    move-object/from16 v4, v16

    .line 415
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 416
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_a

    :cond_11
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnSettings;->f:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 634
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 635
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 636
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 638
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/android/settingslib/g$a;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->h:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->h:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->h:Landroid/os/UserManager;

    .line 305
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/16 p1, 0x243

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2231
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f1201b2

    .line 255
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    .line 257
    iget-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->setHasOptionsMenu(Z)V

    .line 258
    iget-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1500f0

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    return-void

    :cond_0
    const p1, 0x7f150014

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/ApnSettings;->m:I

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->r:Landroid/content/IntentFilter;

    .line 215
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->r:Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->r:Landroid/content/IntentFilter;

    const-string v1, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1252
    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->b:Z

    .line 222
    iget v0, p0, Lcom/android/settings/network/ApnSettings;->m:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->a(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->n:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v0, "carrier_config"

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 227
    iget v1, p0, Lcom/android/settings/network/ApnSettings;->m:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "hide_ims_apn_bool"

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->t:Z

    const-string v1, "allow_adding_apns_bool"

    .line 229
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->u:Z

    const-string v1, "apn_hide_rule_strings_array"

    .line 231
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->w:[Ljava/lang/String;

    const-string v1, "apn_hide_rule_strings_with_iccids_array"

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->x:[Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    const-string v2, "ApnSettings"

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iccid: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->y:Landroid/os/PersistableBundle;

    .line 238
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->u:Z

    if-eqz v1, :cond_2

    const-string v1, "read_only_apn_types_string_array"

    .line 239
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "not allowing adding APN because all APN types are read only"

    .line 243
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 244
    iput-boolean v1, p0, Lcom/android/settings/network/ApnSettings;->u:Z

    :cond_2
    const-string v1, "hide_preset_apn_details_bool"

    .line 247
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->v:Z

    .line 248
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->h:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 723
    new-instance p1, Lcom/android/settings/network/ApnSettings$2;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/ApnSettings$2;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 567
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    if-nez v0, :cond_1

    .line 568
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120d7d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 569
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0806a1

    .line 571
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 572
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v0, 0x2

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    .line 576
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 579
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 294
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 296
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 593
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x3e9

    .line 4643
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    .line 4644
    sput-boolean v1, Lcom/android/settings/network/ApnSettings;->g:Z

    .line 4646
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->i:Lcom/android/settings/network/ApnSettings$b;

    if-nez p1, :cond_1

    .line 4647
    new-instance p1, Lcom/android/settings/network/ApnSettings$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/ApnSettings$b;-><init>(Lcom/android/settings/network/ApnSettings;B)V

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->i:Lcom/android/settings/network/ApnSettings$b;

    .line 4650
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->j:Lcom/android/settings/network/ApnSettings$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->k:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    .line 4652
    :cond_2
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Restore default APN Handler: Process Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->k:Landroid/os/HandlerThread;

    .line 4654
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4655
    new-instance p1, Lcom/android/settings/network/ApnSettings$a;

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->k:Landroid/os/HandlerThread;

    .line 4656
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->i:Lcom/android/settings/network/ApnSettings$b;

    invoke-direct {p1, p0, v0, v2}, Lcom/android/settings/network/ApnSettings$a;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->j:Lcom/android/settings/network/ApnSettings$a;

    .line 4659
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->j:Lcom/android/settings/network/ApnSettings$a;

    .line 4660
    invoke-virtual {p1, v1}, Lcom/android/settings/network/ApnSettings$a;->sendEmptyMessage(I)Z

    return v1

    .line 4597
    :cond_4
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4598
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->l:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    const-string v2, "sub_id"

    .line 4600
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4601
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4602
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->o:Ljava/lang/String;

    const-string v2, "mvno_type"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4603
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->p:Ljava/lang/String;

    const-string v2, "mvno_match_data"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4605
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 283
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 285
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange(): Preference - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue type - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    .line 610
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 614
    check-cast p2, Ljava/lang/String;

    .line 5621
    iput-object p2, p0, Lcom/android/settings/network/ApnSettings;->q:Ljava/lang/String;

    .line 5622
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 5624
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 5625
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->q:Ljava/lang/String;

    const-string v1, "apn_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    sget-object v0, Lcom/android/settings/network/ApnSettings;->f:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 268
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 270
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->z:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->r:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->g:Z

    if-nez v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->g()V

    :cond_1
    return-void
.end method
