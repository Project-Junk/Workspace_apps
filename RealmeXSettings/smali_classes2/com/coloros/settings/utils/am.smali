.class public final Lcom/coloros/settings/utils/am;
.super Ljava/lang/Object;
.source "OppoStaticDcsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/am$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "turn-off"

    const-string v1, "turn-on-sim1"

    const-string v2, "turn-on-sim2"

    const-string v3, "turn-on-all"

    .line 215
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/am;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 344
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "external"

    const-string v1, "unkown"

    if-eqz p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    const-string p1, "internal"

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "/"

    .line 349
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 350
    array-length p1, p0

    if-lez p1, :cond_2

    .line 351
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    move-object v0, p0

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 432
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 433
    sget-object p1, Lcom/coloros/settings/utils/am;->a:[Ljava/lang/String;

    array-length p2, p1

    if-ge p0, p2, :cond_0

    .line 434
    aget-object p0, p1, p0

    return-object p0

    :cond_0
    const-string p0, "invalid-value"

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OppoStaticDcsUtil"

    if-eqz v1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Settings.System.getString("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") return null!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f121277

    .line 363
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 366
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/coloros/settings/utils/at$a;

    move-result-object p1

    .line 368
    invoke-static {v0}, Lcom/coloros/settings/utils/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/coloros/settings/utils/at$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/coloros/settings/utils/at;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 373
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/utils/at;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "External Ringtone file exist, title: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/coloros/settings/utils/at$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p0, p1, Lcom/coloros/settings/utils/at$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 376
    iget-object p0, p1, Lcom/coloros/settings/utils/at$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 378
    :cond_2
    iget-object p0, p1, Lcom/coloros/settings/utils/at$a;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 380
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "External Ringtone file exist, filename: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_3
    iget-object p1, p1, Lcom/coloros/settings/utils/at$a;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getRingtongName, + "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_2
    const-string p1, "Invalid uri or file not exist."

    .line 369
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 303
    new-instance v0, Lcom/coloros/settings/utils/am$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/utils/am$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coloros/settings/utils/am$a;->start()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@onCommon "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoStaticDcsUtil"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "20120"

    .line 315
    invoke-static {p0, v0, p1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "turn-on"

    goto :goto_0

    :cond_0
    const-string p2, "turn-off"

    :goto_0
    const-string v1, "event_tag"

    .line 401
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20012"

    .line 402
    invoke-static {p0, p2, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    if-eqz v1, :cond_85

    .line 1468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "OppoStaticDcsUtil"

    const-string v0, "Start static events"

    .line 1469
    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "ringtone"

    .line 1475
    invoke-static {v1, v6}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ringtone_sim1"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ringtone_sim2"

    .line 1476
    invoke-static {v1, v6}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ringtone_sim2"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "oppo_sms_notification_sound"

    .line 1477
    invoke-static {v1, v6}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sms_sound_sim1"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "notification_sim2"

    .line 1478
    invoke-static {v1, v6}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sms_sound_sim2"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    sget-boolean v6, Lcom/coloros/settings/a;->a:Z

    const-string v7, "calendar_sound"

    if-nez v6, :cond_0

    .line 1480
    invoke-static {v1, v7}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v6, "notification_sound"

    .line 1482
    invoke-static {v1, v6}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "notification_sound"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "20012"

    const-string v8, "ring_static"

    .line 1483
    invoke-static {v1, v6, v8, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v8, 0x0

    const-string v0, "allow_resizeable_screen"

    .line 1486
    invoke-static {v5, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    const-string v10, "resizeable_screen_static"

    .line 1485
    invoke-static {v1, v10, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "control_center_shortcut_disabled"

    .line 1489
    invoke-static {v5, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    const-string v10, "control_center_static"

    .line 1488
    invoke-static {v1, v10, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1491
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "oppo.front.touch.fingerprint.sensor"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "oppo_gesture_open_type"

    .line 1493
    invoke-static {v5, v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_3

    move v0, v9

    goto :goto_2

    :cond_3
    move v0, v8

    :goto_2
    const-string v10, "gesture_static"

    invoke-static {v1, v10, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1497
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->availabilityStatus(Landroid/content/Context;)Z

    move-result v0

    const-string v10, "event_tag"

    const-string v11, "turn-on"

    const-string v12, "turn-off"

    if-eqz v0, :cond_5

    .line 1498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v13, "adaptive_sleep"

    .line 1499
    invoke-static {v5, v13, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v9, :cond_4

    move-object v13, v11

    goto :goto_3

    :cond_4
    move-object v13, v12

    :goto_3
    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "keep_on_looking_state"

    .line 1500
    invoke-static {v1, v6, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1504
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v13, "wifi_auto_change_access_point"

    .line 1505
    invoke-static {v5, v13, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v9, :cond_6

    move-object v13, v11

    goto :goto_4

    :cond_6
    move-object v13, v12

    :goto_4
    const-string v14, "access_point"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "wifi_auto_change_network"

    .line 1507
    invoke-static {v5, v13, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v9, :cond_7

    move-object v13, v11

    goto :goto_5

    :cond_7
    move-object v13, v12

    :goto_5
    const-string v14, "network"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "wlan_static"

    .line 1509
    invoke-static {v1, v6, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1512
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/al;->ao(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, -0x2

    const/4 v14, 0x3

    if-eqz v0, :cond_8

    const-string v0, "ring_vibration_intensity"

    .line 1514
    invoke-static {v5, v0, v14, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1515
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1516
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "level"

    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_ring_vibration_level_state"

    .line 1517
    invoke-static {v1, v6, v0, v15}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "touch_vibration_intensity"

    .line 1519
    invoke-static {v5, v0, v14, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1520
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1521
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, "level"

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_touch_vibration_level_state"

    .line 1522
    invoke-static {v1, v6, v0, v9}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1526
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "oppo_harass_intercept_ringing"

    .line 1527
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "ringing"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_unknown"

    .line 1528
    invoke-static {v5, v9, v8}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "unknown"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_all_strangers_calls"

    .line 1529
    invoke-static {v5, v9, v8}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "all_strangers"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_credible_strangers_number"

    .line 1530
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "credible_strangers"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_not_intercept_repeat_call"

    .line 1531
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "not_repeat_call"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_all_incoming_calls"

    .line 1532
    invoke-static {v5, v9, v8}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "all_incoming"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_sim2_use_sim1_rules"

    .line 1533
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "use_sim1_rules"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_enbale"

    .line 1535
    invoke-static {v5, v9, v8}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_enbale"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_fraud"

    .line 1536
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_fraud"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_harassment"

    .line 1537
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_harassment"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_advertising"

    .line 1538
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_advertising"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_intermediary"

    .line 1539
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_intermediary"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_threshold"

    .line 1540
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_threshold"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "oppo_harass_intercept_mark_number_threshold_1"

    .line 1541
    invoke-static {v5, v9, v14}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "mark_number_threshold_1"

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "phone_call_static"

    .line 1542
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "smart_interception_switch"

    .line 1546
    invoke-static {v5, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v15, 0x1

    if-ne v9, v15, :cond_9

    move-object v9, v11

    goto :goto_6

    :cond_9
    move-object v9, v12

    :goto_6
    const-string v14, "smart_interception"

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "unknown_number_interception_switch"

    .line 1548
    invoke-static {v5, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v15, :cond_a

    move-object v9, v11

    goto :goto_7

    :cond_a
    move-object v9, v12

    :goto_7
    const-string v14, "unknown_number"

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "message_static"

    .line 1550
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1552
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Settings$ColorFontSizeSettingsActivity;->a(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v14, "index"

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "static_font_scale"

    .line 1553
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1555
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "vendor_media_vpp_enable"

    .line 1557
    invoke-static {v5, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v14, "open_video_enhancement_switch"

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "open_video_display_enhancement"

    .line 1558
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1561
    :cond_b
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1563
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "camera_3d_lifting_descending_sound_path"

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "camera_3d_sound_static"

    .line 1564
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1567
    :cond_c
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1569
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "color"

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3193
    invoke-static {v9}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "sound"

    .line 1570
    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "camera_lifting_descending_effect_info"

    .line 1571
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1575
    :cond_d
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1577
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v9, v11

    goto :goto_8

    :cond_e
    move-object v9, v12

    :goto_8
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "osie_state_static"

    .line 1578
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1582
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1583
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3392
    invoke-static/range {p0 .. p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 3394
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    goto :goto_9

    :cond_10
    move v14, v8

    .line 1583
    :goto_9
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "rules_count"

    .line 1584
    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "zen_mode_rules_count"

    .line 1585
    invoke-static {v1, v6, v9, v0, v8}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v0, -0x1

    if-eqz v1, :cond_13

    .line 3406
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_a

    .line 3409
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/q;->c(Landroid/content/Context;)I

    move-result v9

    .line 3410
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "sendFaceSwitchesState faceNum = "

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3412
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 3413
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v8, "face_num"

    invoke-interface {v15, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v9, :cond_12

    const-string v8, "coloros_face_unlock_switch"

    .line 3415
    invoke-static {v14, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "face_unlock"

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "coloros_face_unlock_remain_unlock_switch"

    .line 3417
    invoke-static {v14, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "face_remain_screen"

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "coloros_face_unlock_screen_fill_light"

    .line 3419
    invoke-static {v14, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "face_screen_light"

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "coloros_face_unlock_app_encryption_switch"

    .line 3421
    invoke-static {v14, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "face_app_encryption"

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "coloros_face_unlock_file_encryption_switch"

    .line 3423
    invoke-static {v14, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "face_file_encryption"

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v8, "face_static"

    .line 3427
    invoke-static {v1, v6, v8, v15}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1591
    :cond_13
    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3440
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 3441
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v13, "oppo_comm_incallui_side_notification_incomming_type"

    .line 3443
    invoke-static {v8, v13, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, "incall_type"

    .line 3442
    invoke-interface {v9, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "curved_display_incall_switch"

    .line 3444
    invoke-static {v1, v6, v0, v9}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "oppo_comm_incallui_curved_display_call_color"

    .line 3448
    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "color_type"

    .line 3447
    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "curved_display_incall_color"

    .line 3449
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "oppo_aod_curved_display_notification_switch"

    const/4 v13, 0x0

    .line 3453
    invoke-static {v8, v9, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 3452
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "curved_display_notification_switch"

    .line 3454
    invoke-static {v1, v6, v9, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "oppo_comm_incallui_curved_display_notification_color"

    .line 3458
    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "color_type"

    .line 3457
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "curved_display_notification_color"

    .line 3459
    invoke-static {v1, v6, v8, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1595
    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v8, "Setting_AodUserSetTime"

    const/4 v9, 0x0

    .line 1597
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    const/4 v8, 0x1

    goto :goto_b

    :cond_15
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_16

    goto :goto_c

    :cond_16
    move-object v11, v12

    .line 1598
    :goto_c
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "aod_switch_static"

    .line 1599
    invoke-static {v1, v6, v8, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1601
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v8, "1"

    const-string v9, "0"

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1602
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/b/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1603
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1604
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1c

    .line 1605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/feature/storage/sdcard/a;

    .line 4056
    iget-object v13, v12, Lcom/coloros/settings/feature/storage/sdcard/a;->f:Ljava/lang/String;

    .line 1607
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 4072
    iget v14, v12, Lcom/coloros/settings/feature/storage/sdcard/a;->b:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    const/4 v14, 0x1

    goto :goto_e

    :cond_19
    const/4 v14, 0x0

    .line 1609
    :goto_e
    invoke-static {v1, v13, v14}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    .line 4096
    iget-object v12, v12, Lcom/coloros/settings/feature/storage/sdcard/a;->e:Ljava/lang/String;

    if-eqz v13, :cond_1a

    move-object v13, v8

    goto :goto_f

    :cond_1a
    move-object v13, v9

    .line 1611
    :goto_f
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1614
    :cond_1b
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "sdcard_switch_info_status_each_app"

    .line 1615
    invoke-static {v1, v6, v0, v11}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1619
    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1620
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 1622
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1d

    move-object v11, v8

    goto :goto_10

    :cond_1d
    move-object v11, v9

    :goto_10
    const-string v12, "has_enroll_finger"

    .line 1621
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_1e
    new-instance v11, Lcom/coloros/settings/privacy/a/g;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;B)V

    .line 1625
    invoke-virtual {v11}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v11

    .line 1627
    invoke-static {v1, v11}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g$d;)Z

    move-result v11

    if-eqz v11, :cond_1f

    move-object v11, v8

    goto :goto_11

    :cond_1f
    move-object v11, v9

    :goto_11
    const-string v12, "has_bind_email"

    .line 1626
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "user_data_finger_email_has"

    .line 1628
    invoke-static {v1, v6, v11, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1630
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "display_dc_settings_switch"

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_20

    const/4 v0, 0x1

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    .line 1634
    :goto_12
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_21

    move-object v0, v8

    goto :goto_13

    :cond_21
    move-object v0, v9

    :goto_13
    const-string v12, "switch_state"

    .line 1635
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "display_dc_settings_switch_status"

    .line 1636
    invoke-static {v1, v6, v0, v11}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1640
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1641
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "global_delete_sound"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v13, :cond_23

    const/4 v11, 0x1

    goto :goto_14

    :cond_23
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_24

    move-object v11, v8

    goto :goto_15

    :cond_24
    move-object v11, v9

    :goto_15
    const-string v12, "global_delete_sound"

    .line 1644
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "global_delete_sound_state"

    .line 1645
    invoke-static {v1, v6, v11, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sound_effects_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v13, :cond_25

    const/4 v11, 0x1

    goto :goto_16

    :cond_25
    const/4 v11, 0x0

    :goto_16
    if-eqz v11, :cond_26

    move-object v11, v8

    goto :goto_17

    :cond_26
    move-object v11, v9

    :goto_17
    const-string v12, "touch_sounds"

    .line 1652
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "touch_sounds_state"

    .line 1653
    invoke-static {v1, v6, v11, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1658
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/g;->a(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_27

    move-object v11, v8

    goto :goto_18

    :cond_27
    move-object v11, v9

    :goto_18
    const-string v12, "key_accessibility_color_mode"

    .line 1659
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "key_accessibility_color_mode_state"

    .line 1660
    invoke-static {v1, v6, v11, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1665
    invoke-static/range {p0 .. p0}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_28

    const/4 v11, 0x2

    goto :goto_19

    :cond_28
    const/4 v11, 0x1

    .line 1667
    :goto_19
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "key_dark_mode"

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "key_dark_mode_state"

    .line 1668
    invoke-static {v1, v6, v11, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1671
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/ao;->a(Landroid/content/Context;)V

    .line 4320
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4321
    const-class v11, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageManager;

    .line 4322
    new-instance v13, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {v13, v11}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    .line 4324
    const-class v14, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/usage/StorageStatsManager;

    const/4 v15, 0x0

    if-eqz v11, :cond_29

    const-string v15, "private"

    .line 4327
    invoke-virtual {v11, v15}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v15

    :cond_29
    if-eqz v15, :cond_2b

    .line 4333
    :try_start_0
    invoke-static {v13, v14, v15}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->a(Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/b;

    move-result-object v11

    .line 4334
    iget-wide v13, v11, Lcom/android/settingslib/deviceinfo/b;->a:J

    sget-boolean v11, Lcom/coloros/settings/a;->h:Z

    if-nez v11, :cond_2a

    const/4 v11, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v11, 0x0

    :goto_1a
    invoke-static {v0, v13, v14, v11}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    .line 4335
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v14, "space"

    .line 4336
    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "storage_available_space"

    .line 4337
    invoke-static {v0, v6, v11, v13}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    :catch_0
    move-exception v0

    .line 4339
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Error occur, e = "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_2b
    :goto_1b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1677
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "location_mode"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1679
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "key_state"

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "20120"

    const-string v13, "location_service_state"

    .line 1680
    invoke-static {v1, v11, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1684
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "oppo_cta_user_experience"

    invoke-static {v13, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1686
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "key_user_experience_state"

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "event_user_experience"

    .line 1687
    invoke-static {v1, v11, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1691
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "lock_to_app_enabled"

    invoke-static {v13, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1693
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key_screen_pinning_state"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "event_screen_pinning"

    .line 1694
    invoke-static {v1, v11, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1698
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_shortcut_enabled"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1699
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key_accessibility_shortcut_state"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "event_timing_accessibility_shortcut"

    .line 1700
    invoke-static {v1, v11, v13, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1703
    invoke-static/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_enabled"

    const/4 v12, 0x0

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v15, :cond_2c

    const/4 v12, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v12, 0x0

    .line 1708
    :goto_1c
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v13

    .line 1710
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v14, :cond_33

    .line 1711
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1713
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    if-nez v17, :cond_2d

    move-object/from16 v17, v0

    .line 1714
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v18, v14

    const-string v14, "info.getResolveInfo()==null i="

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "AccessibilitySettings"

    invoke-static {v14, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v19, v2

    goto/16 :goto_1f

    :cond_2d
    move-object/from16 v17, v0

    move/from16 v18, v14

    .line 1717
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1718
    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-wide/from16 v19, v2

    .line 1719
    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v14, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_2e

    .line 1722
    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v2, 0x0

    .line 1724
    :goto_1e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 1725
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_talkback_state"

    .line 1727
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event_timming_talkback_state"

    .line 1728
    invoke-static {v1, v11, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1f

    :cond_2f
    const-string v3, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 1729
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_accessibility_state"

    .line 1731
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event_timming_accessibility_state"

    .line 1732
    invoke-static {v1, v11, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1f

    :cond_30
    const-string v3, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 1733
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_select_to_speak_state"

    .line 1735
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event_timming_select_to_speak"

    .line 1736
    invoke-static {v1, v11, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1f

    :cond_31
    const-string v3, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    .line 1737
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_switch_access_state"

    .line 1739
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event_switch_access_state"

    .line 1740
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_32
    :goto_1f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v14, v18

    move-wide/from16 v2, v19

    goto/16 :goto_1d

    :cond_33
    move-wide/from16 v19, v2

    .line 1745
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    move v0, v2

    goto :goto_20

    :cond_34
    move v0, v3

    .line 1746
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "auto_time_zone"

    invoke-static {v12, v13, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v2, :cond_35

    const/4 v2, 0x1

    goto :goto_21

    :cond_35
    const/4 v2, 0x0

    :goto_21
    if-eqz v0, :cond_36

    if-eqz v2, :cond_36

    const/4 v0, 0x1

    goto :goto_22

    :cond_36
    const/4 v0, 0x0

    :goto_22
    const-string v2, "auto_time"

    .line 1747
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1750
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1751
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/br;->a(Landroid/content/Context;)Z

    move-result v2

    .line 1752
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "world_clock_view_state"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "world_clock_state"

    .line 1753
    invoke-static {v1, v11, v2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1756
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "double_clock"

    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1760
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->f(Landroid/content/Context;)Z

    move-result v2

    .line 1761
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_37

    if-eqz v3, :cond_37

    const-string v2, "key_show_location_state"

    const-string v3, "2"

    .line 1763
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_37
    if-eqz v2, :cond_38

    const-string v2, "key_show_location_state"

    .line 1765
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_38
    if-eqz v3, :cond_39

    const-string v2, "key_show_location_state"

    .line 1767
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_23
    const-string v2, "key_show_location"

    .line 1769
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_password"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v3

    goto :goto_24

    :cond_3a
    const/4 v0, 0x0

    :goto_24
    const-string v2, "EVENT_SHOW_PASSWORD"

    .line 1774
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1777
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "user"

    .line 1778
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1779
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 1780
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3b

    const/4 v3, 0x1

    goto :goto_25

    :cond_3b
    const/4 v3, 0x0

    .line 1781
    :goto_25
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_3c

    .line 1783
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "add_user_num"

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "today_add_user"

    .line 1784
    invoke-static {v1, v11, v13, v12}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1786
    :cond_3c
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_3e

    .line 1788
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1789
    new-instance v13, Landroid/os/UserHandle;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v13, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_outgoing_calls"

    invoke-virtual {v0, v3, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "check"

    .line 1790
    invoke-interface {v12, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_3d
    const-string v3, "check"

    .line 1792
    invoke-interface {v12, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    const-string v3, "enable_calling_real_time"

    .line 1794
    invoke-static {v1, v11, v3, v12}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_26

    .line 1799
    :cond_3e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1800
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v11, 0x0

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1802
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto_brightness"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auto_brightness_state"

    .line 1803
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1808
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    const-string v3, "notification_prompt_mode"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1811
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_notification_prompt_mode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_notification_prompt_mode_state"

    .line 1812
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1817
    invoke-static/range {p0 .. p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3f

    move-object v2, v8

    goto :goto_28

    :cond_3f
    move-object v2, v9

    :goto_28
    const-string v3, "auto_rotate"

    .line 1818
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auto_rotate_state"

    .line 1819
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1824
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->getTimeoutDescriptionIndex(Landroid/content/Context;)I

    move-result v2

    if-ltz v2, :cond_40

    .line 1826
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_timeout"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_timeout_state"

    .line 1827
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1832
    :cond_40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v11, "font_scale"

    invoke-static {v2, v11, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 1835
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f030091

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1833
    invoke-static {v2, v3}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->a(F[Ljava/lang/String;)I

    move-result v2

    .line 1836
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "font_size"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "font_size_state"

    .line 1837
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1842
    new-instance v2, Lcom/android/settingslib/f/b;

    invoke-direct {v2, v1}, Lcom/android/settingslib/f/b;-><init>(Landroid/content/Context;)V

    .line 5185
    iget v2, v2, Lcom/android/settingslib/f/b;->e:I

    .line 1843
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_settings_screen_zoom"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "display_settings_screen_zoom_state"

    .line 1844
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1849
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_41

    const/4 v2, 0x1

    goto :goto_29

    :cond_41
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_42

    move-object v2, v8

    goto :goto_2a

    :cond_42
    move-object v2, v9

    :goto_2a
    const-string v3, "vibrate_on_touch"

    .line 1851
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vibrate_on_touch_state"

    .line 1852
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1856
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1857
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_volume_type_coloros_six"

    const/4 v11, 0x0

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1858
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default_volume_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "default_volume_type_state"

    .line 1859
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1864
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_43

    const/4 v2, 0x1

    goto :goto_2b

    :cond_43
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_44

    move-object v2, v8

    goto :goto_2c

    :cond_44
    move-object v2, v9

    :goto_2c
    const-string v3, "screen_locking_sounds"

    .line 1866
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_locking_sounds_state"

    .line 1867
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1872
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_45

    const/4 v2, 0x1

    goto :goto_2d

    :cond_45
    const/4 v2, 0x0

    :goto_2d
    if-eqz v2, :cond_46

    move-object v2, v8

    goto :goto_2e

    :cond_46
    move-object v2, v9

    :goto_2e
    const-string v3, "dial_pad_tones"

    .line 1874
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dial_pad_tones_state"

    .line 1875
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1879
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disable_front_finger_sound"

    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_47

    const/4 v2, 0x1

    goto :goto_2f

    :cond_47
    const/4 v2, 0x0

    :goto_2f
    if-eqz v2, :cond_48

    move-object v2, v8

    goto :goto_30

    :cond_48
    move-object v2, v9

    :goto_30
    const-string v3, "front_finger_sound"

    .line 1882
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "front_finger_sound_state"

    .line 1883
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1888
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    const-string v3, "fingerprint_preferences"

    const/4 v11, 0x0

    .line 1891
    invoke-virtual {v1, v3, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v2, :cond_4a

    .line 1894
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v12

    .line 1895
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v13

    if-eqz v12, :cond_49

    const-string v12, "fingerprint_count"

    .line 1897
    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-lez v12, :cond_49

    const-string v12, "fingerprint_unlock"

    .line 1898
    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_49

    const/4 v11, 0x1

    goto :goto_31

    :cond_49
    const/4 v11, 0x0

    :goto_31
    if-eqz v13, :cond_4b

    const-string v12, "face"

    .line 1901
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/face/FaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v12

    goto :goto_32

    :cond_4a
    const/4 v11, 0x0

    :cond_4b
    const/4 v12, 0x0

    :goto_32
    if-eqz v2, :cond_4c

    move-object v2, v8

    goto :goto_33

    :cond_4c
    move-object v2, v9

    :goto_33
    const-string v13, "screen_lock"

    .line 1904
    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_4d

    move-object v2, v8

    goto :goto_34

    :cond_4d
    move-object v2, v9

    :goto_34
    const-string v13, "fingerprint_lock"

    .line 1905
    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_4e

    move-object v2, v8

    goto :goto_35

    :cond_4e
    move-object v2, v9

    :goto_35
    const-string v13, "face_lock"

    .line 1906
    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_lock_type_state"

    .line 1907
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v11, :cond_4f

    const-string v2, "fingerprint_count"

    const/4 v11, 0x0

    .line 1913
    invoke-interface {v3, v2, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_36

    :cond_4f
    const/4 v2, 0x0

    .line 1915
    :goto_36
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint_count"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fingerprint_count_state"

    .line 1916
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1921
    new-instance v2, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v2, v1}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 1922
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v2

    .line 1923
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result v3

    const/4 v11, 0x1

    xor-int/2addr v3, v11

    if-eqz v2, :cond_50

    .line 1924
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_50

    const/4 v11, 0x1

    goto :goto_37

    :cond_50
    const/4 v11, 0x0

    :goto_37
    if-eqz v2, :cond_51

    .line 1925
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerEncryptFileEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_51

    const/4 v13, 0x1

    goto :goto_38

    :cond_51
    const/4 v13, 0x0

    .line 1926
    :goto_38
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isEncryptForSecurityCenterEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v3, :cond_52

    move-object v3, v8

    goto :goto_39

    :cond_52
    move-object v3, v9

    :goto_39
    const-string v15, "fingerprint_unlock"

    .line 1927
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_53

    move-object v3, v8

    goto :goto_3a

    :cond_53
    move-object v3, v9

    :goto_3a
    const-string v11, "fingerprint_encrypt_application"

    .line 1928
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_54

    move-object v3, v8

    goto :goto_3b

    :cond_54
    move-object v3, v9

    :goto_3b
    const-string v11, "fingerprint_encrypt_file_switch"

    .line 1929
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_55

    move-object v3, v8

    goto :goto_3c

    :cond_55
    move-object v3, v9

    :goto_3c
    const-string v11, "fingerprint_security_center_switch"

    .line 1930
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fingerprint_usage_state"

    .line 1931
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1935
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1936
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "optical_fp_anim_style"

    invoke-static {v3, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1938
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_56

    const-string v3, "anim_6"

    :cond_56
    const-string v11, "optical_fp_anim_style"

    .line 1941
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "optical_fp_anim_style_state"

    .line 1942
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1946
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1947
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "show_fingerprint_when_screen_off"

    invoke-static {v3, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "show_fingerprint_when_screen_off"

    .line 1949
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "show_fingerprint_when_screen_off_state"

    .line 1950
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_57

    move-object v3, v8

    goto :goto_3d

    :cond_57
    move-object v3, v9

    :goto_3d
    const-string v11, "face"

    .line 1955
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "face_state"

    .line 1956
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1960
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1961
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_58

    .line 1962
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockAppEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_58

    const/4 v11, 0x1

    goto :goto_3e

    :cond_58
    const/4 v11, 0x0

    :goto_3e
    if-eqz v2, :cond_59

    .line 1963
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockFileEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    goto :goto_3f

    :cond_59
    const/4 v2, 0x0

    .line 1964
    :goto_3f
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceSwitchForSecurityCenterEnable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v3, :cond_5a

    move-object v3, v8

    goto :goto_40

    :cond_5a
    move-object v3, v9

    :goto_40
    const-string v13, "face_unlock"

    .line 1965
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_5b

    move-object v3, v8

    goto :goto_41

    :cond_5b
    move-object v3, v9

    :goto_41
    const-string v11, "face_encrypt_application"

    .line 1966
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5c

    move-object v2, v8

    goto :goto_42

    :cond_5c
    move-object v2, v9

    :goto_42
    const-string v3, "face_encrypt_file_switch"

    .line 1967
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_5d

    move-object v2, v8

    goto :goto_43

    :cond_5d
    move-object v2, v9

    :goto_43
    const-string v3, "face_security_center_switch"

    .line 1968
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "face_usage_state"

    .line 1969
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1974
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getScreenLightState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5e

    move-object v2, v8

    goto :goto_44

    :cond_5e
    move-object v2, v9

    :goto_44
    const-string v3, "screen_fill_light_switch"

    .line 1975
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_fill_light_switch_state"

    .line 1976
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1980
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1981
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "coloros_face_unlock_eyes_condition"

    const/4 v11, 0x0

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    goto :goto_45

    :cond_5f
    const/4 v2, 0x0

    :goto_45
    if-eqz v2, :cond_60

    move-object v2, v8

    goto :goto_46

    :cond_60
    move-object v2, v9

    :goto_46
    const-string v3, "coloros_face_unlock_eyes_condition"

    .line 1982
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "coloros_face_unlock_eyes_condition_state"

    .line 1983
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1988
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceRemainUnlockEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 1989
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "face_recognize_type_motor_camera"

    goto :goto_47

    :cond_61
    const-string v3, "face_recognize_type"

    .line 1991
    :goto_47
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1997
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_62

    move-object v2, v8

    goto :goto_48

    :cond_62
    move-object v2, v9

    :goto_48
    const-string v3, "privacy_password"

    .line 1998
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "privacy_password_state"

    .line 1999
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2003
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2004
    new-instance v2, Lcom/coloros/settings/privacy/a/g;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v2

    iget-object v2, v2, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_63

    move-object v2, v8

    goto :goto_49

    :cond_63
    move-object v2, v9

    :goto_49
    const-string v3, "privacy_email"

    .line 2005
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "privacy_email_state"

    .line 2006
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "6Ybor28QRRMyftsLi4bN2w"

    .line 2011
    invoke-static {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    move-object v2, v8

    goto :goto_4a

    :cond_64
    move-object v2, v9

    :goto_4a
    const-string v3, "privacy_account"

    .line 2012
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "privacy_account_state"

    .line 2013
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2017
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2018
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Setting_AodEnableImmediate"

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-static {v2, v3, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_65

    const/4 v2, 0x1

    goto :goto_4b

    :cond_65
    const/4 v2, 0x0

    .line 2019
    :goto_4b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/ContentResolver;)I

    move-result v3

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/ContentResolver;)I

    move-result v11

    .line 2021
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/ContentResolver;)I

    move-result v12

    .line 2022
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->d(Landroid/content/ContentResolver;)I

    move-result v13

    .line 2023
    invoke-static {v3, v11}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 2024
    invoke-static {v12, v13}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_66

    move-object v2, v8

    goto :goto_4c

    :cond_66
    move-object v2, v9

    :goto_4c
    const-string v12, "screen_reminder"

    .line 2025
    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_reminder_start_time"

    .line 2026
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_reminder_end_time"

    .line 2027
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_reminder_state"

    .line 2028
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2032
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2033
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getFingerFaceSwitchValue(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_67

    const/4 v2, 0x1

    goto :goto_4d

    :cond_67
    const/4 v2, 0x0

    :goto_4d
    if-eqz v2, :cond_68

    move-object v2, v8

    goto :goto_4e

    :cond_68
    move-object v2, v9

    :goto_4e
    const-string v3, "key_oppo_fingerprint_face_unlock"

    .line 2035
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_oppo_fingerprint_face_unlock_state"

    .line 2036
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2052
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2053
    invoke-static {v5, v7}, Lcom/coloros/settings/utils/am;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "calendar_remind_ringtone"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "calendar_remind_ringtone_state"

    .line 2054
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2058
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    const-string v2, "users_and_accounts_auto_sync"

    .line 2057
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2061
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 2062
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "security_window"

    invoke-static {v3, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_69

    const/4 v0, 0x1

    goto :goto_4f

    :cond_69
    const/4 v0, 0x0

    :goto_4f
    const-string v2, "security_window"

    .line 2063
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2067
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_install_authentication"

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2069
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "settings_install_authentication_frequency"

    invoke-static {v3, v11, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2070
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v11, "install_authentication_category_state_update"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authentication_frequency_settings_state_update"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "install_authentication_category"

    .line 2072
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2075
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oppo_apk_prescan_switch"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_50

    :cond_6a
    move v0, v7

    :goto_50
    const-string v2, "safety_application"

    .line 2076
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2079
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6b

    const/4 v0, 0x1

    goto :goto_51

    :cond_6b
    move v0, v7

    :goto_51
    const-string v2, "screen_magnification_gestures"

    .line 2080
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2083
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_large_pointer_icon"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    goto :goto_52

    :cond_6c
    move v0, v7

    :goto_52
    const-string v2, "toggle_large_pointer_icon"

    .line 2084
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_autoclick_enabled"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6d

    move v0, v2

    goto :goto_53

    :cond_6d
    const/4 v0, 0x0

    :goto_53
    const-string v3, "pointer_stop_moving"

    .line 2089
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6e

    const/4 v0, 0x1

    goto :goto_54

    :cond_6e
    const/4 v0, 0x0

    :goto_54
    const-string v2, "toggle_power_button_ends_call_preference"

    .line 2096
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 6034
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0300ad

    .line 2099
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    .line 2101
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "long_press_timeout"

    .line 2100
    invoke-static {v2, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2103
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "select_long_press_timeout_preference_state"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "select_long_press_timeout_preference"

    .line 2104
    invoke-static {v1, v0, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "master_mono"

    const/4 v3, -0x2

    const/4 v7, 0x0

    invoke-static {v0, v2, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6f

    move v0, v2

    goto :goto_55

    :cond_6f
    move v0, v7

    :goto_55
    const-string v3, "toggle_master_mono"

    .line 2109
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_captioning_enabled"

    .line 2112
    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_70

    const/4 v0, 0x1

    goto :goto_56

    :cond_70
    const/4 v0, 0x0

    :goto_56
    const-string v2, "enable_captioning_switch"

    .line 2114
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2117
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "enable_development"

    .line 2118
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2123
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2124
    invoke-static {}, Lcom/coloros/settings/utils/al;->v()I

    const-string v0, "oppo_color_mode"

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 2125
    invoke-static {v5, v0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2127
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_color_mode"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_color_mode_state"

    .line 2128
    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2133
    :cond_71
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "setting_enable_color_temperature_regulation"

    const/4 v3, -0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_72

    const/4 v0, 0x1

    goto :goto_57

    :cond_72
    const/4 v0, 0x0

    :goto_57
    const-string v2, "intelligent_color_temperature_adjustment"

    .line 2135
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2138
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2140
    :cond_73
    invoke-static {}, Lcom/coloros/settings/utils/bh;->p()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x0

    goto :goto_58

    .line 2142
    :cond_74
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x3

    goto :goto_58

    :cond_75
    const/4 v0, 0x1

    .line 2145
    :goto_58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "coloros_screen_refresh_rate"

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2147
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onStaticEvents: defaultMode: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rateMode: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2149
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_refresh_rate_state"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_refresh_rate"

    .line 2150
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2154
    :cond_76
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2155
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "coloros_screen_resolution_adjust"

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2157
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStaticEvents: displayMode: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2159
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "screen_resolution_state"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_resolution"

    .line 2160
    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2164
    :cond_77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ColorDarkMode_change_night_mode"

    const/4 v3, -0x2

    const/4 v13, 0x0

    invoke-static {v0, v2, v13, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    move v0, v2

    goto :goto_59

    :cond_78
    move v0, v13

    :goto_59
    const-string v3, "key_dark_mode"

    .line 2166
    invoke-static {v1, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2169
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_dc_settings_switch"

    invoke-static {v0, v3, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_79

    const/4 v0, 0x1

    goto :goto_5a

    :cond_79
    move v0, v13

    :goto_5a
    const-string v2, "key_dc_backlight_mode"

    .line 2171
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2174
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "key_osie"

    .line 2175
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2178
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    goto :goto_5b

    :cond_7a
    move v0, v13

    :goto_5b
    const-string v2, "vibrate_when_ringing"

    .line 2179
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    goto :goto_5c

    :cond_7b
    move v0, v13

    :goto_5c
    const-string v2, "vibrate_when_silent"

    .line 2183
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "audio"

    .line 2186
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_7c
    move v0, v13

    :goto_5d
    const-string v2, "volume_silent"

    .line 2188
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2191
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2193
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "camera_sound_effect_file"

    .line 2195
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "camera_sound_effect"

    .line 2196
    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7d
    const-string v0, "audio"

    .line 2200
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "ktv_loopback_switch"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ktv_loopback_switch=open"

    .line 2201
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v3, "ktv_loopback_switch=close"

    .line 2202
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_5e

    :cond_7e
    move v0, v13

    goto :goto_5f

    :cond_7f
    :goto_5e
    const/4 v0, 0x1

    :goto_5f
    if-eqz v0, :cond_80

    const-string v0, "ktv_loopback_switch"

    .line 2204
    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2208
    :cond_80
    invoke-static {}, Lcom/coloros/settings/utils/ad;->c()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2209
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "recommend_ad"

    const/4 v15, 0x1

    invoke-static {v0, v2, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_81

    goto :goto_60

    :cond_81
    move v15, v13

    .line 2211
    :goto_60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v15, :cond_82

    goto :goto_61

    :cond_82
    move-object v8, v9

    .line 2212
    :goto_61
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_switch_static"

    .line 2213
    invoke-static {v1, v6, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2218
    :cond_83
    invoke-static/range {p0 .. p0}, Lcom/coloros/partners/dirac/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 2220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "dirac_eq_data"

    .line 2221
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dirac_eq_data"

    .line 2222
    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2224
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End static events, used time = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    return-void
.end method
