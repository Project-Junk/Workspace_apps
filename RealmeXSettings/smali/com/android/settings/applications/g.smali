.class public final Lcom/android/settings/applications/g;
.super Lcom/android/settings/applications/e;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/g$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field public static final h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field public static final i:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field public static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/String;

.field private final m:Z

.field private final n:Landroid/content/Context;

.field private o:Landroid/app/usage/IUsageStatsManager;

.field private p:Lcom/android/settings/notification/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    new-instance v0, Lcom/android/settings/applications/g$1;

    invoke-direct {v0}, Lcom/android/settings/applications/g$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/g;->g:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 259
    new-instance v0, Lcom/android/settings/applications/g$2;

    invoke-direct {v0}, Lcom/android/settings/applications/g$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/g;->h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 274
    new-instance v0, Lcom/android/settings/applications/g$3;

    invoke-direct {v0}, Lcom/android/settings/applications/g$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/g;->i:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 289
    new-instance v0, Lcom/android/settings/applications/g$4;

    invoke-direct {v0}, Lcom/android/settings/applications/g$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/g;->j:Ljava/util/Comparator;

    .line 305
    new-instance v0, Lcom/android/settings/applications/g$5;

    invoke-direct {v0}, Lcom/android/settings/applications/g$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/g;->k:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    const-string p2, "AppStateNotificationBridge"

    .line 50
    iput-object p2, p0, Lcom/android/settings/applications/g;->l:Ljava/lang/String;

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/android/settings/applications/g;->m:Z

    .line 62
    iput-object p1, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/android/settings/applications/g;->o:Landroid/app/usage/IUsageStatsManager;

    .line 64
    iput-object p6, p0, Lcom/android/settings/applications/g;->p:Lcom/android/settings/notification/k;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/g;->f:Ljava/util/List;

    .line 66
    iget-object p1, p0, Lcom/android/settings/applications/g;->f:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p5, p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/android/settings/applications/g;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/android/settings/applications/g$a;
    .locals 9

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v0, 0x240c8400

    sub-long v1, v3, v0

    const/4 v8, 0x0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/g;->o:Landroid/app/usage/IUsageStatsManager;

    iget-object v5, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    .line 184
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v5, p1

    move-object v6, p2

    .line 183
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p1, v8

    :goto_0
    if-eqz p1, :cond_3

    .line 189
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 190
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p1, p2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 193
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    if-nez v8, :cond_1

    .line 195
    new-instance v8, Lcom/android/settings/applications/g$a;

    invoke-direct {v8}, Lcom/android/settings/applications/g$a;-><init>()V

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, v8, Lcom/android/settings/applications/g$a;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 198
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/settings/applications/g$a;->c:J

    .line 200
    :cond_2
    iget v0, v8, Lcom/android/settings/applications/g$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/settings/applications/g$a;->d:I

    goto :goto_1

    :cond_3
    return-object v8
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/applications/g$a;I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x1

    const v1, 0x7f0a0630

    if-ne p2, v1, :cond_1

    .line 105
    iget-wide v1, p1, Lcom/android/settings/applications/g$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    const p1, 0x7f120f0a

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide p1, p1, Lcom/android/settings/applications/g$a;->c:J

    sub-long/2addr v1, p1

    long-to-double p1, v1

    .line 108
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const v1, 0x7f0a062f

    if-ne p2, v1, :cond_3

    .line 111
    iget p2, p1, Lcom/android/settings/applications/g$a;->a:I

    const/4 v1, 0x0

    if-lez p2, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100036

    iget v2, p1, Lcom/android/settings/applications/g$a;->a:I

    new-array v0, v0, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/settings/applications/g$a;->a:I

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 112
    invoke-virtual {p0, p2, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100037

    iget v2, p1, Lcom/android/settings/applications/g$a;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/settings/applications/g$a;->b:I

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 115
    invoke-virtual {p0, p2, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/android/settings/applications/g$a;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 132
    iget v0, p0, Lcom/android/settings/applications/g$a;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/g$a;->a:I

    .line 133
    iget v0, p0, Lcom/android/settings/applications/g$a;->d:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 134
    iget v0, p0, Lcom/android/settings/applications/g$a;->d:I

    iput v0, p0, Lcom/android/settings/applications/g$a;->b:I

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/view/View;)V
    .locals 3

    .line 225
    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0a06b6

    .line 226
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/widget/Switch;->toggle()V

    .line 232
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 233
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    .line 232
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;IZ)Z

    .line 234
    invoke-static {p1}, Lcom/android/settings/applications/g;->e(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/android/settings/applications/g$a;->f:Z

    :cond_1
    return-void
.end method

.method private a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/g$a;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 124
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/settings/applications/g$a;->f:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/android/settings/notification/k;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/settings/applications/g$a;->g:Z

    .line 126
    iget-boolean p1, p2, Lcom/android/settings/applications/g$a;->g:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p2, Lcom/android/settings/applications/g$a;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p2, Lcom/android/settings/applications/g$a;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p2, Lcom/android/settings/applications/g$a;->e:Z

    :cond_2
    return-void
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 0

    .line 322
    invoke-static {p0}, Lcom/android/settings/applications/g;->e(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 327
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/g$a;->e:Z

    return p0
.end method

.method public static final c(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 331
    invoke-static {p0}, Lcom/android/settings/applications/g;->e(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 336
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/g$a;->f:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic d(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/android/settings/applications/g;->e(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/g$a;

    if-eqz v1, :cond_1

    .line 213
    iget-object p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/applications/g$a;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private e()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/g$a;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v1, 0x240c8400

    sub-long v10, v8, v1

    .line 144
    iget-object v1, p0, Lcom/android/settings/applications/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/g;->o:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/settings/applications/g;->n:Landroid/content/Context;

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-wide v2, v10

    move-wide v4, v8

    move v6, v13

    .line 147
    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 150
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v14, :cond_0

    .line 153
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 154
    :cond_1
    :goto_1
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v14, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 157
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/settings/applications/g;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/g$a;

    if-nez v2, :cond_2

    .line 159
    new-instance v2, Lcom/android/settings/applications/g$a;

    invoke-direct {v2}, Lcom/android/settings/applications/g$a;-><init>()V

    .line 160
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/settings/applications/g;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/applications/g$a;->c:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 165
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/applications/g$a;->c:J

    .line 167
    :cond_3
    iget v3, v2, Lcom/android/settings/applications/g$a;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/settings/applications/g$a;->d:I

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$IVoXiJThB4aU8Q51mnlri97_lNg(Lcom/android/settings/applications/g;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/g;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Landroid/view/View$OnClickListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$g$IVoXiJThB4aU8Q51mnlri97_lNg;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/-$$Lambda$g$IVoXiJThB4aU8Q51mnlri97_lNg;-><init>(Lcom/android/settings/applications/g;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/g;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/applications/g;->e()Ljava/util/Map;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 85
    iget-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 86
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/applications/g;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/g$a;

    .line 87
    invoke-static {v3}, Lcom/android/settings/applications/g;->a(Lcom/android/settings/applications/g$a;)V

    .line 88
    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/g;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/g$a;)V

    .line 89
    iput-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 0

    .line 95
    iget-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 96
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object p3, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/g;->a(ILjava/lang/String;)Lcom/android/settings/applications/g$a;

    move-result-object p2

    .line 97
    invoke-static {p2}, Lcom/android/settings/applications/g;->a(Lcom/android/settings/applications/g$a;)V

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/g;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/g$a;)V

    .line 99
    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method
