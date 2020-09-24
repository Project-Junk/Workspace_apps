.class public final Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CellSignalCallback"
.end annotation


# instance fields
.field public final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 280
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataSubscriptionName:Ljava/lang/CharSequence;

    .line 263
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-eqz p9, :cond_1

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    :goto_0
    iput-object p8, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    .line 264
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p5, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 265
    iput-boolean p6, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 266
    iput-boolean p12, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    .line 267
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getNumberSubscriptions()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->multipleSubs:Z

    .line 268
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$100(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method
