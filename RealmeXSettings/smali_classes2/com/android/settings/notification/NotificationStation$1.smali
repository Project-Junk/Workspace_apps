.class final Lcom/android/settings/notification/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$1;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$1;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->a(Lcom/android/settings/notification/NotificationStation;)V

    return-void
.end method