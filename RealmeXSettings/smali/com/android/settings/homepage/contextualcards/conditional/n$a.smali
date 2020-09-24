.class public final Lcom/android/settings/homepage/contextualcards/conditional/n$a;
.super Landroid/content/BroadcastReceiver;
.source "HotspotConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/homepage/contextualcards/conditional/n;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/n;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/n;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/n;->a(Lcom/android/settings/homepage/contextualcards/conditional/n;)Lcom/android/settings/homepage/contextualcards/conditional/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    :cond_0
    return-void
.end method
