.class public abstract Lb/a/a/h$a;
.super Lb/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/d<",
        "Lb/a/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lb/a/a/h;

.field public final e:Lb/a/a/h;


# direct methods
.method public constructor <init>(Lb/a/a/h;)V
    .locals 1

    const-string v0, "newNode"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb/a/a/d;-><init>()V

    iput-object p1, p0, Lb/a/a/h$a;->e:Lb/a/a/h;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/h;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "affected"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lb/a/a/h$a;->e:Lb/a/a/h;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/a/a/h$a;->d:Lb/a/a/h;

    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lb/a/a/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lb/a/a/h$a;->e:Lb/a/a/h;

    iget-object p0, p0, Lb/a/a/h$a;->d:Lb/a/a/h;

    if-nez p0, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-static {p1, p0}, Lb/a/a/h;->a(Lb/a/a/h;Lb/a/a/h;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lb/a/a/h;

    invoke-virtual {p0, p1, p2}, Lb/a/a/h$a;->a(Lb/a/a/h;Ljava/lang/Object;)V

    return-void
.end method
