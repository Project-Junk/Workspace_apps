.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field private mColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mLength:F

.field private mOffset:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 48
    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    .line 49
    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getOffset()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public static copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 4

    .line 39
    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v1, 0x0

    .line 40
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 41
    new-instance v2, Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(Lcom/android/systemui/assist/ui/EdgeLight;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCenter()F
    .locals 2

    .line 97
    iget v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public getColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 61
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return p0
.end method

.method public getLength()F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return p0
.end method

.method public getOffset()F
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return p0
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 66
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return-void
.end method

.method public setLength(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return-void
.end method
