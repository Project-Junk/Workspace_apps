.class public final Lcom/coloros/settings/feature/storage/b;
.super Ljava/lang/Object;
.source "OtherFileScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/b$b;,
        Lcom/coloros/settings/feature/storage/b$c;,
        Lcom/coloros/settings/feature/storage/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[F


# instance fields
.field a:Lcom/coloros/settings/feature/storage/b$a;

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/settings/feature/storage/b$b;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/coloros/settings/feature/storage/b$c;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/b;->b:Ljava/lang/String;

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/storage/b;->c:[F

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/b;->e:Ljava/util/ArrayList;

    const/16 v0, 0x8

    .line 50
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/b;->g:Ljava/util/concurrent/ExecutorService;

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/storage/b$c;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/b$c;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/b;->l:Lcom/coloros/settings/feature/storage/b$c;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/coloros/settings/feature/storage/b;->m:I

    .line 59
    iput v0, p0, Lcom/coloros/settings/feature/storage/b;->n:I

    .line 107
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    .line 108
    iput-boolean p3, p0, Lcom/coloros/settings/feature/storage/b;->o:Z

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->d:Ljava/lang/String;

    .line 110
    new-instance p2, Lcom/coloros/settings/feature/storage/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p0, p3}, Lcom/coloros/settings/feature/storage/b$a;-><init>(Lcom/coloros/settings/feature/storage/b;Lcom/coloros/settings/feature/storage/b;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->a:Lcom/coloros/settings/feature/storage/b$a;

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->j:Ljava/util/ArrayList;

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->i:Ljava/util/ArrayList;

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b;->h:Ljava/util/ArrayList;

    .line 114
    new-instance p2, Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-direct {p2, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a;-><init>(Landroid/content/Context;)V

    .line 1571
    iget-object p1, p2, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->d()Ljava/util/ArrayList;

    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/b;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Ljava/io/File;JI)V
    .locals 3

    .line 217
    new-instance v0, Lcom/coloros/settings/feature/storage/a/a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/a/a;-><init>()V

    .line 218
    iput-wide p2, v0, Lcom/coloros/settings/feature/storage/a/a;->b:J

    .line 219
    iput p4, v0, Lcom/coloros/settings/feature/storage/a/a;->a:I

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getFolderDataSize otherFile:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " path = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OtherFileScanHelper"

    .line 223
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/b;->i:Ljava/util/ArrayList;

    monitor-enter p1

    .line 226
    :try_start_0
    iget p2, p0, Lcom/coloros/settings/feature/storage/b;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/coloros/settings/feature/storage/b;->n:I

    .line 227
    iget-wide p2, v0, Lcom/coloros/settings/feature/storage/a/a;->b:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-eqz p2, :cond_1

    .line 228
    iget p2, v0, Lcom/coloros/settings/feature/storage/a/a;->a:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 229
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 234
    :goto_1
    sget-object p3, Lcom/coloros/settings/feature/storage/b;->c:[F

    array-length p3, p3

    if-ge p2, p3, :cond_3

    .line 235
    iget p3, p0, Lcom/coloros/settings/feature/storage/b;->n:I

    iget p4, p0, Lcom/coloros/settings/feature/storage/b;->m:I

    int-to-float p4, p4

    sget-object v1, Lcom/coloros/settings/feature/storage/b;->c:[F

    aget v1, v1, p2

    mul-float/2addr p4, v1

    float-to-int p4, p4

    if-ne p3, p4, :cond_2

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const/16 p4, 0x54

    .line 237
    iput p4, p3, Landroid/os/Message;->what:I

    .line 238
    iput-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iput p2, p3, Landroid/os/Message;->arg1:I

    .line 240
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b;->a:Lcom/coloros/settings/feature/storage/b$a;

    invoke-virtual {p2, p3}, Lcom/coloros/settings/feature/storage/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 244
    :cond_3
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/b;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b()[F
    .locals 1

    .line 37
    sget-object v0, Lcom/coloros/settings/feature/storage/b;->c:[F

    return-object v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/b;)Lcom/coloros/settings/feature/storage/b$c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/b;->l:Lcom/coloros/settings/feature/storage/b$c;

    return-object p0
.end method

.method private c()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/b;->d()V

    .line 142
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/b;->e()V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/b;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 150
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/storage/b;)Lcom/coloros/settings/feature/storage/b$b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/b;->f:Lcom/coloros/settings/feature/storage/b$b;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 166
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 168
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/b;->o:Z

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 180
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/coloros/settings/feature/storage/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/b;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/coloros/settings/feature/storage/b$1;

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/storage/b$1;-><init>(Lcom/coloros/settings/feature/storage/b;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "OtherFileScanHelper"

    const-string v1, "StartScan"

    .line 118
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/b;->o:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/coloros/settings/feature/storage/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    array-length v1, v0

    if-gtz v1, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    .line 134
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/b;->c()V

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/storage/b;->m:I

    .line 137
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/b;->f()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/coloros/settings/feature/storage/b$b;)V
    .locals 2

    const-string v0, "OtherFileScanHelper"

    const-string v1, "setRefreshListener"

    .line 267
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/b;->f:Lcom/coloros/settings/feature/storage/b$b;

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 206
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/d;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/settings/feature/storage/b;->a(Ljava/io/File;JI)V

    return-void
.end method

.method public final b(Ljava/io/File;)V
    .locals 4

    .line 212
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->b(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    const/4 v2, 0x2

    .line 213
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/settings/feature/storage/b;->a(Ljava/io/File;JI)V

    return-void
.end method
