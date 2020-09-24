.class public Lcom/android/settingslib/k/b;
.super Landroid/graphics/drawable/Drawable;
.source "ThemedBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/k/b$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/android/settingslib/k/b$a;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private final D:La/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/a<",
            "La/g;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Paint;

.field private final G:Landroid/graphics/Paint;

.field private final H:Landroid/graphics/Paint;

.field private final I:Landroid/graphics/Paint;

.field private final J:Landroid/content/Context;

.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Path;

.field private final r:Landroid/graphics/Path;

.field private final s:Landroid/graphics/Path;

.field private final t:Landroid/graphics/Path;

.field private final u:Landroid/graphics/Path;

.field private v:I

.field private w:I

.field private x:Z

.field private y:[I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/k/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/k/b$a;-><init>(B)V

    sput-object v0, Lcom/android/settingslib/k/b;->e:Lcom/android/settingslib/k/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    .line 46
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->f:Landroid/graphics/Path;

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->g:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->h:Landroid/graphics/Path;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->i:Landroid/graphics/Path;

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->j:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->k:Landroid/graphics/Path;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->m:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->n:Landroid/graphics/Path;

    .line 59
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->p:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->r:Landroid/graphics/Path;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    .line 69
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->t:Landroid/graphics/Path;

    .line 70
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/k/b;->u:Landroid/graphics/Path;

    const p1, -0xff01

    .line 81
    iput p1, p0, Lcom/android/settingslib/k/b;->z:I

    .line 82
    iput p1, p0, Lcom/android/settingslib/k/b;->A:I

    .line 84
    iput p1, p0, Lcom/android/settingslib/k/b;->B:I

    .line 91
    new-instance p1, Lcom/android/settingslib/k/b$b;

    invoke-direct {p1, p0}, Lcom/android/settingslib/k/b$b;-><init>(Lcom/android/settingslib/k/b;)V

    check-cast p1, La/d/a/a;

    iput-object p1, p0, Lcom/android/settingslib/k/b;->D:La/d/a/a;

    .line 95
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v1, "config_criticalBatteryWarningLevel"

    invoke-static {v0, v1}, Lcom/android/settingslib/m/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/k/b;->b:I

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 111
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 113
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    sget-object v2, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 117
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 110
    iput-object p1, p0, Lcom/android/settingslib/k/b;->E:Landroid/graphics/Paint;

    .line 120
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 126
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 120
    iput-object p1, p0, Lcom/android/settingslib/k/b;->F:Landroid/graphics/Paint;

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 130
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xff

    .line 131
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iput-object p1, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    .line 137
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 138
    iget-object v3, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/e$c;->batterymeter_plus_color:I

    invoke-static {v3, v4}, Lcom/android/settingslib/l;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 141
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 137
    iput-object p1, p0, Lcom/android/settingslib/k/b;->H:Landroid/graphics/Paint;

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 151
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iput-object p1, p0, Lcom/android/settingslib/k/b;->I:Landroid/graphics/Paint;

    .line 156
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 157
    iput p2, p0, Lcom/android/settingslib/k/b;->v:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 158
    iput p1, p0, Lcom/android/settingslib/k/b;->w:I

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 161
    sget p2, Lcom/android/settingslib/e$a;->batterymeter_color_levels:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 162
    sget v1, Lcom/android/settingslib/e$a;->batterymeter_color_values:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    .line 164
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/settingslib/k/b;->y:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/settingslib/k/b;->y:[I

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aput v6, v4, v5

    .line 167
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/settingslib/k/b;->y:[I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    .line 169
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v7

    .line 168
    invoke-static {v6, v7}, Lcom/android/settingslib/l;->i(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/k/b;->y:[I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1386
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1387
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v1, "config_batterymeterPerimeterPath"

    invoke-static {p2, v1}, Lcom/android/settingslib/m/a/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1386
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1388
    iget-object p2, p0, Lcom/android/settingslib/k/b;->f:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1389
    iget-object p1, p0, Lcom/android/settingslib/k/b;->f:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1391
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1392
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v1, "config_batterymeterErrorPerimeterPath"

    invoke-static {p2, v1}, Lcom/android/settingslib/m/a/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1391
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1393
    iget-object p2, p0, Lcom/android/settingslib/k/b;->h:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1394
    iget-object p1, p0, Lcom/android/settingslib/k/b;->h:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1396
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1397
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v1, "config_batterymeterFillMask"

    invoke-static {p2, v1}, Lcom/android/settingslib/m/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1396
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1398
    iget-object p2, p0, Lcom/android/settingslib/k/b;->j:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1400
    iget-object p1, p0, Lcom/android/settingslib/k/b;->j:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1402
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1403
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v0, "config_batterymeterBoltPath"

    invoke-static {p2, v0}, Lcom/android/settingslib/m/a/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1402
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1404
    iget-object p2, p0, Lcom/android/settingslib/k/b;->r:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1406
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1407
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v0, "config_batterymeterPowersavePath"

    invoke-static {p2, v0}, Lcom/android/settingslib/m/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1406
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1408
    iget-object p2, p0, Lcom/android/settingslib/k/b;->t:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1410
    iget-object p1, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1411
    iget-object p2, p0, Lcom/android/settingslib/k/b;->J:Landroid/content/Context;

    const-string v0, "config_batterymeterDualTone"

    invoke-static {p2, v0}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 1410
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/k/b;->C:Z

    return-void
.end method

.method private final b(I)I
    .locals 4

    .line 257
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->c:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1266
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/k/b;->y:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 1267
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 1268
    aget v3, v2, v3

    if-gt p1, v1, :cond_2

    .line 1272
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_1

    .line 1273
    iget p1, p0, Lcom/android/settingslib/k/b;->z:I

    return p1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_3
    return v1

    .line 257
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/settingslib/k/b;->z:I

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/k/b;->D:La/d/a/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/k/c;

    invoke-direct {v1, v0}, Lcom/android/settingslib/k/c;-><init>(La/d/a/a;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/k/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lcom/android/settingslib/k/b;->D:La/d/a/a;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settingslib/k/c;

    invoke-direct {v1, v0}, Lcom/android/settingslib/k/c;-><init>(La/d/a/a;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/k/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/16 v0, 0x43

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->x:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/k/b;->x:Z

    .line 318
    iput p1, p0, Lcom/android/settingslib/k/b;->a:I

    .line 319
    iget p1, p0, Lcom/android/settingslib/k/b;->a:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/k/b;->b(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/k/b;->B:I

    .line 320
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->invalidateSelf()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settingslib/k/b;->c:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->a()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "c"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 183
    iget-object v0, p0, Lcom/android/settingslib/k/b;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/k/b;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 185
    iget v0, p0, Lcom/android/settingslib/k/b;->a:I

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/16 v2, 0x5f

    if-lt v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/k/b;->m:Landroid/graphics/RectF;

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/k/b;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->m:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 196
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->C:Z

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->n:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/k/b;->B:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->c:Z

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 208
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->x:Z

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 213
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->C:Z

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 219
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 220
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 217
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/k/b;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/k/b;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/k/b;->B:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget v0, p0, Lcom/android/settingslib/k/b;->a:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->c:Z

    if-nez v0, :cond_4

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/k/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 234
    iget-object v0, p0, Lcom/android/settingslib/k/b;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->c:Z

    if-eqz v0, :cond_6

    .line 240
    iget-object v0, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 241
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->x:Z

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 246
    :cond_6
    iget-boolean v0, p0, Lcom/android/settingslib/k/b;->d:Z

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/k/b;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/k/b;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/k/b;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 252
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/android/settingslib/k/b;->v:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/android/settingslib/k/b;->w:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 328
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/settingslib/k/b;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "b"

    .line 1363
    invoke-static {p1, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1369
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/k/b;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/settingslib/k/b;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1370
    iget-object v0, p0, Lcom/android/settingslib/k/b;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/settingslib/k/b;->i:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1371
    iget-object v0, p0, Lcom/android/settingslib/k/b;->j:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/settingslib/k/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1372
    iget-object v0, p0, Lcom/android/settingslib/k/b;->k:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->l:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1373
    iget-object v0, p0, Lcom/android/settingslib/k/b;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/settingslib/k/b;->s:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1374
    iget-object v0, p0, Lcom/android/settingslib/k/b;->t:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/k/b;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/settingslib/k/b;->u:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1379
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1381
    iget-object v0, p0, Lcom/android/settingslib/k/b;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1382
    iget-object v0, p0, Lcom/android/settingslib/k/b;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/settingslib/k/b;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 294
    iget-object v0, p0, Lcom/android/settingslib/k/b;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 295
    iget-object v0, p0, Lcom/android/settingslib/k/b;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
