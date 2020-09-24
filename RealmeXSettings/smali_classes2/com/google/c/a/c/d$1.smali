.class final Lcom/google/c/a/c/d$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/c/a/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/a/c/d;


# direct methods
.method constructor <init>(Lcom/google/c/a/c/d;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/c/a/c/d$1;->a:Lcom/google/c/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/google/c/a/c/f;

    check-cast p2, Lcom/google/c/a/c/f;

    .line 2070
    iget p1, p1, Lcom/google/c/a/c/f;->d:I

    .line 3070
    iget p2, p2, Lcom/google/c/a/c/f;->d:I

    sub-int/2addr p1, p2

    return p1
.end method
