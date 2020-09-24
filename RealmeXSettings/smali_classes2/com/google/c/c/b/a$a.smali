.class public final Lcom/google/c/c/b/a$a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/c/q;

.field public final b:Lcom/google/c/q;

.field public final c:I


# direct methods
.method private constructor <init>(Lcom/google/c/q;Lcom/google/c/q;I)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/c/c/b/a$a;->a:Lcom/google/c/q;

    .line 407
    iput-object p2, p0, Lcom/google/c/c/b/a$a;->b:Lcom/google/c/q;

    .line 408
    iput p3, p0, Lcom/google/c/c/b/a$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/q;Lcom/google/c/q;IB)V
    .locals 0

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/c/b/a$a;-><init>(Lcom/google/c/q;Lcom/google/c/q;I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/c/c/b/a$a;->a:Lcom/google/c/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/c/c/b/a$a;->b:Lcom/google/c/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/c/c/b/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
