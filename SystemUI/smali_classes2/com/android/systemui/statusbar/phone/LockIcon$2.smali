.class Lcom/android/systemui/statusbar/phone/LockIcon$2;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager$DockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    :cond_2
    return-void
.end method
