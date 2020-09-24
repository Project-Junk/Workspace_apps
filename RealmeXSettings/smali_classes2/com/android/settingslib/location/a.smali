.class public final Lcom/android/settingslib/location/a;
.super Ljava/lang/Object;
.source "InjectedSetting.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Landroid/os/UserHandle;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/location/a$a;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iget-object v0, p1, Lcom/android/settingslib/location/a$a;->a:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    .line 2134
    iget-object v0, p1, Lcom/android/settingslib/location/a$a;->b:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    .line 3134
    iget-object v0, p1, Lcom/android/settingslib/location/a$a;->c:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    .line 4134
    iget v0, p1, Lcom/android/settingslib/location/a$a;->d:I

    .line 78
    iput v0, p0, Lcom/android/settingslib/location/a;->d:I

    .line 5134
    iget-object v0, p1, Lcom/android/settingslib/location/a$a;->e:Landroid/os/UserHandle;

    .line 79
    iput-object v0, p0, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    .line 6134
    iget-object v0, p1, Lcom/android/settingslib/location/a$a;->f:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/settingslib/location/a;->f:Ljava/lang/String;

    .line 7134
    iget-object p1, p1, Lcom/android/settingslib/location/a$a;->g:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/location/a$a;B)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/a;-><init>(Lcom/android/settingslib/location/a$a;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/location/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 111
    :cond_1
    check-cast p1, Lcom/android/settingslib/location/a;

    .line 113
    iget-object v1, p0, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    .line 114
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    .line 115
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/location/a;->d:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/android/settingslib/location/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    .line 117
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/a;->f:Ljava/lang/String;

    .line 118
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    .line 119
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget v1, p0, Lcom/android/settingslib/location/a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v1, p0, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lcom/android/settingslib/location/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InjectedSetting{mPackageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settingslib/location/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    .line 91
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", settingsActivity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/location/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
