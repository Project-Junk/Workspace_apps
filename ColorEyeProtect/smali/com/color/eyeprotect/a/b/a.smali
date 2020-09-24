.class public Lcom/color/eyeprotect/a/b/a;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput p1, p0, Lcom/color/eyeprotect/a/b/a;->a:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/a/b/a;->size()I

    move-result p1

    iget v0, p0, Lcom/color/eyeprotect/a/b/a;->a:I

    if-le p1, v0, :cond_0

    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
