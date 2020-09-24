.class final Lcom/android/settings/network/g$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/g;-><init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/g;


# direct methods
.method constructor <init>(Lcom/android/settings/network/g;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/network/g$2;->a:Lcom/android/settings/network/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/network/g$2;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/settings/network/g$2;->a:Lcom/android/settings/network/g;

    invoke-static {p1}, Lcom/android/settings/network/g;->a(Lcom/android/settings/network/g;)V

    :cond_0
    return-void
.end method
