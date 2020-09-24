.class public Lcom/android/settingslib/media/InfoMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "InfoMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoMediaManager"


# instance fields
.field mMediaRouter:Landroidx/mediarouter/media/MediaRouter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field mSelector:Landroidx/mediarouter/media/MediaRouteSelector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/media/MediaManager;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 34
    new-instance p3, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;

    invoke-direct {p3, p0}, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;-><init>(Lcom/android/settingslib/media/InfoMediaManager;)V

    iput-object p3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;

    .line 46
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 47
    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 48
    new-instance p1, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/settingslib/media/InfoMediaManager;->getControlCategoryByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-void
.end method


# virtual methods
.method getControlCategoryByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "com.google.android.gms.cast.CATEGORY_CAST/4F8B3483"

    return-object p0
.end method

.method public startScan()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    return-void
.end method
