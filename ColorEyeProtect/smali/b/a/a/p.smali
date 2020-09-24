.class public final Lb/a/a/p;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:La/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/d/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d/a/a<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "supplier"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lb/a/a/p;->a:La/d/a/a;

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lb/a/a/p;->a:La/d/a/a;

    invoke-interface {p0}, La/d/a/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
