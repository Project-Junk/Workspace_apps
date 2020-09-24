.class public abstract Lb/a/as;
.super Lb/a/j;

# interfaces
.implements Lb/a/ae;
.implements Lb/a/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lb/a/ap;",
        ">",
        "Lb/a/j;",
        "Lb/a/ae;",
        "Lb/a/am;"
    }
.end annotation


# instance fields
.field public final b:Lb/a/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb/a/j;-><init>()V

    iput-object p1, p0, Lb/a/as;->b:Lb/a/ap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/as;->b:Lb/a/ap;

    if-eqz v0, :cond_0

    check-cast v0, Lb/a/at;

    invoke-virtual {v0, p0}, Lb/a/at;->a(Lb/a/as;)V

    return-void

    :cond_0
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c_()Lb/a/aw;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
