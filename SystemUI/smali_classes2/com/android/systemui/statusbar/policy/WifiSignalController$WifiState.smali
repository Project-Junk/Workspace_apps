.class public Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiState"
.end annotation


# instance fields
.field public doubleWifi:Z

.field isReady:Z

.field isTransient:Z

.field ssid:Ljava/lang/String;

.field statusLabel:Ljava/lang/String;

.field wifiGenerationVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 1

    .line 312
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 313
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 314
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 315
    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    .line 316
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    .line 317
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    .line 318
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 321
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 341
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 344
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 345
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 353
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 299
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 327
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    const-string v0, ",ssid="

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",wifiGenerationVersion="

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isReady="

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isTransient="

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",doubleWifi="

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",statusLabel="

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
