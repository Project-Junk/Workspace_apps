.class final Lcom/google/c/a/b/a$a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lcom/google/c/a/b/a$a;->a:I

    .line 583
    iput p2, p0, Lcom/google/c/a/b/a$a;->b:I

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/q;
    .locals 3

    .line 578
    new-instance v0, Lcom/google/c/q;

    .line 1587
    iget v1, p0, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v1, v1

    .line 1591
    iget v2, p0, Lcom/google/c/a/b/a$a;->b:I

    int-to-float v2, v2

    .line 578
    invoke-direct {v0, v1, v2}, Lcom/google/c/q;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/c/a/b/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/c/a/b/a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
