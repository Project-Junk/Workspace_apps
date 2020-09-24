.class public final Lcom/coloros/settings/utils/ab;
.super Ljava/lang/Object;
.source "OppoClickFilter.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/coloros/settings/utils/ab;->a:Z

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/coloros/settings/utils/ab;->b:J

    .line 29
    iput-wide v0, p0, Lcom/coloros/settings/utils/ab;->c:J

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/coloros/settings/utils/ab;->d:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/coloros/settings/utils/ab;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 40
    iget-boolean v0, p0, Lcom/coloros/settings/utils/ab;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/utils/ab;->c:J

    .line 46
    iget-wide v2, p0, Lcom/coloros/settings/utils/ab;->c:J

    iget-wide v4, p0, Lcom/coloros/settings/utils/ab;->b:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 47
    iput-wide v2, p0, Lcom/coloros/settings/utils/ab;->b:J

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/utils/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fliter Click!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoClickFliter"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    iput-wide v2, p0, Lcom/coloros/settings/utils/ab;->b:J

    return v1
.end method
