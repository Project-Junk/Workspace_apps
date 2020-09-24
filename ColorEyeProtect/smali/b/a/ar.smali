.class public abstract Lb/a/ar;
.super Lb/a/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lb/a/ap;",
        ">",
        "Lb/a/as<",
        "TJ;>;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Lb/a/as;-><init>(Lb/a/ap;)V

    return-void
.end method
