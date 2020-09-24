.class public final Lb/a/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/d/b/e;)V
    .locals 0

    invoke-direct {p0}, Lb/a/a/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    const-wide/high16 v0, 0x2000000000000000L

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final a(JI)J
    .locals 2

    check-cast p0, Lb/a/a/j$a;

    const-wide/32 v0, 0x3fffffff

    invoke-virtual {p0, p1, p2, v0, v1}, Lb/a/a/j$a;->a(JJ)J

    move-result-wide p0

    int-to-long p2, p3

    const/4 v0, 0x0

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final a(JJ)J
    .locals 0

    not-long p3, p3

    and-long p0, p1, p3

    return-wide p0
.end method

.method public final b(JI)J
    .locals 2

    check-cast p0, Lb/a/a/j$a;

    const-wide v0, 0xfffffffc0000000L

    invoke-virtual {p0, p1, p2, v0, v1}, Lb/a/a/j$a;->a(JJ)J

    move-result-wide p0

    int-to-long p2, p3

    const/16 v0, 0x1e

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method
