.class public final Landroidx/palette/graphics/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Landroidx/palette/graphics/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    return-void
.end method

.method public constructor <init>(Landroidx/palette/graphics/Target;)V
    .locals 1
    .param p1    # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0, p1}, Landroidx/palette/graphics/Target;-><init>(Landroidx/palette/graphics/Target;)V

    iput-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/palette/graphics/Target;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 425
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    return-object v0
.end method

.method public final setExclusive(Z)Landroidx/palette/graphics/Target$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 416
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iput-boolean p1, v0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    return-object p0
.end method

.method public final setLightnessWeight(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 387
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method

.method public final setMaximumLightness(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 353
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public final setMaximumSaturation(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public final setMinimumLightness(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 335
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public final setMinimumSaturation(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 308
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public final setPopulationWeight(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 403
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public final setSaturationWeight(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 370
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public final setTargetLightness(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method

.method public final setTargetSaturation(F)Landroidx/palette/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method
