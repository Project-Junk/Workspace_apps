.class final Lcom/google/b/b/c$7;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/b/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/b/b/c;->a(Lcom/google/b/c/a;)Lcom/google/b/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/b/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/b/b/c;Lcom/google/b/h;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/b/b/c$7;->c:Lcom/google/b/b/c;

    iput-object p2, p0, Lcom/google/b/b/c$7;->a:Lcom/google/b/h;

    iput-object p3, p0, Lcom/google/b/b/c$7;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/b/b/c$7;->a:Lcom/google/b/h;

    invoke-interface {v0}, Lcom/google/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
