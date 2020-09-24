.class public Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
.super Ljava/lang/Object;
.source "ColorBlurConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/blur/ColorBlurConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColorSatuation:I

.field private mDownScaleFactor:I

.field private mOverlayColor:I

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 70
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mRadius:I

    .line 71
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mDownScaleFactor:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mOverlayColor:I

    return-void
.end method


# virtual methods
.method public build()Lcolor/support/design/widget/blur/ColorBlurConfig;
    .locals 7

    .line 97
    new-instance v6, Lcolor/support/design/widget/blur/ColorBlurConfig;

    iget v1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mRadius:I

    iget v2, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mDownScaleFactor:I

    iget v3, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mOverlayColor:I

    iget v4, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mColorSatuation:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcolor/support/design/widget/blur/ColorBlurConfig;-><init>(IIIILcolor/support/design/widget/blur/ColorBlurConfig$1;)V

    return-object v6
.end method

.method public colorSaturation(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
    .locals 0

    .line 92
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mColorSatuation:I

    return-object p0
.end method

.method public downScaleFactor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
    .locals 0

    .line 81
    invoke-static {p1}, Lcolor/support/design/widget/blur/ColorBlurConfig;->checkDownScaleFactor(I)V

    .line 82
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mDownScaleFactor:I

    return-object p0
.end method

.method public overlayColor(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
    .locals 0

    .line 87
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mOverlayColor:I

    return-object p0
.end method

.method public radius(I)Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
    .locals 0

    .line 76
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;->mRadius:I

    return-object p0
.end method
