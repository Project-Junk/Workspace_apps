.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$2;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "KeyguardFakeAppLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;
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

    .line 99
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperVisibilityChanged(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->access$102(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)Z

    return-void
.end method
