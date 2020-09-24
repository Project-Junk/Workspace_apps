.class public final Lcom/coloros/settings/scenemode/b;
.super Ljava/lang/Object;
.source "SceneItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/coloros/settings/scenemode/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field transient b:Landroid/os/Bundle;

.field c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/coloros/settings/scenemode/b;->d:I

    .line 40
    iput v0, p0, Lcom/coloros/settings/scenemode/b;->h:I

    .line 41
    iput v0, p0, Lcom/coloros/settings/scenemode/b;->i:I

    .line 42
    iput v0, p0, Lcom/coloros/settings/scenemode/b;->j:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v1, "scene_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/scenemode/b;->d:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v1, "get mSceneType failed"

    .line 72
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->d:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "SceneItemInfo"

    .line 79
    iget-object v1, p0, Lcom/coloros/settings/scenemode/b;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v2, "scene_name_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    .line 87
    iget-object v5, p0, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/scenemode/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/scenemode/b;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 98
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 100
    :try_start_1
    iget-object v2, p0, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "get ApplicationInfo failed"

    .line 102
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/scenemode/b;->e:Ljava/lang/String;

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/scenemode/b;->e:Ljava/lang/String;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v1, "open_component_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/scenemode/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v1, "get mComponentName failed"

    .line 117
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v1, "open_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/scenemode/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v1, "get mOpenAction failed"

    .line 130
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 28
    check-cast p1, Lcom/coloros/settings/scenemode/b;

    .line 1189
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/b;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    .line 3047
    iget-object p1, p1, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    .line 1190
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/b;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->f()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()I
    .locals 2

    .line 137
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v1, "open_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/scenemode/b;->h:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v1, "get mOpenType failed"

    .line 143
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->h:I

    return v0
.end method

.method public final e()I
    .locals 2

    .line 150
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v1, "from_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/scenemode/b;->j:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v1, "get mFromKey failed"

    .line 156
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->j:I

    return v0
.end method

.method public final f()I
    .locals 3

    .line 163
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    const-string v2, "scene_priority"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/scenemode/b;->i:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SceneItemInfo"

    const-string v2, "get mPriority failed"

    .line 169
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->i:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2710

    .line 174
    iput v0, p0, Lcom/coloros/settings/scenemode/b;->i:I

    .line 176
    :cond_1
    iget v0, p0, Lcom/coloros/settings/scenemode/b;->i:I

    return v0
.end method
