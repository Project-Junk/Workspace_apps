.class public Lcom/oppo/camera/panorama/e;
.super Lcom/oppo/camera/d/a;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oppo/camera/panorama/d$b;
.implements Lvisidon/Lib/Panorama$PanoramaCam1Listener;


# instance fields
.field W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

.field private X:I

.field private Y:I

.field private Z:I

.field private aA:Z

.field private aB:I

.field private aC:[F

.field private aD:Landroid/util/SizeF;

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:Z

.field private aI:Z

.field private aJ:[B

.field private aK:[B

.field private aL:I

.field private aM:Ljava/lang/String;

.field private aN:Landroid/os/Handler;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Landroid/graphics/Bitmap;

.field private an:Landroid/widget/ImageView;

.field private ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/content/res/Resources;

.field private ar:Ljava/lang/Object;

.field private as:Ljava/lang/Object;

.field private at:Lvisidon/Lib/Panorama;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private aw:Landroid/util/Size;

.field private ax:Landroid/util/Size;

.field private ay:Lcom/oppo/camera/panorama/d;

.field private az:Lcom/oppo/camera/panorama/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x4

    .line 102
    iput p1, p0, Lcom/oppo/camera/panorama/e;->X:I

    const/16 p1, 0x438

    .line 104
    iput p1, p0, Lcom/oppo/camera/panorama/e;->Y:I

    const/16 p1, 0x11a

    .line 105
    iput p1, p0, Lcom/oppo/camera/panorama/e;->Z:I

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aa:I

    .line 107
    iput p1, p0, Lcom/oppo/camera/panorama/e;->ab:I

    .line 108
    iput p1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    .line 109
    iput p1, p0, Lcom/oppo/camera/panorama/e;->ad:I

    const/16 p2, 0x2a

    .line 110
    iput p2, p0, Lcom/oppo/camera/panorama/e;->ae:I

    const/16 p2, 0x42

    .line 111
    iput p2, p0, Lcom/oppo/camera/panorama/e;->af:I

    .line 112
    iput p1, p0, Lcom/oppo/camera/panorama/e;->ag:I

    .line 113
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    .line 114
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    .line 115
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    .line 116
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    .line 117
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->al:Z

    const/4 p2, 0x0

    .line 118
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    .line 119
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    .line 120
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    .line 121
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    .line 122
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    .line 123
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    .line 124
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    .line 126
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    .line 127
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 128
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 129
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    .line 130
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    .line 131
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    .line 132
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    .line 133
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    .line 135
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    .line 136
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    .line 138
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    .line 139
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    const/4 p3, 0x1

    .line 140
    iput p3, p0, Lcom/oppo/camera/panorama/e;->aG:I

    .line 142
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    .line 143
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    .line 144
    iput-object p2, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    .line 145
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aL:I

    const-string p1, "normal"

    .line 147
    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/oppo/camera/panorama/e$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/panorama/e$1;-><init>(Lcom/oppo/camera/panorama/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    .line 1651
    new-instance p1, Lcom/oppo/camera/panorama/e$4;

    invoke-direct {p1, p0}, Lcom/oppo/camera/panorama/e$4;-><init>(Lcom/oppo/camera/panorama/e;)V

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method private A(I)V
    .locals 4

    .line 1681
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->O:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f00f7

    .line 1683
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_mirror_key"

    .line 1682
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1686
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJPEGImageFromPanorama, isCloseMirrorSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PanoramaCapMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0xb4

    .line 1694
    rem-int/lit16 p1, p1, 0x168

    .line 1703
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJPEGImageFromPanorama, currentOrientation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    .line 1706
    invoke-virtual {v1, v2, p1, v0}, Lvisidon/Lib/Panorama;->getJPEGImage(IIZ)V

    :cond_3
    return-void
.end method

.method static synthetic B(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic C(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic D(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic E(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method static synthetic F(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic G(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic H(Lcom/oppo/camera/panorama/e;)Landroid/content/res/Resources;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic I(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic J(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->Y:I

    return p0
.end method

.method static synthetic K(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic L(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic M(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic O(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic P(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic Q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic R(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic S(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic T(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic U(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/FrontPanoramaGuideView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    return-object p0
.end method

.method static synthetic V(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic W(Lcom/oppo/camera/panorama/e;)Lvisidon/Lib/Panorama;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    return-object p0
.end method

.method static synthetic X(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->ad:I

    return p0
.end method

.method static synthetic Y(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic Z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 12

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "PanoramaCapMode"

    const-string p3, "drawPreviewBitmap, bitmap is null"

    .line 1294
    invoke-static {p1, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 1298
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x3

    .line 1301
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1302
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    .line 1303
    invoke-virtual {v4, p1, v5, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1305
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 1306
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, v2

    .line 1307
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    float-to-double v10, p3

    add-double/2addr v10, v8

    mul-double/2addr v10, v6

    double-to-int p3, v10

    .line 1308
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-double/2addr v10, v6

    double-to-int v5, v10

    .line 1309
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v5, "#FFCC00"

    .line 1311
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, p2, v5

    add-float v5, p3, v6

    sub-int/2addr v0, v2

    int-to-float v7, v0

    sub-int/2addr v1, v2

    int-to-float v8, v1

    move-object v9, p1

    .line 1312
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1314
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    return-object v3
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/panorama/d;)Lcom/oppo/camera/panorama/d;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cG()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/panorama/e;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    return p1
.end method

.method static synthetic aa(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic ab(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method static synthetic ac(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->j:I

    return p0
.end method

.method static synthetic ad(Lcom/oppo/camera/panorama/e;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic ae(Lcom/oppo/camera/panorama/e;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic af(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aL:I

    return p1
.end method

.method private b([B)V
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    .line 402
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    if-nez v1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 410
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    .line 411
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lvisidon/Lib/Panorama;->addPreviewFrame([BII)V

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lvisidon/Lib/Panorama;->updateOrientationWithCameraInfo([BII)V

    .line 415
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2, v3, v4}, Lvisidon/Lib/Panorama;->getGuidanceBitmap([BIILandroid/graphics/Bitmap;)I

    .line 417
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->getXdisplacement()F

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v2}, Lvisidon/Lib/Panorama;->getYdisplacement()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/camera/panorama/e;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 422
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "PanoramaCapMode"

    const-string v1, "onPreviewCaptured, mPanorama is null or data is null so return"

    .line 404
    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 418
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/panorama/e;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/panorama/e;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/e;->z(I)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    return p0
.end method

.method private cB()V
    .locals 4

    .line 527
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ag:I

    .line 529
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->Y:I

    .line 530
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    .line 531
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aa:I

    .line 532
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ab:I

    .line 533
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->ae:I

    .line 534
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->af:I

    .line 535
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v1, 0x7f060334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/panorama/e;->X:I

    .line 537
    iget v0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    iget v1, p0, Lcom/oppo/camera/panorama/e;->ae:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    .line 538
    iget v1, p0, Lcom/oppo/camera/panorama/e;->ab:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oppo/camera/panorama/e;->ag:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/camera/panorama/e;->ad:I

    .line 540
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    .line 543
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v3, 0x7f0b002e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 544
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    .line 545
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    .line 546
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->W:Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setOnDirectionChangeListener(Lcom/oppo/camera/panorama/FrontPanoramaGuideView$a;)V

    .line 547
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setForceDarkAllowed(Z)V

    .line 549
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const v2, 0x7f080078

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    .line 553
    :cond_0
    new-instance v0, Lcom/oppo/camera/panorama/f;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oppo/camera/panorama/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    .line 554
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setForceDarkAllowed(Z)V

    .line 555
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0092

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 558
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 564
    :cond_1
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/panorama/e;->z(I)V

    .line 565
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->c()V

    return-void
.end method

.method private cC()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->d()V

    .line 601
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 602
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->b()V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 610
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->Q:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 611
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    :cond_2
    const/4 v0, 0x1

    .line 614
    iput v0, p0, Lcom/oppo/camera/panorama/e;->aG:I

    .line 615
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cH()V

    return-void
.end method

.method private cD()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->Release()V

    const/4 v1, 0x0

    .line 622
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    .line 623
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    const/4 v1, 0x0

    .line 624
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    .line 626
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cE()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "releaseRearPanorama"

    .line 630
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 633
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    .line 635
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    if-eqz v2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v2}, Lcom/oppo/camera/panorama/d;->b()V

    .line 637
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/panorama/d;->a(I)V

    .line 638
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d;->c()V

    const/4 v1, 0x0

    .line 639
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    .line 641
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cF()V
    .locals 2

    .line 1243
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->process()V

    .line 1247
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cG()V
    .locals 8

    .line 1251
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1252
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->ab()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/panorama/e;->a([BIILjava/lang/String;ZZ)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    .line 1257
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    if-nez v0, :cond_1

    .line 1258
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v2, 0xb

    const-string v3, "button_color_inside_none"

    invoke-direct {v0, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 1261
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    .line 1262
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 1265
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    .line 1266
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(I)V

    .line 1267
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(I)V

    .line 1268
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(I)V

    .line 1269
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 1271
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 1272
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 1273
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 1274
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 1273
    invoke-interface {v0, v3, v4, v5, v2}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1275
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 1277
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    .line 1278
    iput v1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    const/16 v0, 0x8

    .line 1280
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->y(I)V

    return-void
.end method

.method private cH()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 1287
    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    .line 1289
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cI()V
    .locals 3

    .line 1662
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1663
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const-string v2, "panorama"

    .line 1664
    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1665
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    const/16 v1, 0x13

    .line 1666
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 1667
    iget v1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 1669
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1670
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 1674
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/panorama/e;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->aL:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/panorama/e;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/panorama/e;)I
    .locals 2

    .line 77
    iget v0, p0, Lcom/oppo/camera/panorama/e;->aB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return v0
.end method

.method static synthetic l(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->aB:I

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->Z:I

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->X:I

    return p0
.end method

.method static synthetic o(Lcom/oppo/camera/panorama/e;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/oppo/camera/panorama/e;->aE:I

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic s(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic v(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method private z(I)V
    .locals 5

    .line 1106
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    .line 1107
    iget v1, p0, Lcom/oppo/camera/panorama/e;->Y:I

    iget v2, p0, Lcom/oppo/camera/panorama/e;->Z:I

    iget v3, p0, Lcom/oppo/camera/panorama/e;->aa:I

    iget v4, p0, Lcom/oppo/camera/panorama/e;->ab:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oppo/camera/panorama/f;->a(IIII)V

    .line 1110
    :cond_0
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1111
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p1, 0x8

    .line 1112
    invoke-virtual {p0, p1}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    .line 1114
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 1115
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    .line 1117
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz p1, :cond_2

    .line 1118
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/f;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()V
    .locals 8

    .line 1228
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$11;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$11;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f0190

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :goto_0
    return-void
.end method

.method public H_()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public I_()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public J_()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public P()Z
    .locals 1

    .line 726
    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterStartPreview"

    .line 759
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    .line 762
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    .line 764
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$6;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 789
    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    return-void
.end method

.method public Z()Z
    .locals 2

    const-string v0, "PanoramaCapMode"

    const-string v1, "onAfterSnapping"

    .line 851
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$8;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "panorama"

    return-object v0
.end method

.method public a(IZ)V
    .locals 7

    .line 1548
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq p1, v5, :cond_4

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1572
    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1573
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    .line 1576
    :cond_1
    invoke-virtual {p0, v4}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1562
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 1564
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v5, v5, v5}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 1565
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1553
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 1555
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-static {p1, v4, v3, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "type_preview_frame"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 482
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/panorama/d$d;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-string p1, "PanoramaCapMode"

    const-string v0, "onResume"

    .line 646
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 650
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 653
    :cond_0
    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 654
    invoke-virtual {p0, p1}, Lcom/oppo/camera/panorama/e;->x(I)V

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    .line 658
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(I)V

    .line 659
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->e(I)V

    .line 660
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->f(I)V

    .line 661
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/ui/c;->b(IZ)V

    .line 662
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(IZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    .line 1070
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    .line 1072
    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1073
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearPanoramaSave, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    if-eqz p1, :cond_0

    .line 373
    new-instance v0, Lcom/oppo/camera/v$a;

    invoke-direct {v0}, Lcom/oppo/camera/v$a;-><init>()V

    .line 374
    iput-object p1, v0, Lcom/oppo/camera/v$a;->d:[B

    const-string v2, "jpeg"

    .line 375
    iput-object v2, v0, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p1

    iput p1, v0, Lcom/oppo/camera/v$a;->r:I

    const/4 p1, 0x0

    .line 377
    iput-object p1, v0, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    .line 378
    iput-boolean v1, v0, Lcom/oppo/camera/v$a;->y:Z

    .line 379
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    .line 380
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v0}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 1

    .line 1033
    iget p1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1034
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public aJ()V
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    .line 1127
    invoke-super {p0}, Lcom/oppo/camera/d/a;->aJ()V

    return-void
.end method

.method protected am()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->c()V

    .line 676
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->postInvalidate()V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    .line 681
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    .line 683
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/panorama/e;->b(Z)V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    .line 691
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    return-void

    :catchall_0
    move-exception v1

    .line 691
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected aq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public as()Z
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllowSwitch, mbStartPreviewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 934
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public at()Z
    .locals 1

    .line 922
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-super {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x8007

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 912
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 913
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 914
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 1

    if-eqz p1, :cond_0

    .line 1590
    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_0

    .line 1591
    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 1592
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1595
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPanoramaDirection:I

    .line 1599
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    if-eqz p1, :cond_1

    .line 1610
    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_1

    .line 1611
    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 1613
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    if-eqz v0, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    goto :goto_0

    .line 1616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    .line 1619
    :goto_0
    iget-object v0, p2, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1622
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    .line 1623
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1627
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 2

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    .line 1088
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 1089
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    .line 1093
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    .line 1095
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/panorama/e$10;

    invoke-direct {v0, p0}, Lcom/oppo/camera/panorama/e$10;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 2

    .line 428
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/media/Image;)V

    if-eqz p1, :cond_3

    .line 430
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    invoke-static {p1, v1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    .line 436
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aJ:[B

    invoke-direct {p0, p1}, Lcom/oppo/camera/panorama/e;->b([B)V

    goto :goto_0

    .line 437
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    if-eqz v0, :cond_2

    .line 438
    invoke-static {p1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I)[B

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/panorama/e$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/panorama/e$5;-><init>(Lcom/oppo/camera/panorama/e;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    invoke-static {p1, v1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    .line 452
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aK:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected b([BZ)V
    .locals 1

    .line 1079
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cI()V

    .line 738
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/f;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public bn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation(), orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iput p1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    return v0
.end method

.method public cj()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cn()V
    .locals 5

    .line 794
    invoke-super {p0}, Lcom/oppo/camera/d/a;->cn()V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 797
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 798
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 799
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 798
    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    return-void
.end method

.method protected cs()V
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1222
    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/f;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 2

    .line 1637
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v1, 0x7f0f0120

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_tap_shutter_key"

    .line 952
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_time_lapse_key"

    .line 954
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_zoom_key"

    .line 955
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_slogan_key"

    .line 956
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_mirror_key"

    .line 957
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_support_rotate_hint_view"

    .line 958
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_sstart_preview_sync"

    .line 962
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "func_reset_auto_focus"

    .line 966
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 967
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->e()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 970
    :cond_3
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public e(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    .line 897
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    .line 899
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v0, :cond_0

    .line 900
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_PANORAMA_MAX_HEIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    .line 902
    invoke-static {p1, v1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 904
    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_REAR_PANORAMA_MAX_HEIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    .line 906
    invoke-static {p1, v1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected h()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "onPause"

    .line 698
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->am()V

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    .line 705
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    .line 707
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    const/16 v0, 0x8

    .line 709
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->y(I)V

    .line 710
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget v0, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    .line 716
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cC()V

    return-void
.end method

.method protected k()V
    .locals 4

    const-string v0, "PanoramaCapMode"

    const-string v1, "onInitCameraMode()"

    .line 507
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 509
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    const/4 v2, 0x0

    .line 510
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    .line 511
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    .line 512
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    .line 514
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cB()V

    .line 515
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/panorama/e;->aE:I

    .line 516
    iget v3, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/oppo/camera/panorama/e;->aE:I

    :cond_0
    iput v2, p0, Lcom/oppo/camera/panorama/e;->aE:I

    .line 517
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/c;->a(Z)V

    .line 518
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 519
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->c(I)V

    .line 521
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f0094

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    const-string v1, "onInitCameraMode X"

    .line 523
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_still_capture"

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "type_preview_frame"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 472
    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public l()V
    .locals 6

    const-string v0, "PanoramaCapMode"

    const-string v1, "onDeInitCameraMode()"

    .line 570
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aj:Z

    .line 573
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    .line 574
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aH:Z

    .line 575
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    .line 577
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 581
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    .line 582
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cE()V

    .line 583
    iput v0, p0, Lcom/oppo/camera/panorama/e;->aL:I

    .line 585
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->k(I)V

    .line 587
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 588
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 589
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 590
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 589
    invoke-interface {v0, v1, v4, v5, v3}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->c(I)V

    return-void
.end method

.method protected m()V
    .locals 3

    const-string v0, "PanoramaCapMode"

    const-string v1, "onBeforePreview"

    .line 747
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 749
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    .line 751
    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 10

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbStartPreviewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ai:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1146
    iput-object v2, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    .line 1148
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1150
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    const/4 v0, 0x0

    .line 1152
    iput v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    .line 1154
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    .line 1155
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1157
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    if-eqz v1, :cond_6

    .line 1158
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_1
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1160
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1161
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1159
    invoke-static {v3, v4, v5}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    .line 1163
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->aq:Landroid/content/res/Resources;

    const v4, 0x7f060331

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1164
    iget-object v5, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v4, v3

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/oppo/camera/panorama/e;->am:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 1165
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 1166
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    .line 1167
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1168
    iget v3, p0, Lcom/oppo/camera/panorama/e;->ae:I

    iget v6, p0, Lcom/oppo/camera/panorama/e;->ag:I

    add-int/2addr v3, v6

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1169
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_2

    .line 1173
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1176
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->an:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1180
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1182
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontPanorama, mPictureSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->ax:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewFrameSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1186
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaCapMode"

    .line 1185
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->k()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    .line 1189
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->e()Landroid/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    .line 1190
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aC:[F

    aget p1, p1, v0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1191
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aD:Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 1193
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    .line 1194
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le p1, v1, :cond_4

    .line 1195
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :cond_4
    move v4, p1

    .line 1198
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter p1

    .line 1199
    :try_start_2
    new-instance v9, Lvisidon/Lib/Panorama;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->aw:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    move-object v1, v9

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lvisidon/Lib/Panorama;-><init>(IIIZZLandroid/content/Context;Lvisidon/Lib/Panorama$PanoramaCam1Listener;)V

    iput-object v9, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    .line 1201
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama;->VDSetMode(Z)V

    .line 1203
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1}, Lvisidon/Lib/Panorama;->initialized()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PanoramaCapMode"

    const-string v2, "initFrontPanorama, panorama initialized failed!"

    .line 1204
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    invoke-virtual {v1, v0}, Lvisidon/Lib/Panorama;->SetInputSaving(Z)V

    .line 1208
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 1178
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 1211
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->ac:I

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    .line 1213
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1214
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0110

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    :cond_7
    return-void

    :catchall_2
    move-exception p1

    .line 1148
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_8
    :goto_1
    return-void
.end method

.method protected n()Z
    .locals 3

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeSnapping(), mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/panorama/e;->aE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/panorama/e$7;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 836
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->j()V

    :cond_0
    const/4 v0, 0x0

    .line 840
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    .line 842
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 843
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 844
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return v1
.end method

.method protected o()Z
    .locals 5

    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->al:Z

    .line 981
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->S()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/panorama/e;->aM:Ljava/lang/String;

    .line 983
    iget v1, p0, Lcom/oppo/camera/panorama/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTakePicture, mFrontJpegCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/panorama/e;->aF:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbSnapShoting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PanoramaCapMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget v1, p0, Lcom/oppo/camera/panorama/e;->aF:I

    if-nez v1, :cond_0

    return v2

    .line 990
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    .line 991
    iput-boolean v2, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    .line 992
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/e;->aI:Z

    .line 993
    new-instance v1, Lcom/oppo/camera/ui/control/c;

    const/16 v3, 0xb

    const-string v4, "button_color_inside_none"

    invoke-direct {v1, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 996
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/c;->b(I)V

    .line 998
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/panorama/e$9;

    invoke-direct {v3, p0, v1}, Lcom/oppo/camera/panorama/e$9;-><init>(Lcom/oppo/camera/panorama/e;Lcom/oppo/camera/ui/control/c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1005
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cF()V

    :cond_1
    return v0

    .line 1009
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTakePicture, mbPanning: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSnapShoting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PanoramaCapMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->aA:Z

    if-eqz v1, :cond_3

    .line 1012
    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/e;->b(Z)V

    .line 1015
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/f;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1019
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->as:Ljava/lang/Object;

    monitor-enter v1

    .line 1020
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->ay:Lcom/oppo/camera/panorama/d;

    invoke-virtual {v3}, Lcom/oppo/camera/panorama/d;->a()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1023
    :cond_5
    monitor-exit v1

    return v2

    .line 1021
    :cond_6
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1023
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_1
    return v0
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapReady, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lvisidon/Lib/Panorama$FailureCode;)V
    .locals 2

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure, failureCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->REGISTRATION_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->TIMEOUT:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->MAX_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->WRONG_MOTION:Lvisidon/Lib/Panorama$FailureCode;

    if-ne p1, v0, :cond_1

    .line 1398
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cF()V

    .line 1401
    :cond_1
    sget-object v0, Lvisidon/Lib/Panorama$FailureCode;->PROCESSING_FAILED:Lvisidon/Lib/Panorama$FailureCode;

    if-ne p1, v0, :cond_2

    .line 1402
    invoke-direct {p0}, Lcom/oppo/camera/panorama/e;->cD()V

    .line 1404
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1405
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onFrameAdded(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onGuide(Lvisidon/Lib/Panorama$Guide;I)V
    .locals 2

    .line 1413
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/panorama/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/panorama/e$2;-><init>(Lcom/oppo/camera/panorama/e;Lvisidon/Lib/Panorama$Guide;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJPEGImageReady([B)V
    .locals 4

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJPEGImageReady, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1480
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    .line 1484
    iget v2, p0, Lcom/oppo/camera/panorama/e;->j:I

    iget-object v3, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 1486
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1487
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    .line 1489
    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 1490
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1493
    :goto_0
    new-instance v3, Lcom/oppo/camera/v$a;

    invoke-direct {v3}, Lcom/oppo/camera/v$a;-><init>()V

    .line 1494
    iput v2, v3, Lcom/oppo/camera/v$a;->o:I

    .line 1495
    iput v1, v3, Lcom/oppo/camera/v$a;->p:I

    .line 1496
    iput-object p1, v3, Lcom/oppo/camera/v$a;->d:[B

    .line 1497
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/e;->ab()I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    .line 1498
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p1

    iput p1, v3, Lcom/oppo/camera/v$a;->r:I

    const/4 p1, 0x0

    .line 1499
    iput-object p1, v3, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    .line 1500
    iput-boolean v0, v3, Lcom/oppo/camera/v$a;->y:Z

    .line 1501
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    iput-object p1, v3, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    .line 1502
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    .line 1506
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oppo/camera/panorama/e;->s:Z

    if-nez p1, :cond_2

    .line 1507
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1508
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onNV21ImageReady([B)V
    .locals 2

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNV21ImageReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessingReady(II)V
    .locals 2

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProcessingReady, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 1454
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter p1

    .line 1455
    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->at:Lvisidon/Lib/Panorama;

    if-eqz p2, :cond_2

    .line 1458
    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p2, :cond_1

    .line 1459
    iget-object p2, p0, Lcom/oppo/camera/panorama/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2}, Lcom/oppo/camera/d/b;->l()I

    move-result v0

    .line 1462
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/panorama/e;->A(I)V

    .line 1464
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    const-string p1, "PanoramaCapMode"

    const-string p2, "panorama shot failed!"

    .line 1466
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 1469
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1470
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->aN:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onSetPreviewParameters(Z)V
    .locals 2

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewParameters, lockExposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoramaCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTakeImage()V
    .locals 3

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTakeImage, mbSnapShoting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/e;->ah:Z

    if-nez v0, :cond_0

    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ar:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1528
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/e;->ak:Z

    .line 1529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/panorama/e$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/panorama/e$3;-><init>(Lcom/oppo/camera/panorama/e;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1538
    iget v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/panorama/e;->aF:I

    return-void

    :catchall_0
    move-exception v1

    .line 1529
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected w(I)I
    .locals 0

    .line 1646
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PANORAMA_TO_REAL_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1647
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PANORAMA_TO_FRONT_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1648
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public x(I)V
    .locals 4

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgressBarVisble, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v2, p0, Lcom/oppo/camera/panorama/e;->ad:I

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    .line 1043
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0113

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 1046
    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1047
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/panorama/e;->av:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    .line 1053
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/f;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->az:Lcom/oppo/camera/panorama/f;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/f;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public y(I)V
    .locals 3

    .line 1321
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    if-eqz v0, :cond_5

    .line 1322
    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 1326
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 1328
    :cond_0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0x12c

    .line 1331
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1332
    new-instance v0, Lcom/oppo/camera/panorama/e$12;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/panorama/e$12;-><init>(Lcom/oppo/camera/panorama/e;I)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1359
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1360
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 1361
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1364
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    .line 1365
    iget-object p1, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1370
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1371
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1374
    :cond_3
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1375
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1376
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ap:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->clearAnimation()V

    .line 1380
    iget-object v0, p0, Lcom/oppo/camera/panorama/e;->ao:Lcom/oppo/camera/panorama/FrontPanoramaGuideView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/FrontPanoramaGuideView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method
