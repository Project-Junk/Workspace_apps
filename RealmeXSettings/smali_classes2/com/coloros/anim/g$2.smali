.class final Lcom/coloros/anim/g$2;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Lcom/coloros/anim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/c<",
        "Lcom/coloros/anim/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/coloros/anim/g$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 422
    check-cast p1, Lcom/coloros/anim/a;

    .line 1425
    iget-object v0, p0, Lcom/coloros/anim/g$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1426
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/anim/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;Lcom/coloros/anim/a;)V

    .line 1428
    :cond_0
    invoke-static {}, Lcom/coloros/anim/g;->a()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/g$2;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
