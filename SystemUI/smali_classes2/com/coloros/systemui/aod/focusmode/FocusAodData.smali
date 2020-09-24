.class public Lcom/coloros/systemui/aod/focusmode/FocusAodData;
.super Ljava/lang/Object;
.source "FocusAodData.java"


# static fields
.field private static sAodData:Lcom/coloros/systemui/aod/focusmode/FocusAodData;


# instance fields
.field private mAodTopRegionFive:I

.field private mAodTopRegionFour:I

.field private mAodTopRegionOne:I

.field private mAodTopRegionThree:I

.field private mAodTopRegionTwo:I

.field private mAodTopRegionZero:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 30
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionZero:I

    const/16 v0, 0xf0

    .line 31
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionOne:I

    const/16 v0, 0x17c

    .line 32
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionTwo:I

    const/16 v0, 0x208

    .line 33
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionThree:I

    const/16 v0, 0x294

    .line 34
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFour:I

    const/16 v0, 0x320

    .line 35
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFive:I

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->initFocusAodRegion()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;
    .locals 1

    .line 41
    sget-object v0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->sAodData:Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->sAodData:Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    .line 44
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->sAodData:Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    return-object p0
.end method

.method private initFocusAodRegion()V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x924

    :goto_0
    const-string v1, "ro.lcd.display.screen.underlightsensor.region"

    .line 63
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ","

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 68
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x46

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x64

    :goto_2
    const/4 v2, 0x0

    const-string v3, "persist.vendor.fingerprint.optical.iconsize"

    .line 71
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "persist.vendor.fingerprint.optical.iconlocation"

    .line 72
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    const/16 v0, 0x320

    goto :goto_3

    :cond_3
    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 76
    iget-object v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mContext:Landroid/content/Context;

    const/high16 v3, 0x43980000    # 304.0f

    .line 77
    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_3
    sub-int v2, v0, v1

    .line 80
    div-int/lit8 v2, v2, 0x5

    .line 82
    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionZero:I

    add-int/2addr v1, v2

    .line 83
    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionOne:I

    .line 84
    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionOne:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionTwo:I

    .line 85
    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionTwo:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionThree:I

    .line 86
    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionThree:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFour:I

    .line 87
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFive:I

    return-void
.end method


# virtual methods
.method public getAodTopRegionFive()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFive:I

    return p0
.end method

.method public getAodTopRegionFour()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionFour:I

    return p0
.end method

.method public getAodTopRegionOne()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionOne:I

    return p0
.end method

.method public getAodTopRegionThree()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionThree:I

    return p0
.end method

.method public getAodTopRegionTwo()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionTwo:I

    return p0
.end method

.method public getAodTopRegionZero()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->mAodTopRegionZero:I

    return p0
.end method
