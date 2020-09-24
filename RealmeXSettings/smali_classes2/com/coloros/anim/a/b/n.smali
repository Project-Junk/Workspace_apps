.class public final Lcom/coloros/anim/a/b/n;
.super Lcom/coloros/anim/a/b/f;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Lcom/coloros/anim/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    .line 1015
    iget-object p1, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b;

    return-object p1
.end method
