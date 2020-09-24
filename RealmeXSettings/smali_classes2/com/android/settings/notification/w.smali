.class public final Lcom/android/settings/notification/w;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/android/settings/notification/w;


# instance fields
.field protected a:I

.field protected b:Landroid/app/NotificationManager$Policy;

.field private final f:Landroid/app/NotificationManager;

.field private g:Ljava/lang/String;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 505
    new-instance v0, Lcom/android/settings/notification/w$1;

    invoke-direct {v0}, Lcom/android/settings/notification/w$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/w;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZenModeSettingsBackend"

    .line 64
    iput-object v0, p0, Lcom/android/settings/notification/w;->g:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    const-string v0, "notification"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/w;->f:Landroid/app/NotificationManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->a()V

    return-void
.end method

.method protected static a(Landroid/service/notification/ZenPolicy;)I
    .locals 1

    .line 313
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f121b33

    return p0

    :cond_0
    const p0, 0x7f121b35

    return p0

    :cond_1
    const p0, 0x7f121b31

    return p0

    :cond_2
    const p0, 0x7f121b30

    return p0
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 4

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method private a(ZI)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int p1, v0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/notification/w;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/notification/w;->e:Lcom/android/settings/notification/w;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/settings/notification/w;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/w;->e:Lcom/android/settings/notification/w;

    .line 71
    :cond_0
    sget-object p0, Lcom/android/settings/notification/w;->e:Lcom/android/settings/notification/w;

    return-object p0
.end method

.method private a(IIII)V
    .locals 1

    .line 167
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/w;->f:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method protected static b(Landroid/service/notification/ZenPolicy;)I
    .locals 1

    .line 328
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f121b34

    return p0

    :cond_0
    const p0, 0x7f121b35

    return p0

    :cond_1
    const p0, 0x7f121b31

    return p0

    :cond_2
    const p0, 0x7f121b30

    return p0
.end method

.method protected static b(Ljava/lang/String;)I
    .locals 5

    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method static d(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 441
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 442
    invoke-virtual {v0, p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method protected static e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method protected static f(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method protected static g(I)I
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const p0, 0x7f121b34

    return p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const p0, 0x7f121b33

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic h()Ljava/util/List;
    .locals 1

    .line 3434
    sget-object v0, Lcom/android/settings/notification/w;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3435
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/android/settings/notification/w;->d:Ljava/util/List;

    .line 3437
    :cond_0
    sget-object v0, Lcom/android/settings/notification/w;->d:Ljava/util/List;

    return-object v0
.end method

.method private i()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/w;->a:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/w;->a:I

    .line 113
    iget v0, p0, Lcom/android/settings/notification/w;->a:I

    return v0
.end method

.method private j()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "display_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "starred=1"

    const/4 v6, 0x0

    const-string v7, "times_contacted"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 2448
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 2450
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2452
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2454
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_4
    throw v1
.end method


# virtual methods
.method protected final a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/w;->f:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    :cond_0
    return-void
.end method

.method protected final a(I)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/w;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/w;->i()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/w;->a:I

    return-void
.end method

.method protected final a(II)V
    .locals 7

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->c()I

    move-result v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->d()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ne p1, v3, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->c()I

    move-result v5

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 1240
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->d()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eq p2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ne p2, v4, :cond_3

    move p2, v5

    :cond_3
    if-ne p1, v3, :cond_4

    const-string v0, "Calls"

    move-object v3, v0

    move v0, p2

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    if-ne p1, v2, :cond_5

    const-string v3, "Messages"

    move v1, p2

    .line 212
    :cond_5
    invoke-direct {p0, v6, p1}, Lcom/android/settings/notification/w;->a(ZI)I

    move-result p1

    iget-object v2, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/notification/w;->a(IIII)V

    .line 215
    sget-boolean p1, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/notification/w;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrefChange allow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "From="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method protected final a(IZ)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    and-int/lit8 p1, p1, -0x4

    .line 155
    iget-object p2, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v1, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/settings/notification/w;->a(IIII)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p1

    return p1
.end method

.method protected final b()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/w;->a:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/w;->a:I

    return-void
.end method

.method protected final b(I)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    .line 103
    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/w;->f:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/notification/w;->i()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/w;->a:I

    return-void
.end method

.method protected final b(IZ)V
    .locals 2

    .line 160
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/w;->a(ZI)I

    move-result p1

    .line 161
    iget-object p2, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v1, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/w;->a(IIII)V

    return-void
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x8

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method final c(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 395
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    .line 401
    :cond_1
    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2, p1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 402
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 404
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 405
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 407
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 408
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 409
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 410
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 411
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 412
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 413
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 414
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 415
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    .line 416
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    return-object p1
.end method

.method protected final c(I)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x4

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected final d(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    return-object p1
.end method

.method protected final d(I)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method protected final f()[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    .line 422
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 424
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 425
    sget-object v1, Lcom/android/settings/notification/w;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 7

    .line 472
    invoke-direct {p0}, Lcom/android/settings/notification/w;->j()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    const v1, 0x7f121b32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    if-ge v4, v1, :cond_1

    .line 481
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 485
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-le v1, v5, :cond_3

    .line 487
    iget-object v0, p0, Lcom/android/settings/notification/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100067

    sub-int/2addr v1, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 487
    invoke-virtual {v0, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_3
    :goto_1
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h(I)I
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/notification/w;->c()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-ne p1, v0, :cond_2

    const p1, 0x7f121b34

    return p1

    :cond_2
    const p1, 0x7f121b33

    return p1

    :cond_3
    const p1, 0x7f121b35

    return p1

    :cond_4
    const p1, 0x7f121b31

    return p1

    :cond_5
    const p1, 0x7f121b30

    return p1
.end method
