.class public Lcom/color/compat/location/LocAppsOpNative;
.super Ljava/lang/Object;


# instance fields
.field private mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-direct {v0}, Lcom/color/inner/location/LocAppsOpWrapper;-><init>()V

    iput-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    return-void
.end method


# virtual methods
.method public getAppsOp()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {p0}, Lcom/color/inner/location/LocAppsOpWrapper;->getAppsOp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getLocAppsOpWrapper()Lcom/color/inner/location/LocAppsOpWrapper;
    .locals 0

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    return-object p0
.end method

.method public getOpLevel()I
    .locals 0

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {p0}, Lcom/color/inner/location/LocAppsOpWrapper;->getOpLevel()I

    move-result p0

    return p0
.end method

.method public setAppOp(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method public setAppsOp(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppsOp(Ljava/util/HashMap;)V

    return-void
.end method

.method public setOpLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setOpLevel(I)V

    return-void
.end method