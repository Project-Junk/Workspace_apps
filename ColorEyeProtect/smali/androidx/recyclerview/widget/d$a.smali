.class Landroidx/recyclerview/widget/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Landroidx/recyclerview/widget/d$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/d$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/d$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d$a;->a()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/d$a;->b()V

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->a(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    :goto_0
    return-void
.end method

.method a(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/d$a;->b()V

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/d$a;->a(IZ)V

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long/2addr v5, v3

    iget-wide v3, p0, Landroidx/recyclerview/widget/d$a;->a:J

    and-long/2addr v3, v5

    iget-wide v7, p0, Landroidx/recyclerview/widget/d$a;->a:J

    not-long v5, v5

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    iput-wide v2, p0, Landroidx/recyclerview/widget/d$a;->a:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->b(I)V

    :goto_1
    if-nez v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/d$a;->b()V

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/d$a;->a(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method b(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->b(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    :cond_1
    :goto_0
    return-void
.end method

.method c(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/d$a;->b()V

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->c(I)Z

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/d$a;->b()V

    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d$a;->d(I)Z

    move-result p0

    return p0

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Landroidx/recyclerview/widget/d$a;->a:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    iget-wide v6, p0, Landroidx/recyclerview/widget/d$a;->a:J

    not-long v8, v2

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/recyclerview/widget/d$a;->a:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    and-long/2addr v0, v2

    iget-wide v6, p0, Landroidx/recyclerview/widget/d$a;->a:J

    not-long v2, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/d$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d$a;->a(I)V

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/d$a;->d(I)Z

    :cond_3
    return p1
.end method

.method e(I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide p0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0

    :cond_0
    :goto_1
    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    shl-long p0, v2, p1

    sub-long/2addr p0, v2

    and-long/2addr p0, v0

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d$a;->e(I)I

    move-result p1

    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/recyclerview/widget/d$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/d$a;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/recyclerview/widget/d$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method