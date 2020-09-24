.class public final Lb/a/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/j$b;,
        Lb/a/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final c:Lb/a/a/m;

.field public static final d:Lb/a/a/j$a;

.field private static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic a:J

.field private final e:I

.field private volatile f:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/a/a/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/j$a;-><init>(La/d/b/e;)V

    sput-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    new-instance v0, Lb/a/a/m;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/j;->c:Lb/a/a/m;

    const-class v0, Lb/a/a/j;

    const-class v1, Ljava/lang/Object;

    const-string v2, "f"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lb/a/a/j;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/j;->i:I

    iput-boolean p2, p0, Lb/a/a/j;->j:Z

    iget p1, p0, Lb/a/a/j;->i:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lb/a/a/j;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/a/j;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/a/j;->a:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v0, p0, Lb/a/a/j;->i:I

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p1, p0, Lb/a/a/j;->e:I

    const/4 v0, 0x0

    const v1, 0x3fffffff    # 1.9999999f

    if-gt p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    iget p1, p0, Lb/a/a/j;->i:I

    iget p0, p0, Lb/a/a/j;->e:I

    and-int/2addr p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final synthetic a(Lb/a/a/j;)I
    .locals 0

    iget p0, p0, Lb/a/a/j;->e:I

    return p0
.end method

.method private final a(II)Lb/a/a/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lb/a/a/j<",
            "TE;>;"
        }
    .end annotation

    :cond_0
    iget-wide v2, p0, Lb/a/a/j;->a:J

    sget-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v6, v0

    if-ne v6, p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_3

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {v1, v2, v3, p2}, Lb/a/a/j$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p0, p0, Lb/a/a/j;->e:I

    and-int/2addr p0, v6

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This queue can have only one consumer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final a(ILjava/lang/Object;)Lb/a/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lb/a/a/j<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lb/a/a/j;->e:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/a/a/j$b;

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/j$b;

    iget v0, v0, Lb/a/a/j$b;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lb/a/a/j;->e:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(J)Lb/a/a/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lb/a/a/j<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lb/a/a/j;->f:Ljava/lang/Object;

    check-cast v0, Lb/a/a/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lb/a/a/j;->b(J)Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final synthetic a(Lb/a/a/j;II)Lb/a/a/j;
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/a/j;->a(II)Lb/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method private final b(J)Lb/a/a/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lb/a/a/j<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lb/a/a/j;

    iget v1, p0, Lb/a/a/j;->i:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lb/a/a/j;->j:Z

    invoke-direct {v0, v1, v2}, Lb/a/a/j;-><init>(IZ)V

    sget-object v1, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    :goto_0
    iget v3, p0, Lb/a/a/j;->e:I

    and-int/2addr v3, v1

    iget v4, p0, Lb/a/a/j;->e:I

    and-int/2addr v4, v2

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v4, v0, Lb/a/a/j;->e:I

    and-int/2addr v4, v1

    iget-object v5, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v6, p0, Lb/a/a/j;->e:I

    and-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lb/a/a/j$b;

    invoke-direct {v5, v1}, Lb/a/a/j$b;-><init>(I)V

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/high16 v1, 0x1000000000000000L

    invoke-virtual {p0, p1, p2, v1, v2}, Lb/a/a/j$a;->a(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Lb/a/a/j;->a:J

    return-object v0
.end method

.method public static final synthetic b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public static final synthetic c(Lb/a/a/j;)Z
    .locals 0

    iget-boolean p0, p0, Lb/a/a/j;->j:Z

    return p0
.end method

.method private final f()J
    .locals 8

    :cond_0
    iget-wide v2, p0, Lb/a/a/j;->a:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    return-wide v2

    :cond_1
    or-long v6, v2, v0

    sget-object v0, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-wide v3, p0, Lb/a/a/j;->a:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_1

    sget-object p0, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {p0, v3, v4}, Lb/a/a/j$a;->a(J)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v3

    const/4 v9, 0x0

    shr-long/2addr v0, v9

    long-to-int v0, v0

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v5, 0x1e

    shr-long/2addr v1, v5

    long-to-int v10, v1

    iget v11, p0, Lb/a/a/j;->e:I

    add-int/lit8 v1, v10, 0x2

    and-int/2addr v1, v11

    and-int v2, v0, v11

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    return v5

    :cond_2
    iget-boolean v1, p0, Lb/a/a/j;->j:Z

    const v2, 0x3fffffff    # 1.9999999f

    if-nez v1, :cond_4

    iget-object v1, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v6, v10, v11

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, p0, Lb/a/a/j;->i:I

    const/16 v3, 0x400

    if-lt v1, v3, :cond_3

    sub-int/2addr v10, v0

    and-int v0, v10, v2

    iget v1, p0, Lb/a/a/j;->i:I

    shr-int/2addr v1, v5

    if-le v0, v1, :cond_0

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v0, v10, 0x1

    and-int/2addr v0, v2

    sget-object v1, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {v2, v3, v4, v0}, Lb/a/a/j$a;->b(JI)J

    move-result-wide v5

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v10, v11

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    check-cast p0, Lb/a/a/j;

    :goto_0
    iget-wide v0, p0, Lb/a/a/j;->a:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object p0

    invoke-direct {p0, v10, p1}, Lb/a/a/j;->a(ILjava/lang/Object;)Lb/a/a/j;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return v9
.end method

.method public final a()Z
    .locals 5

    sget-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    iget-wide v0, p0, Lb/a/a/j;->a:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int v2, v2

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v0, v3

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v0, v0

    if-ne v2, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final b()I
    .locals 4

    sget-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    iget-wide v0, p0, Lb/a/a/j;->a:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final c()Z
    .locals 9

    :cond_0
    iget-wide v2, p0, Lb/a/a/j;->a:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    return v8

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    or-long v4, v2, v0

    sget-object v0, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v8
.end method

.method public final d()Ljava/lang/Object;
    .locals 10

    :cond_0
    :goto_0
    iget-wide v2, p0, Lb/a/a/j;->a:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    sget-object v6, Lb/a/a/j;->c:Lb/a/a/m;

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v7, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {p0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {p0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v1

    and-int/2addr v1, v7

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-static {p0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {p0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_3
    instance-of v0, v8, Lb/a/a/j$b;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v7, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v9, v0, v1

    sget-object v0, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {v1, v2, v3, v9}, Lb/a/a/j$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-static {p0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result p0

    and-int/2addr p0, v7

    invoke-virtual {v0, p0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    check-cast p0, Lb/a/a/j;

    :goto_1
    invoke-static {p0, v7, v9}, Lb/a/a/j;->a(Lb/a/a/j;II)Lb/a/a/j;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move-object v6, v8

    :goto_3
    return-object v6
.end method

.method public final e()Lb/a/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/j<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/a/a/j;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lb/a/a/j;->a(J)Lb/a/a/j;

    move-result-object p0

    return-object p0
.end method
