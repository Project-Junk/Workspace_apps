.class synthetic Lcom/coloros/anim/model/layer/TextLayer$3;
.super Ljava/lang/Object;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 291
    invoke-static {}, Lcom/coloros/anim/model/DocumentData$Justification;->values()[Lcom/coloros/anim/model/DocumentData$Justification;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coloros/anim/model/layer/TextLayer$3;->$SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I

    :try_start_0
    sget-object v0, Lcom/coloros/anim/model/layer/TextLayer$3;->$SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I

    sget-object v1, Lcom/coloros/anim/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/coloros/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Lcom/coloros/anim/model/DocumentData$Justification;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/coloros/anim/model/layer/TextLayer$3;->$SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I

    sget-object v1, Lcom/coloros/anim/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/coloros/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Lcom/coloros/anim/model/DocumentData$Justification;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/coloros/anim/model/layer/TextLayer$3;->$SwitchMap$com$coloros$anim$model$DocumentData$Justification:[I

    sget-object v1, Lcom/coloros/anim/model/DocumentData$Justification;->CENTER:Lcom/coloros/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Lcom/coloros/anim/model/DocumentData$Justification;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method