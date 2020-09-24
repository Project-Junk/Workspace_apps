.class public Lb/a/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lb/a/a/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lb/a/a/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/j;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lb/a/a/j;-><init>(IZ)V

    iput-object v0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    check-cast p0, Lb/a/a/j;

    invoke-virtual {p0}, Lb/a/a/j;->b()I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    check-cast v0, Lb/a/a/j;

    invoke-virtual {v0, p1}, Lb/a/a/j;->a(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    sget-object v1, Lb/a/a/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    check-cast v0, Lb/a/a/j;

    invoke-virtual {v0}, Lb/a/a/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lb/a/a/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    check-cast v0, Lb/a/a/j;

    :cond_0
    :goto_1
    iget-wide v3, v0, Lb/a/a/j;->a:J

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    sget-object v7, Lb/a/a/j;->c:Lb/a/a/m;

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    const/4 v5, 0x0

    shr-long/2addr v1, v5

    long-to-int v8, v1

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v5, 0x1e

    shr-long/2addr v1, v5

    long-to-int v1, v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    if-ne v1, v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_3
    instance-of v1, v9, Lb/a/a/j$b;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v8, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v10, v1, v2

    sget-object v1, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {v2, v3, v4, v10}, Lb/a/a/j$a;->a(JI)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_2
    invoke-static {v1, v8, v10}, Lb/a/a/j;->a(Lb/a/a/j;II)Lb/a/a/j;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    move-object v7, v9

    :goto_4
    sget-object v1, Lb/a/a/j;->c:Lb/a/a/m;

    if-eq v7, v1, :cond_8

    return-object v7

    :cond_8
    sget-object v1, Lb/a/a/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
