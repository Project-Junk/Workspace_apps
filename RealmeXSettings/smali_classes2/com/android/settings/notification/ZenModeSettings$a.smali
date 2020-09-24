.class public final Lcom/android/settings/notification/ZenModeSettings$a;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 106
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings$a;->b:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121ad6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    .line 265
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b39

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    .line 271
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b9b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 274
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez p1, :cond_3

    .line 275
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b30

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_3
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne p1, v1, :cond_4

    .line 277
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b31

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b35

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 285
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b27

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    if-ne p1, v1, :cond_7

    .line 291
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b50

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 294
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez p1, :cond_8

    .line 295
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121ad7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 296
    :cond_8
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne p1, v1, :cond_9

    .line 297
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b08

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 299
    :cond_9
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b8d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 p2, 0x10

    if-ne p1, p2, :cond_b

    .line 305
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const p2, 0x7f121b53

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method private a(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    sget-object v1, Lcom/android/settings/notification/ZenModeSettings$a;->b:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1, v4}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    const/16 v5, 0x8

    .line 239
    invoke-static {p1, v5}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v5, :cond_1

    .line 244
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/android/settings/notification/ZenModeSettings$a;->a(ILandroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 251
    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Ljava/lang/Integer;)Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(Ljava/lang/Integer;)Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 145
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$FvnItfz54g6vZu6Ar24jqlcKmiI(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JXnl11bvu--TmN2MUSWseijM0Ds(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings$a;->b(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a()I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    .line 220
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final a(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 6

    .line 143
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$a$JXnl11bvu--TmN2MUSWseijM0Ds;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$a$JXnl11bvu--TmN2MUSWseijM0Ds;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v0, 0x7f121b33

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v3, 0x7f121b02

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 150
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v3, 0x7f121b03

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v4, v2

    .line 153
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final b(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$a$FvnItfz54g6vZu6Ar24jqlcKmiI;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$a$FvnItfz54g6vZu6Ar24jqlcKmiI;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v0, 0x7f121b34

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final c(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 1

    .line 197
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121b61

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121b60

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121b5f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
