.class public Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;
.super Landroid/view/View;
.source "OriginFaceAnimatedSvgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;,
        Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;,
        Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$c;
    }
.end annotation


# static fields
.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field a:J

.field private c:I

.field private d:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;

.field private e:Landroid/os/Handler;

.field private f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:F

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    iput v1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    .line 61
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    .line 62
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    .line 92
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    .line 61
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    .line 62
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    const/16 p2, 0xea

    .line 1102
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    const/16 p2, 0x114

    .line 1103
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    .line 98
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    .line 61
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    .line 62
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    .line 108
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 59
    iput p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    .line 61
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    .line 62
    iput p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    .line 113
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$c;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$c;-><init>(Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->e:Landroid/os/Handler;

    .line 118
    invoke-static {p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->h:I

    const-string p1, "M25.7 111.8L114 202L273 41.6"

    .line 120
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->setGlyphStrings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;Landroid/os/Message;)V
    .locals 2

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceAnimatedSvgView"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2238
    :cond_0
    iget-object p0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->d:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;

    if-eqz p0, :cond_1

    .line 2239
    invoke-interface {p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;->a()V

    :cond_1
    :goto_0
    return-void

    .line 2080
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a()V

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 259
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, -0xea1b49

    return p0

    :cond_0
    const v0, 0x7f060004

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->postInvalidateOnAnimation()V

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 234
    :cond_0
    iput p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(I)V

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->e:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 171
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    const/4 v1, 0x0

    const-string v2, "FaceAnimatedSvgView"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    const/high16 v4, 0x44c80000    # 1600.0f

    div-float/2addr v0, v4

    .line 177
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onDraw phase = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    .line 181
    sget-object v4, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget-object v5, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget v5, v5, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->c:F

    mul-float/2addr v4, v5

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget v4, v4, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->c:F

    :goto_0
    const/4 v5, 0x2

    .line 186
    new-array v5, v5, [F

    aput v4, v5, v1

    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget v1, v1, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->c:F

    aput v1, v5, v3

    .line 1196
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 187
    iget-object v4, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object v4, v4, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 188
    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->a:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object v4, v4, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    cmpl-float p1, v0, v2

    if-ltz p1, :cond_2

    .line 191
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Z)V

    :cond_2
    return-void

    .line 172
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDraw mState "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mGlyphData null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    if-nez v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const-string p1, "FaceAnimatedSvgView"

    const-string p2, "rebuildGlyphData : mGlyphStrings"

    .line 1136
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 1139
    iget p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1141
    new-instance p3, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;-><init>(B)V

    iput-object p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    .line 1142
    iget-object p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    iput-object p4, p3, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->a:Landroid/graphics/Path;

    .line 1144
    :try_start_0
    iget-object p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->g:Ljava/lang/String;

    invoke-static {p3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    .line 1145
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "mOffsetX "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mOffsetY = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object p4, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object p4, p4, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->a:Landroid/graphics/Path;

    iget v0, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->k:I

    int-to-float v1, v1

    invoke-virtual {p4, p3, v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 1147
    iget-object p3, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object p3, p3, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Couldn\'t parse path"

    .line 1149
    invoke-static {p1, p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1151
    :goto_0
    new-instance p1, Landroid/graphics/PathMeasure;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget-object p2, p2, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->a:Landroid/graphics/Path;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1152
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1153
    iget-object p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iget p4, p2, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->c:F

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iput p4, p2, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->c:F

    goto :goto_1

    .line 1156
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 1157
    iget p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1158
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1159
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1160
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1161
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const p2, 0x40f9999a    # 7.8f

    .line 1164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 1163
    invoke-static {p3, p2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1165
    iget-object p2, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->f:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;

    iput-object p1, p2, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$a;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public setGlyphStrings(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->g:Ljava/lang/String;

    return-void
.end method

.method public setOnAnimationEndListener(Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->d:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 131
    iput p1, p0, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->i:F

    :cond_0
    return-void
.end method
