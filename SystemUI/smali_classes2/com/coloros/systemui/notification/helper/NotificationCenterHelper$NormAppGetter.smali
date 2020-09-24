.class interface abstract Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;
.super Ljava/lang/Object;
.source "NotificationCenterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NormAppGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Landroid/app/NotificationChannel;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
