.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiSignalCallback"
.end annotation


# instance fields
.field public final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 295
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiSignalChanged enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 297
    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 298
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget p2, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p2, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 299
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-object p6, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 300
    iput-boolean p4, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 301
    iput-boolean p5, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 302
    iget-object p2, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p7, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 304
    iput-object p8, p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    .line 305
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$300(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 308
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState()V

    return-void
.end method
