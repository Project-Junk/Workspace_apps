.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->val$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->sendLauncherBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
