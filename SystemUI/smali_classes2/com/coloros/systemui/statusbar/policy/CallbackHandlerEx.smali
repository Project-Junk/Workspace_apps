.class public final Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;
.super Lcom/android/systemui/statusbar/policy/CallbackHandler;
.source "CallbackHandlerEx.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;",
        "Lcom/android/systemui/statusbar/policy/CallbackHandler;",
        "()V",
        "on5gConnected",
        "",
        "connected",
        "",
        "setWifiDouble",
        "doubleWifi",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMSignalCallbacks$p(Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public on5gConnected(Z)V
    .locals 1

    .line 29
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;-><init>(Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWifiDouble(Z)V
    .locals 1

    .line 21
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$setWifiDouble$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$setWifiDouble$1;-><init>(Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
