.class final Lcom/coloros/anim/g$6;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/coloros/anim/e<",
        "Lcom/coloros/anim/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/JsonReader;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/coloros/anim/g$6;->a:Landroid/util/JsonReader;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/anim/g$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/coloros/anim/g$6;->a:Landroid/util/JsonReader;

    iget-object v1, p0, Lcom/coloros/anim/g$6;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object v0

    return-object v0
.end method
