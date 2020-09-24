.class public Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;
.super Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;
.source "ColorCuSignalIcons.java"


# static fields
.field private static final OPPO_DATA_ACTIVITY_DIRECTION_CU:[I

.field private static final OPPO_DATA_TYPE_CU:[I

.field private static final OPPO_MOBILE_NUMBER_INDICATOR_CU:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_MOBILE_NUMBER_INDICATOR_CU:[I

    const/16 v0, 0xd

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_TYPE_CU:[I

    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_CU:[I

    return-void

    :array_0
    .array-data 4
        0x7f080f18
        0x7f080f19
    .end array-data

    :array_1
    .array-data 4
        0x7f080f1a
        0x7f080f1a
        0x7f080f1a
        0x7f080f14
        0x7f080f1b
        0x7f080f1b
        0x7f080f1c
        0x7f080f15
        0x7f080f16
        0x7f080f16
        0x7f080f15
        0x7f080f16
        0x7f080f17
    .end array-data

    :array_2
    .array-data 4
        0x7f080ee4
        0x7f080ee5
        0x7f080ee7
        0x7f080ee6
        0x7f080ee4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataActivityDirection(Landroid/content/Context;II)I
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-ltz p3, :cond_0

    .line 79
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_SOFT:[I

    array-length p0, p0

    if-ge p3, p0, :cond_0

    .line 80
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_SOFT:[I

    aget p0, p0, p3

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p3, :cond_2

    .line 85
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_CU:[I

    array-length p2, p0

    if-ge p3, p2, :cond_2

    .line 86
    aget p0, p0, p3

    return p0

    :cond_2
    return p1
.end method

.method public getDataTypeIcon(Landroid/content/Context;II)I
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-ltz p3, :cond_0

    .line 63
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_TYPE_SOFT:[I

    array-length p0, p0

    if-ge p3, p0, :cond_0

    .line 64
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_TYPE_SOFT:[I

    aget p0, p0, p3

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p3, :cond_2

    .line 69
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_DATA_TYPE_CU:[I

    array-length p2, p0

    if-ge p3, p2, :cond_2

    .line 70
    aget p0, p0, p3

    return p0

    :cond_2
    return p1
.end method

.method public getMobileNumber(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 93
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorCuSignalIcons;->OPPO_MOBILE_NUMBER_INDICATOR_CU:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 94
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNoServiceIcon(Landroid/content/Context;I)I
    .locals 0

    const p0, 0x7f080f12

    return p0
.end method

.method public getNoSimResId()I
    .locals 0

    const p0, 0x7f080f13

    return p0
.end method

.method public getSignalStrength(Landroid/content/Context;II)I
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getSignalStrength(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
