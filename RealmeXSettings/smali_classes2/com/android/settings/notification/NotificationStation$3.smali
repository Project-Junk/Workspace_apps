.class final Lcom/android/settings/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/NotificationStation$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$3;->a:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 147
    check-cast p1, Lcom/android/settings/notification/NotificationStation$a;

    check-cast p2, Lcom/android/settings/notification/NotificationStation$a;

    .line 1151
    iget-wide v0, p2, Lcom/android/settings/notification/NotificationStation$a;->j:J

    iget-wide p1, p1, Lcom/android/settings/notification/NotificationStation$a;->j:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
