.class final Lcom/google/b/b/h$b$1;
.super Lcom/google/b/b/h$c;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/b/b/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/b/h<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/b/h$b;


# direct methods
.method constructor <init>(Lcom/google/b/b/h$b;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/google/b/b/h$b$1;->a:Lcom/google/b/b/h$b;

    iget-object p1, p1, Lcom/google/b/b/h$b;->a:Lcom/google/b/b/h;

    invoke-direct {p0, p1}, Lcom/google/b/b/h$c;-><init>(Lcom/google/b/b/h;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/google/b/b/h$b$1;->a()Lcom/google/b/b/h$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/b/b/h$d;->f:Ljava/lang/Object;

    return-object v0
.end method
