.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 614
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_0
    return-void
.end method
