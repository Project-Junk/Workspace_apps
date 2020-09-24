.class Lcom/color/eyeprotect/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:[F

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$b;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 7

    iget v0, p0, Lcom/color/eyeprotect/a/a$b;->b:I

    if-ne v0, p1, :cond_0

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessDirection, reset default, direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$b;->b()V

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/color/eyeprotect/a/a$b;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/eyeprotect/a/a$b;->c:I

    iget v0, p0, Lcom/color/eyeprotect/a/a$b;->c:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const-string v0, "AICurveModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightnessDirection, before direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDampingFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3f866666    # 1.05f

    const v3, 0x3fb33333    # 1.4f

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    aget v6, v6, v4

    mul-float/2addr v6, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v5, v1

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    aput v0, v1, v4

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    aget v6, v6, v1

    mul-float/2addr v6, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v5, v4

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    aput v0, v2, v1

    :cond_2
    :goto_0
    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessDirection, after direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDampingFactor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessDirection, shake not enough, ignore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/a$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput p1, p0, Lcom/color/eyeprotect/a/a$b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a$b;->a(I)V

    return-void
.end method

.method private a()[F
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$b;)[F
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$b;->a()[F

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 3

    const-string v0, "AICurveModel"

    const-string v1, "resetDampingFactor"

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/eyeprotect/a/a$b;->c:I

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$b;->a:[F

    const/4 v0, 0x1

    aput v2, p0, v0

    return-void
.end method
