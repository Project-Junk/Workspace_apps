.class public final Lcom/android/settings/notification/j;
.super Landroid/database/ContentObserver;
.source "GlobalBubblePermissionObserverMixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/j$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/notification/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/j$a;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    iput-object p1, p0, Lcom/android/settings/notification/j;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/settings/notification/j;->b:Lcom/android/settings/notification/j$a;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/android/settings/notification/j;->b:Lcom/android/settings/notification/j$a;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/android/settings/notification/j$a;->c()V

    :cond_0
    return-void
.end method
