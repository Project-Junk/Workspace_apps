.class public Lcom/coloros/anim/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/coloros/anim/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/model/content/Mask$MaskMode;Lcom/coloros/anim/model/animatable/AnimatableShapeValue;Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/coloros/anim/model/content/Mask;->maskMode:Lcom/coloros/anim/model/content/Mask$MaskMode;

    .line 13
    iput-object p2, p0, Lcom/coloros/anim/model/content/Mask;->maskPath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    .line 14
    iput-object p3, p0, Lcom/coloros/anim/model/content/Mask;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    .line 15
    iput-boolean p4, p0, Lcom/coloros/anim/model/content/Mask;->inverted:Z

    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/coloros/anim/model/content/Mask$MaskMode;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/anim/model/content/Mask;->maskMode:Lcom/coloros/anim/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public getMaskPath()Lcom/coloros/anim/model/animatable/AnimatableShapeValue;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/coloros/anim/model/content/Mask;->maskPath:Lcom/coloros/anim/model/animatable/AnimatableShapeValue;

    return-object p0
.end method

.method public getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/anim/model/content/Mask;->opacity:Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public isInverted()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/coloros/anim/model/content/Mask;->inverted:Z

    return p0
.end method
