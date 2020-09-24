.class final Lcom/google/a/d/a/a$d;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/a/d/a/a$d;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field d:Lcom/google/a/d/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 253
    new-instance v0, Lcom/google/a/d/a/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/a/d/a/a$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/a/d/a/a$d;->a:Lcom/google/a/d/a/a$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/google/a/d/a/a$d;->b:Ljava/lang/Runnable;

    .line 262
    iput-object p2, p0, Lcom/google/a/d/a/a$d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
