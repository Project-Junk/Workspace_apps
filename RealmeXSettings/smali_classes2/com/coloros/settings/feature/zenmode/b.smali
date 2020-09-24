.class public final Lcom/coloros/settings/feature/zenmode/b;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


# static fields
.field private static c:Lcom/coloros/settings/feature/zenmode/b;


# instance fields
.field protected a:I

.field protected b:Landroid/app/NotificationManager$Policy;

.field private final d:Landroid/app/NotificationManager;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZenModeSettingsBackend"

    .line 55
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->e:Ljava/lang/String;

    const-string v0, "notification"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/b;->f:Landroid/content/ContentResolver;

    .line 1081
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/b;->f:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    const-string v1, "zen_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/b;->b()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 5

    .line 285
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

.method public static a()Lcom/coloros/settings/feature/zenmode/b;
    .locals 2

    .line 60
    sget-object v0, Lcom/coloros/settings/feature/zenmode/b;->c:Lcom/coloros/settings/feature/zenmode/b;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/coloros/settings/feature/zenmode/b;

    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/zenmode/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/b;->c:Lcom/coloros/settings/feature/zenmode/b;

    .line 63
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/zenmode/b;->c:Lcom/coloros/settings/feature/zenmode/b;

    return-object v0
.end method


# virtual methods
.method protected final a(ZI)I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

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

.method public final a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 1

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(IIII)V
    .locals 1

    .line 160
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method protected final a(IZ)V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/b;->b()V

    .line 144
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->f:Landroid/content/ContentResolver;

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1166
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    and-int/lit8 p1, p1, -0x4

    .line 148
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/coloros/settings/feature/zenmode/b;->a(IIII)V

    return-void
.end method

.method protected final a(I)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/b;->b()V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p1

    return p1
.end method

.method protected final b()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->b:Landroid/app/NotificationManager$Policy;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->d:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/b;->f:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    .line 1105
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    .line 91
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/b;->a:I

    return-void
.end method
