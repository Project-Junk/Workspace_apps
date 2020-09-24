.class public Lcom/color/compat/location/LocationManagerNative;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/color/compat/location/LocAppsOpNative;->getLocAppsOpWrapper()Lcom/color/inner/location/LocAppsOpWrapper;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/color/inner/location/LocationManagerWrapper;->getLocAppsOp(Landroid/location/LocationManager;ILcom/color/inner/location/LocAppsOpWrapper;)V

    return-void
.end method

.method public static setLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/color/compat/location/LocAppsOpNative;->getLocAppsOpWrapper()Lcom/color/inner/location/LocAppsOpWrapper;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/color/inner/location/LocationManagerWrapper;->setLocAppsOp(Landroid/location/LocationManager;ILcom/color/inner/location/LocAppsOpWrapper;)V

    return-void
.end method
