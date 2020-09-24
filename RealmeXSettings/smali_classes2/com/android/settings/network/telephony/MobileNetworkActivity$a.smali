.class final Lcom/android/settings/network/telephony/MobileNetworkActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkActivity.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;
    }
.end annotation


# static fields
.field static final a:Landroid/content/IntentFilter;


# instance fields
.field b:Landroid/content/Context;

.field private c:Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->b:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->c:Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$a;->c:Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;

    invoke-interface {p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity$a$a;->onPhoneChange()V

    :cond_0
    return-void
.end method
