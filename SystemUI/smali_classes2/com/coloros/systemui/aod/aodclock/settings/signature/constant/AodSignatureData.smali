.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;
.super Ljava/lang/Object;
.source "AodSignatureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;,
        Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;
    }
.end annotation


# static fields
.field public static final ALIGN_TYPE_HORIZONTAL_CENTER:I = 0x4

.field public static final ALIGN_TYPE_HORIZONTAL_LEFT:I = 0x3

.field public static final ALIGN_TYPE_HORIZONTAL_RIGHT:I = 0x5

.field public static final ALIGN_TYPE_VERTICAL_CENTER:I = 0x1

.field public static final ALIGN_TYPE_VERTICAL_LEFT:I = 0x0

.field public static final ALIGN_TYPE_VERTICAL_RIGHT:I = 0x2

.field public static final DEF_ALIGNTYPE:I = 0x4

.field public static final DEF_FONTSIZE_INDEX:I = 0x4

.field public static final DEF_FONTTYPE_INDEX:I = 0x0

.field public static final DEF_SIGNCOLOR_INDEX:I = 0x9

.field public static final FONT_SIZE_BIG:I = 0xa0

.field public static final FONT_SIZE_DEAUL:I = 0x50

.field public static final FONT_SIZE_EXTRA_BIG:I = 0xc8

.field public static final FONT_SIZE_MIDDLE:I = 0x78

.field public static final FONT_SIZE_SMALL:I = 0x28

.field public static final TAG:Ljava/lang/String; = "AodSignatureSettingProxy"

.field private static sAodSignatureData:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;


# instance fields
.field public final SIGNATURE_TEXT_DEFAULT:Ljava/lang/String;

.field private mAlignType:I

.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFontSizeIndex:I

.field private mFontSzie:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFontTypefaceindex:I

.field private mIsShowBattery:Z

.field private mIsShowClock:Z

.field private mIsShowDate:Z

.field private mIsShowNotification:Z

.field private mIsShowSignature:Z

.field private mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;

.field private mPreviewAlignType:I

.field private mPreviewFontSizeIndex:I

.field private mPreviewFontTypefaceindex:I

.field private mPreviewSignColorIndex:I

.field private mPreviewSignatureText:Ljava/lang/String;

.field private mShowDateWay:I

.field private mSignColorIndex:I

.field private mSignatureColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private mSignatureText:Ljava/lang/String;

.field private mTypefacePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Dare\nto\nLeap"

    .line 49
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->SIGNATURE_TEXT_DEFAULT:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;

    .line 258
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;
    .locals 1

    .line 84
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->sAodSignatureData:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->sAodSignatureData:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    .line 87
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->sAodSignatureData:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    return-object p0
.end method


# virtual methods
.method public enableShowBattery(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowBattery:Z

    return-void
.end method

.method public enableShowClock(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowClock:Z

    return-void
.end method

.method public enableShowDate(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowDate:Z

    return-void
.end method

.method public enableShowNotification(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowNotification:Z

    return-void
.end method

.method public enableShowSignature(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowSignature:Z

    return-void
.end method

.method public getAlignType()I
    .locals 0

    .line 312
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mAlignType:I

    return p0
.end method

.method public getBlackList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    return-object p0
.end method

.method public getFontTypefaceIndex()I
    .locals 0

    .line 341
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    return p0
.end method

.method public getPreviewAlignType()I
    .locals 0

    .line 316
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewAlignType:I

    return p0
.end method

.method public getPreviewFontTypefaceIndex()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontTypefaceindex:I

    return p0
.end method

.method public getPreviewSignatureColorIndex()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignColorIndex:I

    return p0
.end method

.method public getPreviewSignatureText()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 270
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewSignatureTextSizeIndex()I
    .locals 0

    .line 374
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontSizeIndex:I

    return p0
.end method

.method public getSignatureColorByIndex()Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    return-object p0
.end method

.method public getSignatureColorByIndex(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    return-object p0
.end method

.method public getSignatureColorIndex()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    return p0
.end method

.method public getSignatureColorSize()I
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSignatureText()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 263
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    return-object p0
.end method

.method public getSignatureTextSize()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSignatureTextSize(I)I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 362
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 366
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSignatureTextSizeIndex()I
    .locals 0

    .line 370
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    return p0
.end method

.method public initAodData()V
    .locals 11

    const-string v0, "Dare\nto\nLeap"

    .line 91
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    const/16 v1, 0x9

    .line 92
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    .line 94
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const v4, -0x1baeaf

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const/16 v4, -0x31b1

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const v4, -0xb00098

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const v4, -0xb70c01

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const v4, -0xce5802

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const v4, -0x61b001

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const/4 v4, 0x3

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v5}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    invoke-direct {v3, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    invoke-direct {v3, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    invoke-direct {v3, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>([I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    invoke-direct {v3, v4, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureColor:Ljava/util/List;

    new-instance v3, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    invoke-direct {v3, v4, v5}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 110
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mAlignType:I

    const/4 v3, 0x0

    .line 112
    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    .line 114
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    const-string v5, "Gilroy-Bold.otf"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    const-string v5, "Gilroy-Light.otf"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    const-string v5, "Gilroy-Medium.otf"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    const-string v5, "Gilroy-SemiBold.otf"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    .line 120
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    .line 121
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSzie:Ljava/util/List;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v5, "key_realme_aod_signature"

    invoke-static {v4, v5, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowSignature:Z

    .line 129
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v6, "key_aod_clock_date"

    invoke-static {v4, v6, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowDate:Z

    .line 131
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v6, "key_aod_clock_date_select"

    invoke-static {v4, v6, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mShowDateWay:I

    .line 132
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v6, "key_realme_aod_notification_icon"

    invoke-static {v4, v6, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowNotification:Z

    .line 134
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v6, "key_realme_aod_clock_mode"

    invoke-static {v4, v6, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowClock:Z

    .line 136
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v6, "key_realme_aod_battery"

    invoke-static {v4, v6, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowBattery:Z

    .line 138
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    const-string v7, "realme_aod_notification_black_pkg"

    invoke-static {v4, v7, v6}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 141
    iget-boolean v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowClock:Z

    if-eqz v7, :cond_5

    .line 142
    iput-boolean v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowSignature:Z

    .line 144
    :cond_5
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 145
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, ","

    .line 146
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 147
    array-length v7, v4

    if-lez v7, :cond_6

    .line 148
    array-length v7, v4

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_6

    aget-object v9, v4, v8

    .line 149
    iget-object v10, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 154
    :cond_6
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v7, "realme_aod_signature_text"

    invoke-static {v4, v7, v6}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 156
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v8, "realme_aod_signature_first_launch"

    invoke-static {v4, v8, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    goto :goto_6

    :cond_7
    move v4, v3

    :goto_6
    if-eqz v4, :cond_8

    .line 158
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    invoke-static {v0, v7, v4, v6}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v5}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    :cond_8
    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    .line 165
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v4, "realme_aod_signature_color_index"

    invoke-static {v0, v4, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_aligntype_index"

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mAlignType:I

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_fontsize_index"

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_face_type_index"

    invoke-static {v0, v1, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    .line 173
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->initPreviewData()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xc62201
        -0xa76101
        -0x42b001
    .end array-data

    :array_1
    .array-data 4
        -0x6e7a
        -0x9bca
    .end array-data

    :array_2
    .array-data 4
        -0x64d3
        -0xe6001a
    .end array-data

    :array_3
    .array-data 4
        -0x89ae01
        -0xcecf
    .end array-data

    :array_4
    .array-data 4
        -0x80a601
        -0x9e2f01
        -0xb20086
    .end array-data

    :array_5
    .array-data 4
        -0xbf25
        -0x113dd9
    .end array-data

    :array_6
    .array-data 4
        -0xbf00b8
        -0xd100
    .end array-data

    :array_7
    .array-data 4
        -0x42c0
        -0x8b1d01
    .end array-data
.end method

.method public initPreviewData()V
    .locals 1

    .line 177
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontSizeIndex:I

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mAlignType:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewAlignType:I

    .line 180
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignColorIndex:I

    .line 181
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontTypefaceindex:I

    return-void
.end method

.method public isShowBattery()Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowBattery:Z

    return p0
.end method

.method public isShowClock()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowClock:Z

    return p0
.end method

.method public isShowDate()Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowDate:Z

    return p0
.end method

.method public isShowNotification()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowNotification:Z

    return p0
.end method

.method public isShowSignature()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mIsShowSignature:Z

    return p0
.end method

.method public loadTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public loadTypeFace(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 333
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 337
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mTypefacePath:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public notifyDataChange()V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;

    invoke-interface {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;->signatureChnage()V

    return-void
.end method

.method public setAlignType(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mAlignType:I

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mBlackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setFontTypeface(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontTypefaceindex:I

    return-void
.end method

.method public setPreviewAlignType(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewAlignType:I

    return-void
.end method

.method public setPreviewFontTypeface(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontTypefaceindex:I

    return-void
.end method

.method public setPreviewSignatureColorIndex(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignColorIndex:I

    return-void
.end method

.method public setPreviewSignatureText(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    return-void
.end method

.method public setPreviewSignatureTextSizeIndex(I)V
    .locals 0

    .line 382
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontSizeIndex:I

    return-void
.end method

.method public setShowDateWay(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mShowDateWay:I

    return-void
.end method

.method public setSignatureChangeListener(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mListener:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;

    return-void
.end method

.method public setSignatureColorIndex(I)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignColorIndex:I

    return-void
.end method

.method public setSignatureText(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mSignatureText:Ljava/lang/String;

    return-void
.end method

.method public setSignatureTextSizeIndex(I)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mFontSizeIndex:I

    return-void
.end method

.method public settingApply(Landroid/content/Context;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x2

    const-string v2, "realme_aod_signature_text"

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignatureText:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 249
    invoke-static {p1, v2, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewSignColorIndex:I

    const-string v1, "realme_aod_signature_color_index"

    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 252
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewAlignType:I

    const-string v1, "realme_aod_signature_aligntype_index"

    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 253
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontSizeIndex:I

    const-string v1, "realme_aod_signature_fontsize_index"

    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 254
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mPreviewFontTypefaceindex:I

    const-string v0, "realme_aod_signature_face_type_index"

    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showDateWay()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->mShowDateWay:I

    return p0
.end method
