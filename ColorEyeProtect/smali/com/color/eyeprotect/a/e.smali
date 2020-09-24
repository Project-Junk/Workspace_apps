.class public Lcom/color/eyeprotect/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F

.field private c:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/color/eyeprotect/a/e;->a:F

    iput p2, p0, Lcom/color/eyeprotect/a/e;->b:F

    iput p2, p0, Lcom/color/eyeprotect/a/e;->c:F

    return-void
.end method

.method static a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;
    .locals 2

    new-instance v0, Lcom/color/eyeprotect/a/e;

    invoke-direct {v0}, Lcom/color/eyeprotect/a/e;-><init>()V

    iget v1, p0, Lcom/color/eyeprotect/a/e;->a:F

    iput v1, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget v1, p0, Lcom/color/eyeprotect/a/e;->b:F

    iput v1, v0, Lcom/color/eyeprotect/a/e;->b:F

    iget p0, p0, Lcom/color/eyeprotect/a/e;->c:F

    iput p0, v0, Lcom/color/eyeprotect/a/e;->c:F

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/e;->a:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/a/e;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/a/e;->c:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
