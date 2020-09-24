.class Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->setHotspotEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "HotspotController"

    const-string v2, "onTetheringFailed"

    .line 166
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method
