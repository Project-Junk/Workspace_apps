.class public Lcom/color/eyeprotect/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:F

.field c:[F

.field d:[F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->m:F

    const/high16 v1, 0x42580000    # 54.0f

    iput v1, p0, Lcom/color/eyeprotect/a/c;->n:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/color/eyeprotect/a/c;->o:F

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/color/eyeprotect/a/c;->p:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/color/eyeprotect/a/c;->q:F

    iput v1, p0, Lcom/color/eyeprotect/a/c;->r:F

    const v1, 0x3e2e147b    # 0.17f

    iput v1, p0, Lcom/color/eyeprotect/a/c;->s:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/color/eyeprotect/a/c;->t:F

    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/color/eyeprotect/a/c;->u:F

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/color/eyeprotect/a/c;->a:I

    const v2, 0x453b8000    # 3000.0f

    iput v2, p0, Lcom/color/eyeprotect/a/c;->b:F

    sget-object v2, Lcom/color/eyeprotect/a/b;->a:[F

    iput-object v2, p0, Lcom/color/eyeprotect/a/c;->c:[F

    sget-object v2, Lcom/color/eyeprotect/a/b;->b:[F

    iput-object v2, p0, Lcom/color/eyeprotect/a/c;->d:[F

    iput v0, p0, Lcom/color/eyeprotect/a/c;->e:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->f:F

    iput v0, p0, Lcom/color/eyeprotect/a/c;->g:F

    iput v0, p0, Lcom/color/eyeprotect/a/c;->h:F

    const v0, 0x412028f6    # 10.01f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->i:F

    const v0, 0x40e051ec    # 7.01f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->j:F

    const v0, 0x4528c000    # 2700.0f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->v:F

    const v0, 0x45dac000    # 7000.0f

    iput v0, p0, Lcom/color/eyeprotect/a/c;->w:F

    iput v1, p0, Lcom/color/eyeprotect/a/c;->k:F

    iput v1, p0, Lcom/color/eyeprotect/a/c;->l:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->m:F

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->n:F

    return p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->o:F

    return p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->p:F

    return p0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->q:F

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->r:F

    return p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->s:F

    return p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->t:F

    return p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->u:F

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->v:F

    return p0
.end method

.method public k()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/c;->w:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/eyeprotect/a/c;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->n:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->o:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->p:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->q:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->r:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->s:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->t:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->u:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/c;->c:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/c;->d:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->j:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->v:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->w:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/c;->k:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/a/c;->l:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
