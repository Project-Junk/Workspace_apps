.class public Lcom/coloros/anim/model/content/MergePaths;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/coloros/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final mode:Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/coloros/anim/model/content/MergePaths;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/model/content/MergePaths;->mode:Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;

    .line 21
    iput-boolean p3, p0, Lcom/coloros/anim/model/content/MergePaths;->hidden:Z

    return-void
.end method


# virtual methods
.method public getMode()Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/anim/model/content/MergePaths;->mode:Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/anim/model/content/MergePaths;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/MergePaths;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;)Lcom/coloros/anim/animation/content/Content;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Animation contains merge paths but they are disabled."

    .line 40
    invoke-static {p0}, Lcom/coloros/anim/L;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    sget-boolean p1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p1, :cond_1

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MergePaths to MergePathsContent, layer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance p1, Lcom/coloros/anim/animation/content/MergePathsContent;

    invoke-direct {p1, p0}, Lcom/coloros/anim/animation/content/MergePathsContent;-><init>(Lcom/coloros/anim/model/content/MergePaths;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/model/content/MergePaths;->mode:Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
