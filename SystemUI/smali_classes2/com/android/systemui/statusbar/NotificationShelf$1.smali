.class Lcom/android/systemui/statusbar/NotificationShelf$1;
.super Ljava/lang/Object;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    return-void
.end method
