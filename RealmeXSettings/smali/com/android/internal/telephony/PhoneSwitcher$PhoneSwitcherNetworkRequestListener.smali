.class Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
.super Landroid/net/NetworkFactory;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneSwitcherNetworkRequestListener"
.end annotation


# instance fields
.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 1

    const-string v0, "PhoneSwitcherNetworkRequstListener"

    .line 451
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 452
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    return-void
.end method


# virtual methods
.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 1

    .line 458
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v0, 0x67

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 459
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 460
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
