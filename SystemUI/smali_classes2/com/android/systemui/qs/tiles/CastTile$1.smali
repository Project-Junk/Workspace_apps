.class Lcom/android/systemui/qs/tiles/CastTile$1;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    const-string p4, "persist.debug.wfd.enable"

    .line 259
    invoke-static {p4, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 260
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    if-eq p1, p2, :cond_2

    .line 261
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->refreshState()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 265
    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    if-eq p2, p1, :cond_2

    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->refreshState()V

    :cond_2
    :goto_0
    return-void
.end method
