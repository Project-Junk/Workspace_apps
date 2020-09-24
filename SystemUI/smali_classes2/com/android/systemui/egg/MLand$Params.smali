.class Lcom/android/systemui/egg/MLand$Params;
.super Ljava/lang/Object;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070852

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    const v0, 0x7f07061d

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    .line 104
    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    const v0, 0x7f070122

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    const v0, 0x7f0706d7

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    const v0, 0x7f0706d8

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    const v0, 0x7f07061f

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const v0, 0x7f07061e

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    const v0, 0x7f07061b

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    const v0, 0x7f07061c

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    const v0, 0x7f070149

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    const v0, 0x7f07014b

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MIN:I

    const v0, 0x7f07014a

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    const v0, 0x7f070174

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    const v0, 0x7f070173

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    const v0, 0x7f0707b2

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MIN:I

    const v0, 0x7f0707b1

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MAX:I

    const/high16 v0, 0x7f070000

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->G:I

    const v0, 0x7f070547

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    const v0, 0x7f07077a

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->SCENERY_Z:F

    const v0, 0x7f070620

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const v0, 0x7f0706d9

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    const v0, 0x7f0706da

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    const v0, 0x7f0703d8

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Params;->HUD_Z:F

    .line 130
    iget p1, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    iget v0, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 131
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "error: obstacles might be too short, adjusting"

    invoke-static {v0, p1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget p1, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    :cond_0
    return-void
.end method
