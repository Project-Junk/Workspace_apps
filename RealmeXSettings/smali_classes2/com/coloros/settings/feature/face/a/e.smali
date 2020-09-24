.class public final Lcom/coloros/settings/feature/face/a/e;
.super Ljava/lang/Object;
.source "MVPMatrixAider.java"


# instance fields
.field public a:[F

.field public b:[F

.field public c:[F

.field public d:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 20
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/e;->a:[F

    .line 21
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/e;->b:[F

    .line 22
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/e;->c:[F

    .line 23
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coloros/settings/feature/face/a/e;->d:[F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/e;->c:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method

.method public final a(FFFF)V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/e;->c:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/e;->c:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-static {v0, v2, v1, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
