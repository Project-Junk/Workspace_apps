.class final Lcom/android/settings/RadioInfo$a;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RadioInfo;


# direct methods
.method private constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/RadioInfo;B)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo$a;-><init>(Lcom/android/settings/RadioInfo;)V

    return-void
.end method


# virtual methods
.method public final onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;Z)Z

    .line 309
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->e(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 286
    iget-object p2, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    .line 287
    iget-object p2, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;I)V

    return-void
.end method

.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 316
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->f(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public final onDataActivity(I)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onDataConnectionStateChanged(I)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;)V

    .line 276
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Z)Z

    .line 303
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->d(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public final onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 327
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceStateChanged: ServiceState="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V

    .line 329
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->g(Lcom/android/settings/RadioInfo;)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    .line 331
    iget-object p1, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->h(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSignalStrengthChanged: SignalStrength="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/RadioInfo$a;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V

    return-void
.end method
