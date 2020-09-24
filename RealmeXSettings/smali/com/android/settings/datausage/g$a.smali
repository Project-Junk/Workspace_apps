.class public final Lcom/android/settings/datausage/g$a;
.super Ljava/lang/Object;
.source "TemplatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/INetworkManagementService;

.field b:Landroid/net/INetworkStatsService;

.field c:Landroid/net/NetworkPolicyManager;

.field d:Landroid/telephony/TelephonyManager;

.field e:Landroid/telephony/SubscriptionManager;

.field f:Landroid/os/UserManager;

.field g:Lcom/android/settingslib/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
