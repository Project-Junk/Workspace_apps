.class public Lcolor/support/design/widget/blur/ColorBlurConfig;
.super Ljava/lang/Object;
.source "ColorBlurConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/design/widget/blur/ColorBlurConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR_SATURATION:I = 0x1

.field public static final DEFAULT_CONFIG:Lcolor/support/design/widget/blur/ColorBlurConfig;

.field public static final DEFAULT_DOWN_SCALE_FACTOR:I = 0xa

.field public static final DEFAULT_OVERLAY_COLOR:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0xa


# instance fields
.field private final mColorSatuation:I

.field private final mDownScaleFactor:I

.field private final mOverlayColor:I

.field private final mRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcolor/support/design/widget/blur/ColorBlurConfig;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v2, v3}, Lcolor/support/design/widget/blur/ColorBlurConfig;-><init>(IIII)V

    sput-object v0, Lcolor/support/design/widget/blur/ColorBlurConfig;->DEFAULT_CONFIG:Lcolor/support/design/widget/blur/ColorBlurConfig;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mRadius:I

    .line 28
    iput p2, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mDownScaleFactor:I

    .line 29
    iput p3, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mOverlayColor:I

    .line 30
    iput p4, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mColorSatuation:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcolor/support/design/widget/blur/ColorBlurConfig$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/design/widget/blur/ColorBlurConfig;-><init>(IIII)V

    return-void
.end method

.method public static checkDownScaleFactor(I)V
    .locals 1

    if-gtz p0, :cond_0

    const-string p0, "ColorBlurConfig"

    const-string v0, "mDownScaleFactor must be greater than 0."

    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkRadius(I)V
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x19

    if-le p0, v0, :cond_1

    :cond_0
    const-string p0, "ColorBlurConfig"

    const-string v0, "checkRadius: Radius must be greater than 0 and less than or equal to 25"

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public colorSatuation()I
    .locals 0

    .line 47
    iget p0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mColorSatuation:I

    return p0
.end method

.method public downScaleFactor()I
    .locals 0

    .line 39
    iget p0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mDownScaleFactor:I

    return p0
.end method

.method public overlayColor()I
    .locals 0

    .line 43
    iget p0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mOverlayColor:I

    return p0
.end method

.method public radius()I
    .locals 0

    .line 35
    iget p0, p0, Lcolor/support/design/widget/blur/ColorBlurConfig;->mRadius:I

    return p0
.end method
