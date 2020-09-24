.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;
.super Ljava/lang/Object;
.source "KeyguardFakeAppLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->initWithDependency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 139
    :try_start_0
    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    .line 140
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$300(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$102(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$500(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$400(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Lcom/coloros/systemui/stackdivider/ISplitScreenListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->addCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V

    .line 145
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$602(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method
