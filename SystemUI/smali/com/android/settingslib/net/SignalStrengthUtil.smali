.class public Lcom/android/settingslib/net/SignalStrengthUtil;
.super Ljava/lang/Object;
.source "SignalStrengthUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldInflateSignalStrength(Landroid/content/Context;I)Z
    .locals 1

    .line 33
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "config_inflateSignalStrength"

    .line 34
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getBoolId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
