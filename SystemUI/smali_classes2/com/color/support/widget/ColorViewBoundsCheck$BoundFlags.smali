.class Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ColorViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method boundsMatch()Z
    .locals 4

    .line 162
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    .line 168
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_1

    .line 169
    iget v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return v2

    .line 174
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_2

    .line 175
    iget v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    return v2

    .line 180
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_3

    .line 181
    iget v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->compare(II)I

    move-result p0

    shl-int/lit8 p0, p0, 0xc

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method compare(II)I
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0
.end method

.method resetFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method setBounds(IIII)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 134
    iput p2, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 135
    iput p3, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 136
    iput p4, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mChildEnd:I

    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 140
    iget v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method