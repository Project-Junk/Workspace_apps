.class public final Lcom/color/eyeprotect/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/c/a$a;,
        Lcom/color/eyeprotect/c/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/color/eyeprotect/c/a$b;

.field private static final p:La/e;


# instance fields
.field private b:Lcom/color/eyeprotect/a/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/color/eyeprotect/util/g;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/Choreographer;

.field private final n:Lcom/color/eyeprotect/c/a$e;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/eyeprotect/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/c/a$b;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    sget-object v0, Lcom/color/eyeprotect/c/a$c;->a:Lcom/color/eyeprotect/c/a$c;

    check-cast v0, La/d/a/a;

    invoke-static {v0}, La/f;->a(La/d/a/a;)La/e;

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/c/a;->p:La/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/c/a;->e:I

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "Choreographer.getInstance()"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/a;->m:Landroid/view/Choreographer;

    new-instance v0, Lcom/color/eyeprotect/c/a$e;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/c/a$e;-><init>(Lcom/color/eyeprotect/c/a;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/a;->n:Lcom/color/eyeprotect/c/a$e;

    new-instance v0, Lcom/color/eyeprotect/c/a$d;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/c/a$d;-><init>(Lcom/color/eyeprotect/c/a;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/color/eyeprotect/c/a;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(La/d/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;-><init>()V

    return-void
.end method

.method private final a(II)I
    .locals 6

    int-to-double v0, p2

    add-int/lit16 v2, p2, -0x4b0

    int-to-double v2, v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    rsub-int v4, p1, 0x1964

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x40adb00000000000L    # 3800.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0xa8c

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10cc

    if-lt v1, p2, :cond_2

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->d:Lcom/color/eyeprotect/util/g;

    if-eqz p0, :cond_1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/util/g;->a(F)F

    move-result p0

    float-to-int p1, p0

    :cond_1
    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method private final a(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/a;->h:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->b:Lcom/color/eyeprotect/a/a;

    if-nez p0, :cond_0

    const-string v0, "mAiCurveModel"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/a/a;->a(F)V

    :cond_1
    return-void
.end method

.method private final a(IJ)V
    .locals 4

    iput p1, p0, Lcom/color/eyeprotect/c/a;->f:I

    iget p1, p0, Lcom/color/eyeprotect/c/a;->f:I

    iget v0, p0, Lcom/color/eyeprotect/c/a;->e:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x4030aaa64c2f837bL    # 16.6666

    mul-double/2addr v0, v2

    long-to-double p1, p2

    div-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/color/eyeprotect/c/a;->i:I

    iget p1, p0, Lcom/color/eyeprotect/c/a;->i:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput p2, p0, Lcom/color/eyeprotect/c/a;->i:I

    :cond_0
    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p3, "AiCurveManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/color/eyeprotect/c/a;->l:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/color/eyeprotect/c/a;->e:I

    iget p3, p0, Lcom/color/eyeprotect/c/a;->f:I

    if-eq p1, p3, :cond_1

    iput-boolean p2, p0, Lcom/color/eyeprotect/c/a;->l:Z

    iget p1, p0, Lcom/color/eyeprotect/c/a;->e:I

    iput p1, p0, Lcom/color/eyeprotect/c/a;->g:I

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->i()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/color/eyeprotect/c/a;->l:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/color/eyeprotect/c/a;->f:I

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/c/a;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->h()V

    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/c/a;->a(F)V

    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/c/a;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/color/eyeprotect/c/a;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/c/a;->a(IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;Lcom/color/eyeprotect/util/g;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/a;->d:Lcom/color/eyeprotect/util/g;

    return-void
.end method

.method public static final synthetic a(Lcom/color/eyeprotect/c/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/a;->l:Z

    return-void
.end method

.method public static final synthetic b(Lcom/color/eyeprotect/c/a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/a;->g:I

    return p0
.end method

.method private final b(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/color/eyeprotect/c/a;->j:I

    :goto_0
    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x96

    if-gt v1, v2, :cond_2

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez p0, :cond_1

    const-string p1, "mContext"

    invoke-static {p1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/color/eyeprotect/util/c;->a(Landroid/content/Context;)V

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "AiCurveManager"

    const-string v0, "setDefalut CCT"

    invoke-virtual {p0, p1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    int-to-float v1, p1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a(F)Lcom/color/eyeprotect/util/f;

    move-result-object v1

    iget v2, v1, Lcom/color/eyeprotect/util/f;->a:I

    iget v3, v1, Lcom/color/eyeprotect/util/f;->b:I

    iget v1, v1, Lcom/color/eyeprotect/util/f;->c:I

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez p0, :cond_3

    const-string v4, "mContext"

    invoke-static {v4}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v2, v3, v1, p0, v0}, Lcom/color/eyeprotect/util/c;->a(IIILandroid/content/Context;I)V

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AiCurveManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCCT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "    mode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final synthetic b(Lcom/color/eyeprotect/c/a;I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/c/a;->e:I

    return-void
.end method

.method public static final synthetic c(Lcom/color/eyeprotect/c/a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/a;->f:I

    return p0
.end method

.method public static final synthetic c()La/e;
    .locals 1

    sget-object v0, Lcom/color/eyeprotect/c/a;->p:La/e;

    return-object v0
.end method

.method public static final synthetic c(Lcom/color/eyeprotect/c/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/c/a;->b(I)V

    return-void
.end method

.method public static final synthetic d(Lcom/color/eyeprotect/c/a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/a;->e:I

    return p0
.end method

.method private final d()V
    .locals 4

    new-instance v0, Lcom/color/eyeprotect/a/a;

    iget-object v1, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v2, "mContext"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    const-string v2, "AiCurveManager"

    invoke-direct {v0, v1, v2}, Lcom/color/eyeprotect/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/a;->b:Lcom/color/eyeprotect/a/a;

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->b:Lcom/color/eyeprotect/a/a;

    if-nez v0, :cond_1

    const-string v1, "mAiCurveModel"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/color/eyeprotect/c/a$a;

    iget-object v2, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v2, :cond_2

    const-string v3, "mContext"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v1, v2}, Lcom/color/eyeprotect/c/a$a;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/a/a;->a(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/a;->h:Z

    return-void
.end method

.method public static final synthetic e(Lcom/color/eyeprotect/c/a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/a;->i:I

    return p0
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->b:Lcom/color/eyeprotect/a/a;

    if-nez v0, :cond_0

    const-string v1, "mAiCurveModel"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/color/eyeprotect/a/a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/a;->h:Z

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->h()V

    return-void
.end method

.method public static final synthetic f(Lcom/color/eyeprotect/c/a;)Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final f()V
    .locals 3

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AiCurveManager"

    const-string v2, "registerSensor"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "mContext"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->n:Lcom/color/eyeprotect/c/a$e;

    check-cast p0, Landroid/hardware/SensorEventListener;

    const v1, 0x1fa2639

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method private final g()V
    .locals 3

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AiCurveManager"

    const-string v2, "unRegisterSensor"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "mContext"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->n:Lcom/color/eyeprotect/c/a$e;

    check-cast p0, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public static final synthetic g(Lcom/color/eyeprotect/c/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/a;->k:Z

    return p0
.end method

.method public static final synthetic h(Lcom/color/eyeprotect/c/a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/a;->j:I

    return p0
.end method

.method private final h()V
    .locals 13

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "mContext"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v2, "mContext"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/color/eyeprotect/c/b;->a(Landroid/content/Context;)Lcom/color/eyeprotect/c/b;

    move-result-object v0

    const-string v2, "ColorEyeProtectController.getInstance(mContext)"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/b;->a()I

    move-result v0

    iget-object v2, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v2, :cond_2

    const-string v3, "mContext"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {v2}, Lcom/color/eyeprotect/c/b;->a(Landroid/content/Context;)Lcom/color/eyeprotect/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v3, :cond_3

    const-string v4, "mContext"

    invoke-static {v4}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/color/eyeprotect/c/b;->b(D)I

    move-result v2

    move v5, v0

    move v4, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    const-string v2, "mContext"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/Context;)F

    move-result v0

    iget-object v2, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v2, :cond_6

    const-string v3, "mContext"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_6
    invoke-static {v2}, Lcom/color/eyeprotect/c/b;->a(Landroid/content/Context;)Lcom/color/eyeprotect/c/b;

    move-result-object v2

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/color/eyeprotect/c/b;->b(D)I

    move-result v2

    move v4, v1

    move v5, v4

    :goto_0
    move v6, v2

    new-instance v0, Lcom/color/eyeprotect/d/b;

    const-wide/16 v7, 0x7d0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/color/eyeprotect/d/b;-><init>(ZIIJZIILa/d/b/e;)V

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/d/b;)V

    return-void
.end method

.method private final i()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->m:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/color/eyeprotect/c/a;->o:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic i(Lcom/color/eyeprotect/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->i()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/c/a;IZILjava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/color/eyeprotect/c/a;->j:I

    iget-object p1, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/a;->k:Z

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/color/eyeprotect/c/a;->h:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez p2, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/color/eyeprotect/util/e;->m(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->d()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->f()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/color/eyeprotect/c/a;->h:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->g()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/a;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/color/eyeprotect/d/b;)V
    .locals 6

    const-string v0, "cctEntity"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AiCurveManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update cctEntity-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->e()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->c()I

    move-result v0

    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x96

    if-gt v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/color/eyeprotect/d/b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v2, "mContext"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->f()I

    move-result v2

    invoke-static {v0, v2}, Lcom/color/eyeprotect/util/e;->m(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/eyeprotect/c/a;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string v2, "mContext"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->f()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    sget-object v2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v3, "AiCurveManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update autoTemperature-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->c()I

    move-result v2

    if-eq v0, v1, :cond_4

    if-eq v2, v1, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/color/eyeprotect/c/a;->a(II)I

    move-result v2

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_6

    iget-object v2, p0, Lcom/color/eyeprotect/c/a;->d:Lcom/color/eyeprotect/util/g;

    if-eqz v2, :cond_5

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/color/eyeprotect/util/g;->a(F)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    :cond_6
    :goto_1
    if-ne v2, v1, :cond_7

    invoke-static {}, Lcom/color/eyeprotect/c/b;->b()I

    move-result v2

    :cond_7
    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "AiCurveManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapping after CCT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->b()I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/c/a;->j:I

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/a;->k:Z

    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->d()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    iput v2, p0, Lcom/color/eyeprotect/c/a;->e:I

    invoke-direct {p0, v2}, Lcom/color/eyeprotect/c/a;->b(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/color/eyeprotect/d/b;->d()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/color/eyeprotect/c/a;->a(IJ)V

    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/a;->l:Z

    return p0
.end method
