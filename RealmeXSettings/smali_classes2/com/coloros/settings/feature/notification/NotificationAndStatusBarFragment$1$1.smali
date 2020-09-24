.class final Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1$1;
.super Ljava/lang/Object;
.source "NotificationAndStatusBarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->highlightPreferenceForce()V

    return-void
.end method
