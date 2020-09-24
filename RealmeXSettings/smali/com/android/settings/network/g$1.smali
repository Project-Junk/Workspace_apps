.class final Lcom/android/settings/network/g$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 52
    iput-object p1, p0, Lcom/android/settings/network/g$1;->a:Lcom/android/settings/network/g;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/network/g$1;->a:Lcom/android/settings/network/g;

    invoke-static {v0}, Lcom/android/settings/network/g;->a(Lcom/android/settings/network/g;)V

    return-void
.end method
