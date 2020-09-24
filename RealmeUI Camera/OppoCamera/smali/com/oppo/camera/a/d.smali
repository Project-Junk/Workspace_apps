.class public Lcom/oppo/camera/a/d;
.super Ljava/lang/Object;
.source "FrameInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/a/d$b;,
        Lcom/oppo/camera/a/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/oppo/camera/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/oppo/camera/a/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(J)Lcom/oppo/camera/a/d$a;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/a/d$a;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/oppo/camera/a/d$a;

    invoke-direct {p1}, Lcom/oppo/camera/a/d$a;-><init>()V

    :cond_0
    return-object p1
.end method

.method public a(JI)V
    .locals 1

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 33
    iput p3, v0, Lcom/oppo/camera/a/d$a;->b:I

    .line 34
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 27
    iput-wide p3, v0, Lcom/oppo/camera/a/d$a;->a:J

    .line 28
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JLandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 51
    iput-object p3, v0, Lcom/oppo/camera/a/d$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    .line 52
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(JLcom/oppo/camera/a/d$b;)V
    .locals 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 57
    iget-object v1, v0, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 58
    iget-object v2, v0, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    invoke-virtual {v2, v1, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 59
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oppo/camera/a/d;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/oppo/camera/a/d;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public b(JI)V
    .locals 1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 39
    iput p3, v0, Lcom/oppo/camera/a/d$a;->c:I

    .line 40
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(JI)V
    .locals 1

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 45
    iput p3, v0, Lcom/oppo/camera/a/d$a;->d:I

    .line 46
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(JI)V
    .locals 1

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v0

    .line 64
    iput p3, v0, Lcom/oppo/camera/a/d$a;->e:I

    .line 65
    iget-object p3, p0, Lcom/oppo/camera/a/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
