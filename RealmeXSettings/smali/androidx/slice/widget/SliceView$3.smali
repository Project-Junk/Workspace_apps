.class final Landroidx/slice/widget/SliceView$3;
.super Ljava/lang/Object;
.source "SliceView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/slice/core/SliceAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroidx/slice/core/SliceAction;Landroidx/slice/core/SliceAction;)I
    .locals 3

    .line 939
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result p1

    .line 940
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result p2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-gez p2, :cond_2

    return v2

    :cond_2
    if-ge p2, p1, :cond_3

    return v1

    :cond_3
    if-le p2, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 935
    check-cast p1, Landroidx/slice/core/SliceAction;

    check-cast p2, Landroidx/slice/core/SliceAction;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceView$3;->compare(Landroidx/slice/core/SliceAction;Landroidx/slice/core/SliceAction;)I

    move-result p1

    return p1
.end method
