.class final Lcom/android/settings/network/telephony/f$1;
.super Landroid/telephony/PhoneStateListener;
.source "SignalStrengthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/f;->a(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/f;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/f;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/network/telephony/f$1;->a:Lcom/android/settings/network/telephony/f;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/settings/network/telephony/f$1;->a:Lcom/android/settings/network/telephony/f;

    .line 1033
    iget-object p1, p1, Lcom/android/settings/network/telephony/f;->a:Lcom/android/settings/network/telephony/f$a;

    .line 76
    invoke-interface {p1}, Lcom/android/settings/network/telephony/f$a;->c()V

    return-void
.end method
