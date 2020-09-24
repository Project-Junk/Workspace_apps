.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/b;
.super Ljava/lang/Object;
.source "CameraSoundEffect.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->b:I

    .line 25
    iput p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->c:I

    .line 26
    iput-object p4, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    instance-of v0, p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    check-cast p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
