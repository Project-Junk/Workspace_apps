.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;
.super Ljava/lang/Object;
.source "UserNotifier.java"


# static fields
.field public static final PREFERENCE_ONSCREEN_FINGERPRINT:Ljava/lang/String; = "prefs_onscreen_fingerprint"

.field private static final TAG:Ljava/lang/String; = "UserNotifier"

.field private static sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "prefs_onscreen_fingerprint"

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;
    .locals 1

    .line 26
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;

    .line 29
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/UserNotifier;

    return-object p0
.end method
