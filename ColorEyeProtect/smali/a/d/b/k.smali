.class public abstract La/d/b/k;
.super La/d/b/a;

# interfaces
.implements La/f/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/b/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, La/d/b/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La/d/b/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, La/d/b/k;

    invoke-virtual {p0}, La/d/b/k;->getOwner()La/f/d;

    move-result-object v1

    invoke-virtual {p1}, La/d/b/k;->getOwner()La/f/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, La/d/b/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/d/b/k;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, La/d/b/k;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/d/b/k;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, La/d/b/k;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, La/d/b/k;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, La/f/h;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, La/d/b/k;->compute()La/f/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method protected bridge synthetic getReflected()La/f/b;
    .locals 0

    invoke-virtual {p0}, La/d/b/k;->getReflected()La/f/h;

    move-result-object p0

    return-object p0
.end method

.method protected getReflected()La/f/h;
    .locals 0

    invoke-super {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    check-cast p0, La/f/h;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, La/d/b/k;->getOwner()La/f/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/d/b/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/d/b/k;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isConst()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/k;->getReflected()La/f/h;

    move-result-object p0

    invoke-interface {p0}, La/f/h;->isConst()Z

    move-result p0

    return p0
.end method

.method public isLateinit()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/k;->getReflected()La/f/h;

    move-result-object p0

    invoke-interface {p0}, La/f/h;->isLateinit()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, La/d/b/k;->compute()La/f/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/d/b/k;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method