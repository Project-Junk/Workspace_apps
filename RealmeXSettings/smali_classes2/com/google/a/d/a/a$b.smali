.class final Lcom/google/a/d/a/a$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/a/d/a/a$b;

.field static final b:Lcom/google/a/d/a/a$b;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 293
    invoke-static {}, Lcom/google/a/d/a/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    sput-object v1, Lcom/google/a/d/a/a$b;->b:Lcom/google/a/d/a/a$b;

    .line 295
    sput-object v1, Lcom/google/a/d/a/a$b;->a:Lcom/google/a/d/a/a$b;

    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/google/a/d/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/a/d/a/a$b;->b:Lcom/google/a/d/a/a$b;

    .line 298
    new-instance v0, Lcom/google/a/d/a/a$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/a/d/a/a$b;->a:Lcom/google/a/d/a/a$b;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-boolean p1, p0, Lcom/google/a/d/a/a$b;->c:Z

    .line 307
    iput-object p2, p0, Lcom/google/a/d/a/a$b;->d:Ljava/lang/Throwable;

    return-void
.end method
