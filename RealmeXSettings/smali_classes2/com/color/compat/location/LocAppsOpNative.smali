.class public Lcom/color/compat/location/LocAppsOpNative;
.super Ljava/lang/Object;
.source "LocAppsOpNative.java"


# instance fields
.field private mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-direct {v0}, Lcom/color/inner/location/LocAppsOpWrapper;-><init>()V

    iput-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    return-void
.end method


# virtual methods
.method public getAppsOp()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0}, Lcom/color/inner/location/LocAppsOpWrapper;->getAppsOp()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLocAppsOpWrapper()Lcom/color/inner/location/LocAppsOpWrapper;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    return-object v0
.end method

.method public getOpLevel()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0}, Lcom/color/inner/location/LocAppsOpWrapper;->getOpLevel()I

    move-result v0

    return v0
.end method

.method public setAppOp(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method public setAppsOp(Ljava/util/HashMap;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppsOp(Ljava/util/HashMap;)V

    return-void
.end method

.method public setOpLevel(I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/color/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setOpLevel(I)V

    return-void
.end method
