.class Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;
.super Ljava/lang/Object;
.source "SingleHandGesture.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;->this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;->this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-static {p2}, Lcom/coloros/exserviceui/IDragControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/exserviceui/IDragControl;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->access$202(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;->this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->access$202(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;

    return-void
.end method
