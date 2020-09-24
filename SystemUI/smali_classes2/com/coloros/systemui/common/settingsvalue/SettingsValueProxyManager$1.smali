.class Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;
.super Ljava/lang/Object;
.source "SettingsValueProxyManager.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->access$000(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    .line 55
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->access$000(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    invoke-static {p0}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->access$000(Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->checkValidity(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
