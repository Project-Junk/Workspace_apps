.class final Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ColorSimStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V

    :cond_0
    return-void
.end method
