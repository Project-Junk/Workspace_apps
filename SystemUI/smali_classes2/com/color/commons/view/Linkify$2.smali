.class final Lcom/color/commons/view/Linkify$2;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/commons/view/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/color/commons/view/Linkify$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/color/commons/view/Linkify$LinkSpec;Lcom/color/commons/view/Linkify$LinkSpec;)I
    .locals 3

    .line 151
    iget p0, p1, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    iget v0, p2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget p0, p1, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    iget v0, p2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    const/4 v2, 0x1

    if-le p0, v0, :cond_1

    return v2

    .line 159
    :cond_1
    iget p0, p1, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v0, p2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    if-ge p0, v0, :cond_2

    return v2

    .line 163
    :cond_2
    iget p0, p1, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget p1, p2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lcom/color/commons/view/Linkify$LinkSpec;

    check-cast p2, Lcom/color/commons/view/Linkify$LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/color/commons/view/Linkify$2;->compare(Lcom/color/commons/view/Linkify$LinkSpec;Lcom/color/commons/view/Linkify$LinkSpec;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
