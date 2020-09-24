.class public final Lcom/google/c/g/b/e$a;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/g/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/c/g/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput p1, p0, Lcom/google/c/g/b/e$a;->a:F

    return-void
.end method

.method public synthetic constructor <init>(FB)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lcom/google/c/g/b/e$a;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 568
    check-cast p1, Lcom/google/c/g/b/d;

    check-cast p2, Lcom/google/c/g/b/d;

    .line 2048
    iget v0, p2, Lcom/google/c/g/b/d;->d:I

    .line 3048
    iget v1, p1, Lcom/google/c/g/b/d;->d:I

    if-ne v0, v1, :cond_2

    .line 4044
    iget p2, p2, Lcom/google/c/g/b/d;->c:F

    .line 1576
    iget v0, p0, Lcom/google/c/g/b/e$a;->a:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 5044
    iget p1, p1, Lcom/google/c/g/b/d;->c:F

    .line 1577
    iget v0, p0, Lcom/google/c/g/b/e$a;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 5048
    :cond_2
    iget p2, p2, Lcom/google/c/g/b/d;->d:I

    .line 6048
    iget p1, p1, Lcom/google/c/g/b/d;->d:I

    sub-int/2addr p2, p1

    return p2
.end method
