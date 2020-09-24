.class public Lcom/coloros/systemui/aod/common/DreamHelper;
.super Ljava/lang/Object;
.source "DreamHelper.java"


# static fields
.field private static sDreamHelper:Lcom/coloros/systemui/aod/common/DreamHelper;


# instance fields
.field private mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;
    .locals 1

    .line 25
    sget-object v0, Lcom/coloros/systemui/aod/common/DreamHelper;->sDreamHelper:Lcom/coloros/systemui/aod/common/DreamHelper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/coloros/systemui/aod/common/DreamHelper;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/common/DreamHelper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/aod/common/DreamHelper;->sDreamHelper:Lcom/coloros/systemui/aod/common/DreamHelper;

    .line 28
    :cond_0
    sget-object v0, Lcom/coloros/systemui/aod/common/DreamHelper;->sDreamHelper:Lcom/coloros/systemui/aod/common/DreamHelper;

    return-object v0
.end method


# virtual methods
.method public addCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->addCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    :cond_0
    return-void
.end method

.method public initDreamHelper(Lcom/coloros/systemui/aod/common/IDreamPolicy;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->onDreamingStarted()V

    :cond_0
    return-void
.end method

.method public onStartDozing()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->onStartDozing()V

    :cond_0
    return-void
.end method

.method public removeCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->removeCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    :cond_0
    return-void
.end method

.method public setAodDozeScreenState(I)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->setAodDozeScreenState(I)V

    :cond_0
    return-void
.end method

.method public updateNextPosition(I)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/DreamHelper;->mDreamPolicy:Lcom/coloros/systemui/aod/common/IDreamPolicy;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/common/IDreamPolicy;->updateNextPosition(I)V

    :cond_0
    return-void
.end method
