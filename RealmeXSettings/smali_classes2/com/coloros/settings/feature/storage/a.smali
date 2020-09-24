.class public final Lcom/coloros/settings/feature/storage/a;
.super Ljava/lang/Object;
.source "ColorStorageCategorySizeManager.java"

# interfaces
.implements Lcom/coloros/settings/feature/storage/apps/usage/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/a$b;,
        Lcom/coloros/settings/feature/storage/a$a;
    }
.end annotation


# static fields
.field private static n:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/coloros/settings/feature/storage/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field public b:J

.field c:J

.field public d:J

.field e:Landroid/util/SparseLongArray;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/apps/usage/b;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/coloros/settings/feature/storage/apps/usage/a;

.field i:Lcom/coloros/settings/feature/storage/a$b;

.field public j:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

.field private k:Landroid/content/Context;

.field private l:Landroid/os/Handler;

.field private m:Lcom/coloros/settings/feature/storage/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/coloros/settings/feature/storage/a$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/a$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/a;->n:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    .line 54
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->c:J

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/a;->e:Landroid/util/SparseLongArray;

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/a;->k:Landroid/content/Context;

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/a;->l:Landroid/os/Handler;

    .line 91
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/usage/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->k:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 1112
    iput-object p0, p1, Lcom/coloros/settings/feature/storage/apps/usage/a;->b:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/a;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/a;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/coloros/settings/feature/storage/a;
    .locals 1

    .line 85
    sget-object v0, Lcom/coloros/settings/feature/storage/a;->n:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/a;

    return-object v0
.end method

.method private a(IJ)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->i:Lcom/coloros/settings/feature/storage/a$b;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->e:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->i:Lcom/coloros/settings/feature/storage/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/a$b;->a(IJ)V

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/a;->b()V

    :cond_0
    return-void
.end method

.method private synthetic a(ILjava/util/ArrayList;)V
    .locals 6

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scanProgress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorStorageCategorySizeManager"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 232
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/a;->f:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    .line 234
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/storage/a/a;

    .line 235
    iget-wide v4, p2, Lcom/coloros/settings/feature/storage/a/a;->b:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mOtherSize "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/a;->l:Landroid/os/Handler;

    new-instance p2, Lcom/coloros/settings/feature/storage/-$$Lambda$a$b-RKgwWbuhCfHXK2yNufZNw8aeo;

    invoke-direct {p2, p0, v2, v3}, Lcom/coloros/settings/feature/storage/-$$Lambda$a$b-RKgwWbuhCfHXK2yNufZNw8aeo;-><init>(Lcom/coloros/settings/feature/storage/a;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic a(J)V
    .locals 1

    const/16 v0, 0x12

    .line 239
    invoke-direct {p0, v0, p1, p2}, Lcom/coloros/settings/feature/storage/a;->a(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/a;IJ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/a;->a(IJ)V

    return-void
.end method

.method private b(I)J
    .locals 4

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 184
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    return-wide v0

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 187
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->c:J

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->e:Landroid/util/SparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/a;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/a;->l:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$AEsKTATUdVhXb5BJ6BREiC5O59M(Lcom/coloros/settings/feature/storage/a;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/a;->a(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$b-RKgwWbuhCfHXK2yNufZNw8aeo(Lcom/coloros/settings/feature/storage/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/a;->a(J)V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;
    .locals 4

    .line 117
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->c:J

    long-to-double v0, v0

    .line 118
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/a;->b(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    .line 119
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/c;->a(I)I

    move-result p1

    .line 120
    new-instance v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/a;->k:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1, v2, v3}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;-><init>(ID)V

    return-object v0
.end method

.method public final a(Lcom/coloros/settings/feature/storage/apps/usage/b;II)V
    .locals 4

    .line 212
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    if-ne p2, p3, :cond_0

    const/16 v0, 0x11

    .line 214
    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/storage/a;->a(IJ)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->j:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Lcom/coloros/settings/feature/storage/apps/usage/b;II)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 267
    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    iget-wide v3, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/coloros/settings/feature/storage/a;->d:J

    .line 268
    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    iget-wide v3, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/apps/usage/b;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->j:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Lcom/coloros/settings/feature/storage/-$$Lambda$a$AEsKTATUdVhXb5BJ6BREiC5O59M;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$a$AEsKTATUdVhXb5BJ6BREiC5O59M;-><init>(Lcom/coloros/settings/feature/storage/a;)V

    .line 242
    new-instance v2, Lcom/coloros/settings/feature/storage/b;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/a;->k:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/coloros/settings/feature/storage/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/coloros/settings/feature/storage/a;->m:Lcom/coloros/settings/feature/storage/b;

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->m:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/b;->a(Lcom/coloros/settings/feature/storage/b$b;)V

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->m:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/b;->a()V

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a;->j:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_2
    return-void
.end method

.method final b()V
    .locals 11

    .line 163
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    .line 166
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/a;->b(I)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    return-void

    .line 167
    :cond_1
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/a;->b:J

    const/16 v1, 0x12

    .line 168
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/storage/a;->b(I)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    return-void

    :cond_2
    sub-long/2addr v4, v6

    const/16 v1, 0x11

    .line 171
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/storage/a;->b(I)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-nez v1, :cond_3

    return-void

    :cond_3
    sub-long/2addr v4, v6

    .line 174
    invoke-static {}, Lcom/coloros/settings/feature/storage/c;->a()[I

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget v8, v1, v7

    .line 175
    invoke-direct {p0, v8}, Lcom/coloros/settings/feature/storage/a;->b(I)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-nez v10, :cond_4

    return-void

    :cond_4
    sub-long/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    :cond_5
    invoke-direct {p0, v0, v4, v5}, Lcom/coloros/settings/feature/storage/a;->a(IJ)V

    :cond_6
    :goto_1
    return-void
.end method
