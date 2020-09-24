.class public Lcom/coloros/anim/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# instance fields
.field public final color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lcom/coloros/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/model/animatable/AnimatableColorValue;Lcom/coloros/anim/model/animatable/AnimatableColorValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/coloros/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/coloros/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->color:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/coloros/anim/model/animatable/AnimatableColorValue;

    .line 21
    iput-object p3, p0, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 22
    iput-object p4, p0, Lcom/coloros/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method
