.class final Lcom/google/b/b/c$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/b/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/c;
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
.field final synthetic a:Lcom/google/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/b/b/c;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/b/b/c$5;->a:Lcom/google/b/b/c;

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

    .line 209
    new-instance v0, Lcom/google/b/b/h;

    invoke-direct {v0}, Lcom/google/b/b/h;-><init>()V

    return-object v0
.end method
