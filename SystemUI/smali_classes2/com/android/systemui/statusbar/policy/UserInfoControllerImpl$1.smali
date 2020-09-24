.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Statusbar"

    const-string p2, "UserInfoController"

    const-string v0, "receive user switch broadcast"

    .line 95
    invoke-static {p1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->reloadUserInfo()V

    :cond_0
    return-void
.end method
